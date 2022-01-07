; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_sd_pkt_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_sd_pkt_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i8* }
%struct.sd = type { i64, i32, i32* }

@BRIDGE_TP6810 = common dso_local global i64 0, align 8
@D_FRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"bad frame\0A\00", align 1
@DISCARD_PACKET = common dso_local global i8* null, align 8
@FIRST_PACKET = common dso_local global i32 0, align 4
@JPEG_HDR_SZ = common dso_local global i32 0, align 4
@INTER_PACKET = common dso_local global i32 0, align 4
@LAST_PACKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @sd_pkt_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %7, align 8
  %10 = load %struct.sd*, %struct.sd** %7, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BRIDGE_TP6810, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %128

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 90
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 170
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %19
  br label %221

28:                                               ; preds = %23
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 192
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %34 = load i32, i32* @D_FRAM, align 4
  %35 = call i32 @gspca_dbg(%struct.gspca_dev* %33, i32 %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %36 = load i8*, i8** @DISCARD_PACKET, align 8
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %38 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  br label %221

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39, %15
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i8*, i8** @DISCARD_PACKET, align 8
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %50 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  br label %221

51:                                               ; preds = %40
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 255
  br i1 %54, label %55, label %98

55:                                               ; preds = %51
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 216
  br i1 %59, label %60, label %98

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 7
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i8*, i8** @DISCARD_PACKET, align 8
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %66 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  br label %221

67:                                               ; preds = %60
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 6
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 15
  %72 = load %struct.sd*, %struct.sd** %7, align 8
  %73 = getelementptr inbounds %struct.sd, %struct.sd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %67
  %77 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 6
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 15
  %82 = call i32 @set_dqt(%struct.gspca_dev* %77, i32 %81)
  br label %83

83:                                               ; preds = %76, %67
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %85 = load i32, i32* @FIRST_PACKET, align 4
  %86 = load %struct.sd*, %struct.sd** %7, align 8
  %87 = getelementptr inbounds %struct.sd, %struct.sd* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* @JPEG_HDR_SZ, align 4
  %90 = call i32 @gspca_frame_add(%struct.gspca_dev* %84, i32 %85, i32* %88, i32 %89)
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %92 = load i32, i32* @INTER_PACKET, align 4
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 7
  %95 = load i32, i32* %6, align 4
  %96 = sub nsw i32 %95, 7
  %97 = call i32 @gspca_frame_add(%struct.gspca_dev* %91, i32 %92, i32* %94, i32 %96)
  br label %127

98:                                               ; preds = %55, %51
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %6, align 4
  %101 = sub nsw i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 255
  br i1 %105, label %106, label %120

106:                                              ; preds = %98
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sub nsw i32 %108, 1
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 217
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %116 = load i32, i32* @LAST_PACKET, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @gspca_frame_add(%struct.gspca_dev* %115, i32 %116, i32* %117, i32 %118)
  br label %126

120:                                              ; preds = %106, %98
  %121 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %122 = load i32, i32* @INTER_PACKET, align 4
  %123 = load i32*, i32** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @gspca_frame_add(%struct.gspca_dev* %121, i32 %122, i32* %123, i32 %124)
  br label %126

126:                                              ; preds = %120, %114
  br label %127

127:                                              ; preds = %126, %83
  br label %221

128:                                              ; preds = %3
  %129 = load i32*, i32** %5, align 8
  %130 = load i32, i32* %129, align 4
  switch i32 %130, label %221 [
    i32 85, label %131
    i32 170, label %191
    i32 204, label %195
  ]

131:                                              ; preds = %128
  %132 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %133 = load i32, i32* @LAST_PACKET, align 4
  %134 = load i32*, i32** %5, align 8
  %135 = call i32 @gspca_frame_add(%struct.gspca_dev* %132, i32 %133, i32* %134, i32 0)
  %136 = load i32, i32* %6, align 4
  %137 = icmp slt i32 %136, 8
  br i1 %137, label %158, label %138

138:                                              ; preds = %131
  %139 = load i32*, i32** %5, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 255
  br i1 %142, label %158, label %143

143:                                              ; preds = %138
  %144 = load i32*, i32** %5, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 216
  br i1 %147, label %158, label %148

148:                                              ; preds = %143
  %149 = load i32*, i32** %5, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 3
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 255
  br i1 %152, label %158, label %153

153:                                              ; preds = %148
  %154 = load i32*, i32** %5, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 4
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 254
  br i1 %157, label %158, label %162

158:                                              ; preds = %153, %148, %143, %138, %131
  %159 = load i8*, i8** @DISCARD_PACKET, align 8
  %160 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %161 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %160, i32 0, i32 0
  store i8* %159, i8** %161, align 8
  br label %221

162:                                              ; preds = %153
  %163 = load i32*, i32** %5, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 7
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.sd*, %struct.sd** %7, align 8
  %167 = getelementptr inbounds %struct.sd, %struct.sd* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %165, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %162
  %171 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %172 = load i32*, i32** %5, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 7
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @set_dqt(%struct.gspca_dev* %171, i32 %174)
  br label %176

176:                                              ; preds = %170, %162
  %177 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %178 = load i32, i32* @FIRST_PACKET, align 4
  %179 = load %struct.sd*, %struct.sd** %7, align 8
  %180 = getelementptr inbounds %struct.sd, %struct.sd* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* @JPEG_HDR_SZ, align 4
  %183 = call i32 @gspca_frame_add(%struct.gspca_dev* %177, i32 %178, i32* %181, i32 %182)
  %184 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %185 = load i32, i32* @INTER_PACKET, align 4
  %186 = load i32*, i32** %5, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 8
  %188 = load i32, i32* %6, align 4
  %189 = sub nsw i32 %188, 8
  %190 = call i32 @gspca_frame_add(%struct.gspca_dev* %184, i32 %185, i32* %187, i32 %189)
  br label %221

191:                                              ; preds = %128
  %192 = load i8*, i8** @DISCARD_PACKET, align 8
  %193 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %194 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %193, i32 0, i32 0
  store i8* %192, i8** %194, align 8
  br label %221

195:                                              ; preds = %128
  %196 = load i32, i32* %6, align 4
  %197 = icmp sge i32 %196, 3
  br i1 %197, label %198, label %216

198:                                              ; preds = %195
  %199 = load i32*, i32** %5, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  %201 = load i32, i32* %200, align 4
  %202 = icmp ne i32 %201, 255
  br i1 %202, label %208, label %203

203:                                              ; preds = %198
  %204 = load i32*, i32** %5, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 2
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 216
  br i1 %207, label %208, label %216

208:                                              ; preds = %203, %198
  %209 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %210 = load i32, i32* @INTER_PACKET, align 4
  %211 = load i32*, i32** %5, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 1
  %213 = load i32, i32* %6, align 4
  %214 = sub nsw i32 %213, 1
  %215 = call i32 @gspca_frame_add(%struct.gspca_dev* %209, i32 %210, i32* %212, i32 %214)
  br label %220

216:                                              ; preds = %203, %195
  %217 = load i8*, i8** @DISCARD_PACKET, align 8
  %218 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %219 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %218, i32 0, i32 0
  store i8* %217, i8** %219, align 8
  br label %220

220:                                              ; preds = %216, %208
  br label %221

221:                                              ; preds = %27, %32, %47, %63, %127, %158, %128, %220, %191, %176
  ret void
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @set_dqt(%struct.gspca_dev*, i32) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
