; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_kinect.c_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_kinect.c_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.sd = type { i32, i8*, i8* }
%struct.cam_hdr = type { i32*, i32, i32, i8* }

@.str = private unnamed_addr constant [41 x i8] c"send_cmd: Invalid command length (0x%x)\0A\00", align 1
@D_USBO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Control cmd=%04x tag=%04x len=%04x: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"send_cmd: Output control transfer failed (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Control reply: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"send_cmd: Input control transfer failed (%d)\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"send_cmd: Bad magic %02x %02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"send_cmd: Bad cmd %02x != %02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"send_cmd: Bad tag %04x != %04x\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"send_cmd: Bad len %04x != %04x\0A\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"send_cmd: Data buffer is %d bytes long, but got %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32, i8*, i32, i8*, i32)* @send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_cmd(%struct.gspca_dev* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.gspca_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sd*, align 8
  %15 = alloca %struct.usb_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.cam_hdr*, align 8
  %21 = alloca %struct.cam_hdr*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %23 = bitcast %struct.gspca_dev* %22 to %struct.sd*
  store %struct.sd* %23, %struct.sd** %14, align 8
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %25 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %24, i32 0, i32 0
  %26 = load %struct.usb_device*, %struct.usb_device** %25, align 8
  store %struct.usb_device* %26, %struct.usb_device** %15, align 8
  %27 = load %struct.sd*, %struct.sd** %14, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %18, align 8
  %30 = load %struct.sd*, %struct.sd** %14, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %19, align 8
  %33 = load i8*, i8** %18, align 8
  %34 = bitcast i8* %33 to %struct.cam_hdr*
  store %struct.cam_hdr* %34, %struct.cam_hdr** %20, align 8
  %35 = load i8*, i8** %19, align 8
  %36 = bitcast i8* %35 to %struct.cam_hdr*
  store %struct.cam_hdr* %36, %struct.cam_hdr** %21, align 8
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %6
  %41 = load i32, i32* %11, align 4
  %42 = zext i32 %41 to i64
  %43 = icmp ugt i64 %42, 1000
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %6
  %45 = load i32, i32* %11, align 4
  %46 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %45)
  store i32 -1, i32* %7, align 4
  br label %230

47:                                               ; preds = %40
  %48 = load %struct.cam_hdr*, %struct.cam_hdr** %20, align 8
  %49 = getelementptr inbounds %struct.cam_hdr, %struct.cam_hdr* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 71, i32* %51, align 4
  %52 = load %struct.cam_hdr*, %struct.cam_hdr** %20, align 8
  %53 = getelementptr inbounds %struct.cam_hdr, %struct.cam_hdr* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 77, i32* %55, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i8* @cpu_to_le16(i32 %56)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.cam_hdr*, %struct.cam_hdr** %20, align 8
  %60 = getelementptr inbounds %struct.cam_hdr, %struct.cam_hdr* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.sd*, %struct.sd** %14, align 8
  %62 = getelementptr inbounds %struct.sd, %struct.sd* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i8* @cpu_to_le16(i32 %63)
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.cam_hdr*, %struct.cam_hdr** %20, align 8
  %67 = getelementptr inbounds %struct.cam_hdr, %struct.cam_hdr* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %11, align 4
  %69 = udiv i32 %68, 2
  %70 = call i8* @cpu_to_le16(i32 %69)
  %71 = load %struct.cam_hdr*, %struct.cam_hdr** %20, align 8
  %72 = getelementptr inbounds %struct.cam_hdr, %struct.cam_hdr* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** %18, align 8
  %74 = getelementptr i8, i8* %73, i64 24
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @memcpy(i8* %74, i8* %75, i32 %76)
  %78 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %79 = load i8*, i8** %18, align 8
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = add i64 %81, 24
  %83 = trunc i64 %82 to i32
  %84 = call i32 @kinect_write(%struct.usb_device* %78, i8* %79, i32 %83)
  store i32 %84, i32* %16, align 4
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %86 = load i32, i32* @D_USBO, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.sd*, %struct.sd** %14, align 8
  %89 = getelementptr inbounds %struct.sd, %struct.sd* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %16, align 4
  %93 = call i32 (%struct.gspca_dev*, i32, i8*, i32, ...) @gspca_dbg(%struct.gspca_dev* %85, i32 %86, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %87, i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* %16, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %47
  %97 = load i32, i32* %16, align 4
  %98 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %16, align 4
  store i32 %99, i32* %7, align 4
  br label %230

100:                                              ; preds = %47
  br label %101

101:                                              ; preds = %105, %100
  %102 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %103 = load i8*, i8** %19, align 8
  %104 = call i32 @kinect_read(%struct.usb_device* %102, i8* %103, i32 512)
  store i32 %104, i32* %17, align 4
  br label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %17, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %101, label %108

108:                                              ; preds = %105
  %109 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %110 = load i32, i32* @D_USBO, align 4
  %111 = load i32, i32* %17, align 4
  %112 = call i32 (%struct.gspca_dev*, i32, i8*, i32, ...) @gspca_dbg(%struct.gspca_dev* %109, i32 %110, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %17, align 4
  %114 = icmp slt i32 %113, 24
  br i1 %114, label %115, label %127

115:                                              ; preds = %108
  %116 = load i32, i32* %17, align 4
  %117 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %17, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* %17, align 4
  br label %125

122:                                              ; preds = %115
  %123 = load i32, i32* @EREMOTEIO, align 4
  %124 = sub nsw i32 0, %123
  br label %125

125:                                              ; preds = %122, %120
  %126 = phi i32 [ %121, %120 ], [ %124, %122 ]
  store i32 %126, i32* %7, align 4
  br label %230

127:                                              ; preds = %108
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = sub i64 %129, 24
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %17, align 4
  %132 = load %struct.cam_hdr*, %struct.cam_hdr** %21, align 8
  %133 = getelementptr inbounds %struct.cam_hdr, %struct.cam_hdr* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 82
  br i1 %137, label %145, label %138

138:                                              ; preds = %127
  %139 = load %struct.cam_hdr*, %struct.cam_hdr** %21, align 8
  %140 = getelementptr inbounds %struct.cam_hdr, %struct.cam_hdr* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 66
  br i1 %144, label %145, label %157

145:                                              ; preds = %138, %127
  %146 = load %struct.cam_hdr*, %struct.cam_hdr** %21, align 8
  %147 = getelementptr inbounds %struct.cam_hdr, %struct.cam_hdr* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.cam_hdr*, %struct.cam_hdr** %21, align 8
  %152 = getelementptr inbounds %struct.cam_hdr, %struct.cam_hdr* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %150, i32 %155)
  store i32 -1, i32* %7, align 4
  br label %230

157:                                              ; preds = %138
  %158 = load %struct.cam_hdr*, %struct.cam_hdr** %21, align 8
  %159 = getelementptr inbounds %struct.cam_hdr, %struct.cam_hdr* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.cam_hdr*, %struct.cam_hdr** %20, align 8
  %162 = getelementptr inbounds %struct.cam_hdr, %struct.cam_hdr* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %160, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %157
  %166 = load %struct.cam_hdr*, %struct.cam_hdr** %21, align 8
  %167 = getelementptr inbounds %struct.cam_hdr, %struct.cam_hdr* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.cam_hdr*, %struct.cam_hdr** %20, align 8
  %170 = getelementptr inbounds %struct.cam_hdr, %struct.cam_hdr* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %168, i32 %171)
  store i32 -1, i32* %7, align 4
  br label %230

173:                                              ; preds = %157
  %174 = load %struct.cam_hdr*, %struct.cam_hdr** %21, align 8
  %175 = getelementptr inbounds %struct.cam_hdr, %struct.cam_hdr* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.cam_hdr*, %struct.cam_hdr** %20, align 8
  %178 = getelementptr inbounds %struct.cam_hdr, %struct.cam_hdr* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %176, %179
  br i1 %180, label %181, label %189

181:                                              ; preds = %173
  %182 = load %struct.cam_hdr*, %struct.cam_hdr** %21, align 8
  %183 = getelementptr inbounds %struct.cam_hdr, %struct.cam_hdr* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.cam_hdr*, %struct.cam_hdr** %20, align 8
  %186 = getelementptr inbounds %struct.cam_hdr, %struct.cam_hdr* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %184, i32 %187)
  store i32 -1, i32* %7, align 4
  br label %230

189:                                              ; preds = %173
  %190 = load %struct.cam_hdr*, %struct.cam_hdr** %21, align 8
  %191 = getelementptr inbounds %struct.cam_hdr, %struct.cam_hdr* %190, i32 0, i32 3
  %192 = load i8*, i8** %191, align 8
  %193 = call i32 @le16_to_cpu(i8* %192)
  %194 = load i32, i32* %17, align 4
  %195 = sdiv i32 %194, 2
  %196 = icmp ne i32 %193, %195
  br i1 %196, label %197, label %205

197:                                              ; preds = %189
  %198 = load %struct.cam_hdr*, %struct.cam_hdr** %21, align 8
  %199 = getelementptr inbounds %struct.cam_hdr, %struct.cam_hdr* %198, i32 0, i32 3
  %200 = load i8*, i8** %199, align 8
  %201 = call i32 @le16_to_cpu(i8* %200)
  %202 = load i32, i32* %17, align 4
  %203 = sdiv i32 %202, 2
  %204 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %201, i32 %203)
  store i32 -1, i32* %7, align 4
  br label %230

205:                                              ; preds = %189
  %206 = load i32, i32* %17, align 4
  %207 = load i32, i32* %13, align 4
  %208 = icmp ugt i32 %206, %207
  br i1 %208, label %209, label %218

209:                                              ; preds = %205
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* %17, align 4
  %212 = call i32 @pr_warn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i64 0, i64 0), i32 %210, i32 %211)
  %213 = load i8*, i8** %12, align 8
  %214 = load i8*, i8** %19, align 8
  %215 = getelementptr i8, i8* %214, i64 24
  %216 = load i32, i32* %13, align 4
  %217 = call i32 @memcpy(i8* %213, i8* %215, i32 %216)
  br label %224

218:                                              ; preds = %205
  %219 = load i8*, i8** %12, align 8
  %220 = load i8*, i8** %19, align 8
  %221 = getelementptr i8, i8* %220, i64 24
  %222 = load i32, i32* %17, align 4
  %223 = call i32 @memcpy(i8* %219, i8* %221, i32 %222)
  br label %224

224:                                              ; preds = %218, %209
  %225 = load %struct.sd*, %struct.sd** %14, align 8
  %226 = getelementptr inbounds %struct.sd, %struct.sd* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = add i32 %227, 1
  store i32 %228, i32* %226, align 8
  %229 = load i32, i32* %17, align 4
  store i32 %229, i32* %7, align 4
  br label %230

230:                                              ; preds = %224, %197, %181, %165, %145, %125, %96, %44
  %231 = load i32, i32* %7, align 4
  ret i32 %231
}

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kinect_write(%struct.usb_device*, i8*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, ...) #1

declare dso_local i32 @kinect_read(%struct.usb_device*, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
