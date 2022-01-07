; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-regs.c_gsc_hw_set_out_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-regs.c_gsc_hw_set_out_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_ctx = type { i64, %struct.TYPE_5__, %struct.gsc_frame, %struct.gsc_dev* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.gsc_frame = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.gsc_dev = type { i64 }

@GSC_DMA = common dso_local global i64 0, align 8
@GSC_DSTIMG_OFFSET = common dso_local global i64 0, align 8
@GSC_DSTIMG_SIZE = common dso_local global i64 0, align 8
@GSC_SCALED_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gsc_hw_set_out_size(%struct.gsc_ctx* %0) #0 {
  %2 = alloca %struct.gsc_ctx*, align 8
  %3 = alloca %struct.gsc_dev*, align 8
  %4 = alloca %struct.gsc_frame*, align 8
  %5 = alloca i32, align 4
  store %struct.gsc_ctx* %0, %struct.gsc_ctx** %2, align 8
  %6 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %6, i32 0, i32 3
  %8 = load %struct.gsc_dev*, %struct.gsc_dev** %7, align 8
  store %struct.gsc_dev* %8, %struct.gsc_dev** %3, align 8
  %9 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %9, i32 0, i32 2
  store %struct.gsc_frame* %10, %struct.gsc_frame** %4, align 8
  %11 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @GSC_DMA, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %1
  %17 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %18 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @GSC_DSTIMG_OFFSET_X(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %23 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @GSC_DSTIMG_OFFSET_Y(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.gsc_dev*, %struct.gsc_dev** %3, align 8
  %31 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @GSC_DSTIMG_OFFSET, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %37 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @GSC_DSTIMG_WIDTH(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %41 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @GSC_DSTIMG_HEIGHT(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.gsc_dev*, %struct.gsc_dev** %3, align 8
  %48 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @GSC_DSTIMG_SIZE, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  br label %53

53:                                               ; preds = %16, %1
  %54 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %55 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 90
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  %62 = load %struct.gsc_ctx*, %struct.gsc_ctx** %2, align 8
  %63 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 270
  br i1 %68, label %69, label %82

69:                                               ; preds = %61, %53
  %70 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %71 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @GSC_SCALED_WIDTH(i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %76 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @GSC_SCALED_HEIGHT(i32 %78)
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %95

82:                                               ; preds = %61
  %83 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %84 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @GSC_SCALED_WIDTH(i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = load %struct.gsc_frame*, %struct.gsc_frame** %4, align 8
  %89 = getelementptr inbounds %struct.gsc_frame, %struct.gsc_frame* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @GSC_SCALED_HEIGHT(i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %82, %69
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.gsc_dev*, %struct.gsc_dev** %3, align 8
  %98 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @GSC_SCALED_SIZE, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @writel(i32 %96, i64 %101)
  ret void
}

declare dso_local i32 @GSC_DSTIMG_OFFSET_X(i32) #1

declare dso_local i32 @GSC_DSTIMG_OFFSET_Y(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @GSC_DSTIMG_WIDTH(i32) #1

declare dso_local i32 @GSC_DSTIMG_HEIGHT(i32) #1

declare dso_local i32 @GSC_SCALED_WIDTH(i32) #1

declare dso_local i32 @GSC_SCALED_HEIGHT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
