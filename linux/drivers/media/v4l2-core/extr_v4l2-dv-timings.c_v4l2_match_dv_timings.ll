; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_match_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-dv-timings.c_v4l2_match_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_dv_timings = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64 }

@V4L2_DV_BT_656_1120 = common dso_local global i64 0, align 8
@V4L2_DV_FL_REDUCED_FPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_match_dv_timings(%struct.v4l2_dv_timings* %0, %struct.v4l2_dv_timings* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_dv_timings*, align 8
  %7 = alloca %struct.v4l2_dv_timings*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.v4l2_dv_timings* %0, %struct.v4l2_dv_timings** %6, align 8
  store %struct.v4l2_dv_timings* %1, %struct.v4l2_dv_timings** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %4
  %18 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @V4L2_DV_BT_656_1120, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %4
  store i32 0, i32* %5, align 4
  br label %203

24:                                               ; preds = %17
  %25 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %28, %32
  br i1 %33, label %34, label %202

34:                                               ; preds = %24
  %35 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %38, %42
  br i1 %43, label %44, label %202

44:                                               ; preds = %34
  %45 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %46 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %48, %52
  br i1 %53, label %54, label %202

54:                                               ; preds = %44
  %55 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %56 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %58, %62
  br i1 %63, label %64, label %202

64:                                               ; preds = %54
  %65 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %66 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sub i32 %72, %73
  %75 = icmp uge i32 %68, %74
  br i1 %75, label %76, label %202

76:                                               ; preds = %64
  %77 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %78 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = add i32 %84, %85
  %87 = icmp ule i32 %80, %86
  br i1 %87, label %88, label %202

88:                                               ; preds = %76
  %89 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %90 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %94 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %92, %96
  br i1 %97, label %98, label %202

98:                                               ; preds = %88
  %99 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %100 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 6
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %104 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %102, %106
  br i1 %107, label %108, label %202

108:                                              ; preds = %98
  %109 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %110 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %114 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 7
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %112, %116
  br i1 %117, label %118, label %202

118:                                              ; preds = %108
  %119 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %120 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 8
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %124 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 8
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %122, %126
  br i1 %127, label %128, label %202

128:                                              ; preds = %118
  %129 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %130 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 9
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %134 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 9
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %132, %136
  br i1 %137, label %138, label %202

138:                                              ; preds = %128
  %139 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %140 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 10
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %144 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 10
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %142, %146
  br i1 %147, label %148, label %202

148:                                              ; preds = %138
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %148
  %152 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %153 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 11
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @V4L2_DV_FL_REDUCED_FPS, align 4
  %157 = and i32 %155, %156
  %158 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %159 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 11
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @V4L2_DV_FL_REDUCED_FPS, align 4
  %163 = and i32 %161, %162
  %164 = icmp eq i32 %157, %163
  br i1 %164, label %165, label %202

165:                                              ; preds = %151, %148
  %166 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %167 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %201

171:                                              ; preds = %165
  %172 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %173 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 12
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %177 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 12
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %175, %179
  br i1 %180, label %181, label %202

181:                                              ; preds = %171
  %182 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %183 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 13
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %187 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 13
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %185, %189
  br i1 %190, label %191, label %202

191:                                              ; preds = %181
  %192 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %6, align 8
  %193 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 14
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %197 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 14
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %195, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %191, %165
  store i32 1, i32* %5, align 4
  br label %203

202:                                              ; preds = %191, %181, %171, %151, %138, %128, %118, %108, %98, %88, %76, %64, %54, %44, %34, %24
  store i32 0, i32* %5, align 4
  br label %203

203:                                              ; preds = %202, %201, %23
  %204 = load i32, i32* %5, align 4
  ret i32 %204
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
