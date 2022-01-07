; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.fimc_ctx = type { i32 }
%struct.fimc_frame = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @fimc_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.fimc_ctx*, align 8
  %13 = alloca %struct.fimc_frame*, align 8
  %14 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %16 = call %struct.fimc_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %15)
  store %struct.fimc_ctx* %16, %struct.fimc_ctx** %12, align 8
  %17 = load %struct.fimc_ctx*, %struct.fimc_ctx** %12, align 8
  %18 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %19 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.fimc_frame* @ctx_get_frame(%struct.fimc_ctx* %17, i32 %20)
  store %struct.fimc_frame* %21, %struct.fimc_frame** %13, align 8
  %22 = load %struct.fimc_frame*, %struct.fimc_frame** %13, align 8
  %23 = call i64 @IS_ERR(%struct.fimc_frame* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load %struct.fimc_frame*, %struct.fimc_frame** %13, align 8
  %27 = call i32 @PTR_ERR(%struct.fimc_frame* %26)
  store i32 %27, i32* %6, align 4
  br label %67

28:                                               ; preds = %5
  %29 = load %struct.fimc_frame*, %struct.fimc_frame** %13, align 8
  %30 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %67

36:                                               ; preds = %28
  %37 = load %struct.fimc_frame*, %struct.fimc_frame** %13, align 8
  %38 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  store i32 0, i32* %14, align 4
  br label %43

43:                                               ; preds = %63, %36
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.fimc_frame*, %struct.fimc_frame** %13, align 8
  %46 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ult i32 %44, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %43
  %52 = load %struct.fimc_frame*, %struct.fimc_frame** %13, align 8
  %53 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  br label %43

66:                                               ; preds = %43
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %33, %25
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.fimc_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.fimc_frame* @ctx_get_frame(%struct.fimc_ctx*, i32) #1

declare dso_local i64 @IS_ERR(%struct.fimc_frame*) #1

declare dso_local i32 @PTR_ERR(%struct.fimc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
