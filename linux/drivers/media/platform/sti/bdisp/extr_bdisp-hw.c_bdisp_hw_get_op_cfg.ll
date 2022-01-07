; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-hw.c_bdisp_hw_get_op_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/bdisp/extr_bdisp-hw.c_bdisp_hw_get_op_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bdisp_ctx = type { i32, i32, %struct.bdisp_frame, %struct.bdisp_frame, %struct.TYPE_3__* }
%struct.bdisp_frame = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.bdisp_op_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MAX_SRC_WIDTH = common dso_local global i32 0, align 4
@MAX_VERTICAL_STRIDES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Image width out of HW caps\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV12 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUV420 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Scale factor out of HW caps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bdisp_ctx*, %struct.bdisp_op_cfg*)* @bdisp_hw_get_op_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdisp_hw_get_op_cfg(%struct.bdisp_ctx* %0, %struct.bdisp_op_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bdisp_ctx*, align 8
  %5 = alloca %struct.bdisp_op_cfg*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.bdisp_frame*, align 8
  %8 = alloca %struct.bdisp_frame*, align 8
  store %struct.bdisp_ctx* %0, %struct.bdisp_ctx** %4, align 8
  store %struct.bdisp_op_cfg* %1, %struct.bdisp_op_cfg** %5, align 8
  %9 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %9, i32 0, i32 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %14, i32 0, i32 3
  store %struct.bdisp_frame* %15, %struct.bdisp_frame** %7, align 8
  %16 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %16, i32 0, i32 2
  store %struct.bdisp_frame* %17, %struct.bdisp_frame** %8, align 8
  %18 = load %struct.bdisp_frame*, %struct.bdisp_frame** %7, align 8
  %19 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MAX_SRC_WIDTH, align 4
  %22 = load i32, i32* @MAX_VERTICAL_STRIDES, align 4
  %23 = mul nsw i32 %21, %22
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %170

30:                                               ; preds = %2
  %31 = load %struct.bdisp_frame*, %struct.bdisp_frame** %7, align 8
  %32 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MAX_SRC_WIDTH, align 4
  %35 = icmp sgt i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %38 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %4, align 8
  %40 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %43 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %42, i32 0, i32 13
  store i32 %41, i32* %43, align 4
  %44 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %4, align 8
  %45 = getelementptr inbounds %struct.bdisp_ctx, %struct.bdisp_ctx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %48 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %47, i32 0, i32 12
  store i32 %46, i32* %48, align 4
  %49 = load %struct.bdisp_frame*, %struct.bdisp_frame** %7, align 8
  %50 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %56 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.bdisp_frame*, %struct.bdisp_frame** %7, align 8
  %58 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %63 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %62, i32 0, i32 11
  store i32 %61, i32* %63, align 4
  %64 = load %struct.bdisp_frame*, %struct.bdisp_frame** %7, align 8
  %65 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @V4L2_PIX_FMT_NV12, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %79, label %71

71:                                               ; preds = %30
  %72 = load %struct.bdisp_frame*, %struct.bdisp_frame** %7, align 8
  %73 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %72, i32 0, i32 2
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @V4L2_PIX_FMT_YUV420, align 8
  %78 = icmp eq i64 %76, %77
  br label %79

79:                                               ; preds = %71, %30
  %80 = phi i1 [ true, %30 ], [ %78, %71 ]
  %81 = zext i1 %80 to i32
  %82 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %83 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %85 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %88 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.bdisp_frame*, %struct.bdisp_frame** %8, align 8
  %90 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %95 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %94, i32 0, i32 10
  store i32 %93, i32* %95, align 4
  %96 = load %struct.bdisp_frame*, %struct.bdisp_frame** %8, align 8
  %97 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %96, i32 0, i32 2
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @V4L2_PIX_FMT_NV12, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %111, label %103

103:                                              ; preds = %79
  %104 = load %struct.bdisp_frame*, %struct.bdisp_frame** %8, align 8
  %105 = getelementptr inbounds %struct.bdisp_frame, %struct.bdisp_frame* %104, i32 0, i32 2
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @V4L2_PIX_FMT_YUV420, align 8
  %110 = icmp eq i64 %108, %109
  br label %111

111:                                              ; preds = %103, %79
  %112 = phi i1 [ true, %79 ], [ %110, %103 ]
  %113 = zext i1 %112 to i32
  %114 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %115 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %117 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %120 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 4
  %121 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %122 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %125 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %123, %126
  %128 = zext i1 %127 to i32
  %129 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %130 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %129, i32 0, i32 6
  store i32 %128, i32* %130, align 4
  %131 = load %struct.bdisp_ctx*, %struct.bdisp_ctx** %4, align 8
  %132 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %133 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %132, i32 0, i32 7
  %134 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %135 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %134, i32 0, i32 8
  %136 = call i64 @bdisp_hw_get_hv_inc(%struct.bdisp_ctx* %131, i32* %133, i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %111
  %139 = load %struct.device*, %struct.device** %6, align 8
  %140 = call i32 @dev_err(%struct.device* %139, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  br label %170

143:                                              ; preds = %111
  %144 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %145 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %150 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 4
  %152 = sdiv i32 %151, 2
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %148, %143
  %154 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %155 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 1024
  br i1 %157, label %163, label %158

158:                                              ; preds = %153
  %159 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %160 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 1024
  br i1 %162, label %163, label %166

163:                                              ; preds = %158, %153
  %164 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %165 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %164, i32 0, i32 9
  store i32 1, i32* %165, align 4
  br label %169

166:                                              ; preds = %158
  %167 = load %struct.bdisp_op_cfg*, %struct.bdisp_op_cfg** %5, align 8
  %168 = getelementptr inbounds %struct.bdisp_op_cfg, %struct.bdisp_op_cfg* %167, i32 0, i32 9
  store i32 0, i32* %168, align 4
  br label %169

169:                                              ; preds = %166, %163
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %138, %25
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @bdisp_hw_get_hv_inc(%struct.bdisp_ctx*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
