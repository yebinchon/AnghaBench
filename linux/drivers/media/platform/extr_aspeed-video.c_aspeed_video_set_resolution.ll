; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_set_resolution.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_aspeed-video.c_aspeed_video_set_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_video = type { %struct.TYPE_3__*, i32, i64, i64, i64, i64, %struct.v4l2_bt_timings }
%struct.TYPE_3__ = type { i32, i32 }
%struct.v4l2_bt_timings = type { i32, i32 }

@VE_CAP_WINDOW = common dso_local global i32 0, align 4
@VE_COMP_WINDOW = common dso_local global i32 0, align 4
@VE_SRC_SCANLINE_OFFSET = common dso_local global i32 0, align 4
@DIRECT_FETCH_THRESHOLD = common dso_local global i32 0, align 4
@VE_TGS_0 = common dso_local global i32 0, align 4
@VE_TGS_FIRST = common dso_local global i32 0, align 4
@VE_TGS_LAST = common dso_local global i32 0, align 4
@VE_TGS_1 = common dso_local global i32 0, align 4
@VE_CTRL = common dso_local global i32 0, align 4
@VE_CTRL_INT_DE = common dso_local global i32 0, align 4
@VE_CTRL_DIRECT_FETCH = common dso_local global i32 0, align 4
@VE_SRC0_ADDR = common dso_local global i32 0, align 4
@VE_SRC1_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to allocate source buffers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_video*)* @aspeed_video_set_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_video_set_resolution(%struct.aspeed_video* %0) #0 {
  %2 = alloca %struct.aspeed_video*, align 8
  %3 = alloca %struct.v4l2_bt_timings*, align 8
  %4 = alloca i32, align 4
  store %struct.aspeed_video* %0, %struct.aspeed_video** %2, align 8
  %5 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %6 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %5, i32 0, i32 6
  store %struct.v4l2_bt_timings* %6, %struct.v4l2_bt_timings** %3, align 8
  %7 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %3, align 8
  %8 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %3, align 8
  %11 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = mul i32 %9, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @aspeed_video_calc_compressed_size(%struct.aspeed_video* %14, i32 %15)
  %17 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %18 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1680
  br i1 %21, label %22, label %37

22:                                               ; preds = %1
  %23 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %24 = load i32, i32* @VE_CAP_WINDOW, align 4
  %25 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %3, align 8
  %26 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 113246208, %27
  %29 = call i32 @aspeed_video_write(%struct.aspeed_video* %23, i32 %24, i32 %28)
  %30 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %31 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul i32 48, %33
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %49

37:                                               ; preds = %1
  %38 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %39 = load i32, i32* @VE_CAP_WINDOW, align 4
  %40 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %3, align 8
  %41 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 16
  %44 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %3, align 8
  %45 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %43, %46
  %48 = call i32 @aspeed_video_write(%struct.aspeed_video* %38, i32 %39, i32 %47)
  br label %49

49:                                               ; preds = %37, %22
  %50 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %51 = load i32, i32* @VE_COMP_WINDOW, align 4
  %52 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %3, align 8
  %53 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 16
  %56 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %3, align 8
  %57 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %55, %58
  %60 = call i32 @aspeed_video_write(%struct.aspeed_video* %50, i32 %51, i32 %59)
  %61 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %62 = load i32, i32* @VE_SRC_SCANLINE_OFFSET, align 4
  %63 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %3, align 8
  %64 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = mul i32 %65, 4
  %67 = call i32 @aspeed_video_write(%struct.aspeed_video* %61, i32 %62, i32 %66)
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @DIRECT_FETCH_THRESHOLD, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %106

71:                                               ; preds = %49
  %72 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %73 = load i32, i32* @VE_TGS_0, align 4
  %74 = load i32, i32* @VE_TGS_FIRST, align 4
  %75 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %76 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %77, 1
  %79 = call i32 @FIELD_PREP(i32 %74, i64 %78)
  %80 = load i32, i32* @VE_TGS_LAST, align 4
  %81 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %82 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @FIELD_PREP(i32 %80, i64 %83)
  %85 = or i32 %79, %84
  %86 = call i32 @aspeed_video_write(%struct.aspeed_video* %72, i32 %73, i32 %85)
  %87 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %88 = load i32, i32* @VE_TGS_1, align 4
  %89 = load i32, i32* @VE_TGS_FIRST, align 4
  %90 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %91 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @FIELD_PREP(i32 %89, i64 %92)
  %94 = load i32, i32* @VE_TGS_LAST, align 4
  %95 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %96 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  %99 = call i32 @FIELD_PREP(i32 %94, i64 %98)
  %100 = or i32 %93, %99
  %101 = call i32 @aspeed_video_write(%struct.aspeed_video* %87, i32 %88, i32 %100)
  %102 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %103 = load i32, i32* @VE_CTRL, align 4
  %104 = load i32, i32* @VE_CTRL_INT_DE, align 4
  %105 = call i32 @aspeed_video_update(%struct.aspeed_video* %102, i32 %103, i32 0, i32 %104)
  br label %111

106:                                              ; preds = %49
  %107 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %108 = load i32, i32* @VE_CTRL, align 4
  %109 = load i32, i32* @VE_CTRL_DIRECT_FETCH, align 4
  %110 = call i32 @aspeed_video_update(%struct.aspeed_video* %107, i32 %108, i32 0, i32 %109)
  br label %111

111:                                              ; preds = %106, %71
  %112 = load i32, i32* %4, align 4
  %113 = mul i32 %112, 4
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %116 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %115, i32 0, i32 0
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %114, %120
  br i1 %121, label %122, label %191

122:                                              ; preds = %111
  %123 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %124 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %123, i32 0, i32 0
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %122
  %131 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %132 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %133 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %132, i32 0, i32 0
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i64 0
  %136 = call i32 @aspeed_video_free_buf(%struct.aspeed_video* %131, %struct.TYPE_3__* %135)
  br label %137

137:                                              ; preds = %130, %122
  %138 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %139 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %138, i32 0, i32 0
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i64 1
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %137
  %146 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %147 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %148 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %147, i32 0, i32 0
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i64 1
  %151 = call i32 @aspeed_video_free_buf(%struct.aspeed_video* %146, %struct.TYPE_3__* %150)
  br label %152

152:                                              ; preds = %145, %137
  %153 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %154 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %155 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %154, i32 0, i32 0
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i64 0
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @aspeed_video_alloc_buf(%struct.aspeed_video* %153, %struct.TYPE_3__* %157, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %152
  br label %192

162:                                              ; preds = %152
  %163 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %164 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %165 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %164, i32 0, i32 0
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i64 1
  %168 = load i32, i32* %4, align 4
  %169 = call i32 @aspeed_video_alloc_buf(%struct.aspeed_video* %163, %struct.TYPE_3__* %167, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %162
  br label %192

172:                                              ; preds = %162
  %173 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %174 = load i32, i32* @VE_SRC0_ADDR, align 4
  %175 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %176 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %175, i32 0, i32 0
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i64 0
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @aspeed_video_write(%struct.aspeed_video* %173, i32 %174, i32 %180)
  %182 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %183 = load i32, i32* @VE_SRC1_ADDR, align 4
  %184 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %185 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %184, i32 0, i32 0
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i64 1
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @aspeed_video_write(%struct.aspeed_video* %182, i32 %183, i32 %189)
  br label %191

191:                                              ; preds = %172, %111
  br label %211

192:                                              ; preds = %171, %161
  %193 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %194 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @dev_err(i32 %195, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %197 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %198 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %197, i32 0, i32 0
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i64 0
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %192
  %205 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %206 = load %struct.aspeed_video*, %struct.aspeed_video** %2, align 8
  %207 = getelementptr inbounds %struct.aspeed_video, %struct.aspeed_video* %206, i32 0, i32 0
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i64 0
  %210 = call i32 @aspeed_video_free_buf(%struct.aspeed_video* %205, %struct.TYPE_3__* %209)
  br label %211

211:                                              ; preds = %191, %204, %192
  ret void
}

declare dso_local i32 @aspeed_video_calc_compressed_size(%struct.aspeed_video*, i32) #1

declare dso_local i32 @aspeed_video_write(%struct.aspeed_video*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i64) #1

declare dso_local i32 @aspeed_video_update(%struct.aspeed_video*, i32, i32, i32) #1

declare dso_local i32 @aspeed_video_free_buf(%struct.aspeed_video*, %struct.TYPE_3__*) #1

declare dso_local i32 @aspeed_video_alloc_buf(%struct.aspeed_video*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
