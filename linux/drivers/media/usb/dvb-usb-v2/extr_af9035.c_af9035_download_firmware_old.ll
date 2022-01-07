; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_download_firmware_old.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_af9035.c_af9035_download_firmware_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.usb_interface* }
%struct.usb_interface = type { i32 }
%struct.firmware = type { i32, i32* }
%struct.usb_req = type { i32*, i32, i32*, i32, i32*, i32, i32, i32, i32 }

@CMD_FW_DL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"core=%d addr=%04x data_len=%d checksum=%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"bad firmware\0A\00", align 1
@CMD_FW_DL_BEGIN = common dso_local global i32 0, align 4
@CMD_FW_DL_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"data uploaded=%zu\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@HDR_SIZE = common dso_local global i32 0, align 4
@MAX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, %struct.firmware*)* @af9035_download_firmware_old to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9035_download_firmware_old(%struct.dvb_usb_device* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1 x i32], align 4
  %12 = alloca %struct.usb_req, align 8
  %13 = alloca %struct.usb_req, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %18, i32 0, i32 0
  %20 = load %struct.usb_interface*, %struct.usb_interface** %19, align 8
  store %struct.usb_interface* %20, %struct.usb_interface** %6, align 8
  %21 = bitcast %struct.usb_req* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 56, i1 false)
  %22 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %13, i32 0, i32 0
  %23 = load i32, i32* @CMD_FW_DL, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %22, align 8
  %26 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %13, i32 0, i32 1
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %13, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %13, i32 0, i32 3
  %29 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %30 = ptrtoint i32* %29 to i32
  store i32 %30, i32* %28, align 8
  %31 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %13, i32 0, i32 4
  store i32* null, i32** %31, align 8
  %32 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %13, i32 0, i32 5
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %13, i32 0, i32 6
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %13, i32 0, i32 7
  store i32 0, i32* %34, align 8
  %35 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %13, i32 0, i32 8
  store i32 0, i32* %35, align 4
  %36 = load %struct.firmware*, %struct.firmware** %5, align 8
  %37 = getelementptr inbounds %struct.firmware, %struct.firmware* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %214, %2
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %40, 7
  br i1 %41, label %42, label %227

42:                                               ; preds = %39
  %43 = load %struct.firmware*, %struct.firmware** %5, align 8
  %44 = getelementptr inbounds %struct.firmware, %struct.firmware* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.firmware*, %struct.firmware** %5, align 8
  %47 = getelementptr inbounds %struct.firmware, %struct.firmware* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %48, %49
  %51 = add nsw i32 %50, 0
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %45, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %14, align 4
  %55 = load %struct.firmware*, %struct.firmware** %5, align 8
  %56 = getelementptr inbounds %struct.firmware, %struct.firmware* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.firmware*, %struct.firmware** %5, align 8
  %59 = getelementptr inbounds %struct.firmware, %struct.firmware* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %60, %61
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %57, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 8
  store i32 %67, i32* %15, align 4
  %68 = load %struct.firmware*, %struct.firmware** %5, align 8
  %69 = getelementptr inbounds %struct.firmware, %struct.firmware* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.firmware*, %struct.firmware** %5, align 8
  %72 = getelementptr inbounds %struct.firmware, %struct.firmware* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 %73, %74
  %76 = add nsw i32 %75, 2
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %70, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 %79, 0
  %81 = load i32, i32* %15, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %15, align 4
  %83 = load %struct.firmware*, %struct.firmware** %5, align 8
  %84 = getelementptr inbounds %struct.firmware, %struct.firmware* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.firmware*, %struct.firmware** %5, align 8
  %87 = getelementptr inbounds %struct.firmware, %struct.firmware* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %88, %89
  %91 = add nsw i32 %90, 3
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %85, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 8
  store i32 %95, i32* %16, align 4
  %96 = load %struct.firmware*, %struct.firmware** %5, align 8
  %97 = getelementptr inbounds %struct.firmware, %struct.firmware* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.firmware*, %struct.firmware** %5, align 8
  %100 = getelementptr inbounds %struct.firmware, %struct.firmware* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sub nsw i32 %101, %102
  %104 = add nsw i32 %103, 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %98, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %107, 0
  %109 = load i32, i32* %16, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %16, align 4
  %111 = load %struct.firmware*, %struct.firmware** %5, align 8
  %112 = getelementptr inbounds %struct.firmware, %struct.firmware* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.firmware*, %struct.firmware** %5, align 8
  %115 = getelementptr inbounds %struct.firmware, %struct.firmware* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sub nsw i32 %116, %117
  %119 = add nsw i32 %118, 5
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %113, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 8
  store i32 %123, i32* %17, align 4
  %124 = load %struct.firmware*, %struct.firmware** %5, align 8
  %125 = getelementptr inbounds %struct.firmware, %struct.firmware* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.firmware*, %struct.firmware** %5, align 8
  %128 = getelementptr inbounds %struct.firmware, %struct.firmware* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sub nsw i32 %129, %130
  %132 = add nsw i32 %131, 6
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %126, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 0
  %137 = load i32, i32* %17, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %17, align 4
  %139 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %140 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %139, i32 0, i32 0
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %17, align 4
  %145 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %140, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* %14, align 4
  %147 = icmp ne i32 %146, 1
  br i1 %147, label %148, label %151

148:                                              ; preds = %42
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 2
  br i1 %150, label %155, label %151

151:                                              ; preds = %148, %42
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp sgt i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %151, %148
  %156 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %157 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %156, i32 0, i32 0
  %158 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %227

159:                                              ; preds = %151
  %160 = load i32, i32* @CMD_FW_DL_BEGIN, align 4
  %161 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %12, i32 0, i32 3
  store i32 %160, i32* %161, align 8
  %162 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %163 = call i32 @af9035_ctrl_msg(%struct.dvb_usb_device* %162, %struct.usb_req* %12)
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  br label %235

167:                                              ; preds = %159
  %168 = load i32, i32* %16, align 4
  %169 = add nsw i32 7, %168
  store i32 %169, i32* %9, align 4
  br label %170

170:                                              ; preds = %203, %167
  %171 = load i32, i32* %9, align 4
  %172 = icmp sgt i32 %171, 0
  br i1 %172, label %173, label %206

173:                                              ; preds = %170
  %174 = load i32, i32* %9, align 4
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp sgt i32 %175, 58
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  store i32 58, i32* %10, align 4
  br label %178

178:                                              ; preds = %177, %173
  %179 = load i32, i32* %10, align 4
  %180 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %13, i32 0, i32 1
  store i32 %179, i32* %180, align 8
  %181 = load %struct.firmware*, %struct.firmware** %5, align 8
  %182 = getelementptr inbounds %struct.firmware, %struct.firmware* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.firmware*, %struct.firmware** %5, align 8
  %185 = getelementptr inbounds %struct.firmware, %struct.firmware* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sub nsw i32 %186, %187
  %189 = add nsw i32 %188, 7
  %190 = load i32, i32* %16, align 4
  %191 = add nsw i32 %189, %190
  %192 = load i32, i32* %9, align 4
  %193 = sub nsw i32 %191, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %183, i64 %194
  %196 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %13, i32 0, i32 2
  store i32* %195, i32** %196, align 8
  %197 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %198 = call i32 @af9035_ctrl_msg(%struct.dvb_usb_device* %197, %struct.usb_req* %13)
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %178
  br label %235

202:                                              ; preds = %178
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %9, align 4
  %205 = sub nsw i32 %204, 58
  store i32 %205, i32* %9, align 4
  br label %170

206:                                              ; preds = %170
  %207 = load i32, i32* @CMD_FW_DL_END, align 4
  %208 = getelementptr inbounds %struct.usb_req, %struct.usb_req* %12, i32 0, i32 3
  store i32 %207, i32* %208, align 8
  %209 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %210 = call i32 @af9035_ctrl_msg(%struct.dvb_usb_device* %209, %struct.usb_req* %12)
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* %7, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %206
  br label %235

214:                                              ; preds = %206
  %215 = load i32, i32* %16, align 4
  %216 = add nsw i32 %215, 7
  %217 = load i32, i32* %8, align 4
  %218 = sub nsw i32 %217, %216
  store i32 %218, i32* %8, align 4
  %219 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %220 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %219, i32 0, i32 0
  %221 = load %struct.firmware*, %struct.firmware** %5, align 8
  %222 = getelementptr inbounds %struct.firmware, %struct.firmware* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* %8, align 4
  %225 = sub nsw i32 %223, %224
  %226 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %220, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %225)
  br label %39

227:                                              ; preds = %155, %39
  %228 = load i32, i32* %8, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %227
  %231 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %232 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %231, i32 0, i32 0
  %233 = call i32 @dev_warn(i32* %232, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %234

234:                                              ; preds = %230, %227
  store i32 0, i32* %3, align 4
  br label %241

235:                                              ; preds = %213, %201, %166
  %236 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %237 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %236, i32 0, i32 0
  %238 = load i32, i32* %7, align 4
  %239 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %237, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %238)
  %240 = load i32, i32* %7, align 4
  store i32 %240, i32* %3, align 4
  br label %241

241:                                              ; preds = %235, %234
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #2

declare dso_local i32 @af9035_ctrl_msg(%struct.dvb_usb_device*, %struct.usb_req*) #2

declare dso_local i32 @dev_warn(i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
