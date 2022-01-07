; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_se401.c_sd_pkt_scan_janggu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_se401.c_sd_pkt_scan_janggu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sd = type { i32, i32, i32*, i32 }

@LAST_PACKET = common dso_local global i64 0, align 8
@DISCARD_PACKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"invalid packet len %d restarting stream\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"unknown frame info value restarting stream\0A\00", align 1
@INTER_PACKET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"frame size %d expected %d\0A\00", align 1
@FIRST_PACKET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32*, i32)* @sd_pkt_scan_janggu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_pkt_scan_janggu(%struct.gspca_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %16 = bitcast %struct.gspca_dev* %15 to %struct.sd*
  store %struct.sd* %16, %struct.sd** %7, align 8
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %18 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %22 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %20, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.sd*, %struct.sd** %7, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %246

31:                                               ; preds = %3
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %33 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LAST_PACKET, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 1024
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i64, i64* @DISCARD_PACKET, align 8
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %43 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %246

44:                                               ; preds = %37, %31
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %235, %44
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %236

49:                                               ; preds = %45
  %50 = load %struct.sd*, %struct.sd** %7, align 8
  %51 = getelementptr inbounds %struct.sd, %struct.sd* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %97

54:                                               ; preds = %49
  %55 = load %struct.sd*, %struct.sd** %7, align 8
  %56 = getelementptr inbounds %struct.sd, %struct.sd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 4, %57
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %60, %61
  %63 = icmp sgt i32 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %9, align 4
  %67 = sub nsw i32 %65, %66
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %64, %54
  %69 = load %struct.sd*, %struct.sd** %7, align 8
  %70 = getelementptr inbounds %struct.sd, %struct.sd* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.sd*, %struct.sd** %7, align 8
  %73 = getelementptr inbounds %struct.sd, %struct.sd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %71, i64 %75
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @memcpy(i32* %76, i32* %80, i32 %81)
  %83 = load i32, i32* %14, align 4
  %84 = load %struct.sd*, %struct.sd** %7, align 8
  %85 = getelementptr inbounds %struct.sd, %struct.sd* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %9, align 4
  %91 = load %struct.sd*, %struct.sd** %7, align 8
  %92 = getelementptr inbounds %struct.sd, %struct.sd* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %96

95:                                               ; preds = %68
  br label %236

96:                                               ; preds = %68
  br label %97

97:                                               ; preds = %96, %49
  %98 = load %struct.sd*, %struct.sd** %7, align 8
  %99 = getelementptr inbounds %struct.sd, %struct.sd* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.sd*, %struct.sd** %7, align 8
  %104 = getelementptr inbounds %struct.sd, %struct.sd* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 %107, 8
  %109 = add nsw i32 %102, %108
  store i32 %109, i32* %11, align 4
  %110 = load %struct.sd*, %struct.sd** %7, align 8
  %111 = getelementptr inbounds %struct.sd, %struct.sd* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.sd*, %struct.sd** %7, align 8
  %116 = getelementptr inbounds %struct.sd, %struct.sd* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 63
  %121 = shl i32 %120, 8
  %122 = add nsw i32 %114, %121
  store i32 %122, i32* %12, align 4
  %123 = load %struct.sd*, %struct.sd** %7, align 8
  %124 = getelementptr inbounds %struct.sd, %struct.sd* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 192
  %129 = ashr i32 %128, 6
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 %130, 47
  %132 = ashr i32 %131, 4
  %133 = shl i32 %132, 1
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp sgt i32 %134, 1024
  br i1 %135, label %136, label %139

136:                                              ; preds = %97
  %137 = load i32, i32* %10, align 4
  %138 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %137)
  br label %237

139:                                              ; preds = %97
  %140 = load i32, i32* %13, align 4
  %141 = icmp eq i32 %140, 3
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %237

144:                                              ; preds = %139
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.sd*, %struct.sd** %7, align 8
  %147 = getelementptr inbounds %struct.sd, %struct.sd* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %145, %148
  store i32 %149, i32* %14, align 4
  %150 = load i32, i32* %14, align 4
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %9, align 4
  %153 = sub nsw i32 %151, %152
  %154 = icmp sgt i32 %150, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %144
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %9, align 4
  %158 = sub nsw i32 %156, %157
  store i32 %158, i32* %14, align 4
  br label %159

159:                                              ; preds = %155, %144
  %160 = load %struct.sd*, %struct.sd** %7, align 8
  %161 = getelementptr inbounds %struct.sd, %struct.sd* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.sd*, %struct.sd** %7, align 8
  %164 = getelementptr inbounds %struct.sd, %struct.sd* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %162, i64 %166
  %168 = load i32*, i32** %5, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %14, align 4
  %173 = call i32 @memcpy(i32* %167, i32* %171, i32 %172)
  %174 = load i32, i32* %14, align 4
  %175 = load %struct.sd*, %struct.sd** %7, align 8
  %176 = getelementptr inbounds %struct.sd, %struct.sd* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, %174
  store i32 %178, i32* %176, align 4
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %180, %179
  store i32 %181, i32* %9, align 4
  %182 = load %struct.sd*, %struct.sd** %7, align 8
  %183 = getelementptr inbounds %struct.sd, %struct.sd* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %10, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %159
  br label %236

188:                                              ; preds = %159
  %189 = load i32, i32* %12, align 4
  %190 = load %struct.sd*, %struct.sd** %7, align 8
  %191 = getelementptr inbounds %struct.sd, %struct.sd* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = add nsw i32 %192, %189
  store i32 %193, i32* %191, align 8
  %194 = load %struct.sd*, %struct.sd** %7, align 8
  %195 = getelementptr inbounds %struct.sd, %struct.sd* %194, i32 0, i32 1
  store i32 0, i32* %195, align 4
  %196 = load i32, i32* %13, align 4
  switch i32 %196, label %235 [
    i32 0, label %197
    i32 1, label %205
    i32 2, label %224
  ]

197:                                              ; preds = %188
  %198 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %199 = load i64, i64* @INTER_PACKET, align 8
  %200 = load %struct.sd*, %struct.sd** %7, align 8
  %201 = getelementptr inbounds %struct.sd, %struct.sd* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %10, align 4
  %204 = call i32 @gspca_frame_add(%struct.gspca_dev* %198, i64 %199, i32* %202, i32 %203)
  br label %235

205:                                              ; preds = %188
  %206 = load %struct.sd*, %struct.sd** %7, align 8
  %207 = getelementptr inbounds %struct.sd, %struct.sd* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %8, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %205
  %212 = load %struct.sd*, %struct.sd** %7, align 8
  %213 = getelementptr inbounds %struct.sd, %struct.sd* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %8, align 4
  %216 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %214, i32 %215)
  br label %237

217:                                              ; preds = %205
  %218 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %219 = load %struct.sd*, %struct.sd** %7, align 8
  %220 = getelementptr inbounds %struct.sd, %struct.sd* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %10, align 4
  %223 = call i32 @sd_complete_frame(%struct.gspca_dev* %218, i32* %221, i32 %222)
  br label %246

224:                                              ; preds = %188
  %225 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %226 = load i64, i64* @FIRST_PACKET, align 8
  %227 = load %struct.sd*, %struct.sd** %7, align 8
  %228 = getelementptr inbounds %struct.sd, %struct.sd* %227, i32 0, i32 2
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %10, align 4
  %231 = call i32 @gspca_frame_add(%struct.gspca_dev* %225, i64 %226, i32* %229, i32 %230)
  %232 = load i32, i32* %12, align 4
  %233 = load %struct.sd*, %struct.sd** %7, align 8
  %234 = getelementptr inbounds %struct.sd, %struct.sd* %233, i32 0, i32 3
  store i32 %232, i32* %234, align 8
  br label %235

235:                                              ; preds = %188, %224, %197
  br label %45

236:                                              ; preds = %187, %95, %45
  br label %246

237:                                              ; preds = %211, %142, %136
  %238 = load %struct.sd*, %struct.sd** %7, align 8
  %239 = getelementptr inbounds %struct.sd, %struct.sd* %238, i32 0, i32 0
  store i32 1, i32* %239, align 8
  %240 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %241 = load i64, i64* @FIRST_PACKET, align 8
  %242 = call i32 @gspca_frame_add(%struct.gspca_dev* %240, i64 %241, i32* null, i32 0)
  %243 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %244 = load i64, i64* @LAST_PACKET, align 8
  %245 = call i32 @gspca_frame_add(%struct.gspca_dev* %243, i64 %244, i32* null, i32 0)
  br label %246

246:                                              ; preds = %237, %236, %217, %40, %30
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @gspca_frame_add(%struct.gspca_dev*, i64, i32*, i32) #1

declare dso_local i32 @sd_complete_frame(%struct.gspca_dev*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
