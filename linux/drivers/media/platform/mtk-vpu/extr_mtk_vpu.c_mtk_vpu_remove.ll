; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_mtk_vpu_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_mtk_vpu_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mtk_vpu = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@P_FW = common dso_local global i32 0, align 4
@D_FW = common dso_local global i32 0, align 4
@vpu_debugfs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mtk_vpu_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_vpu_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mtk_vpu*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.mtk_vpu* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.mtk_vpu* %5, %struct.mtk_vpu** %3, align 8
  %6 = load %struct.mtk_vpu*, %struct.mtk_vpu** %3, align 8
  %7 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.mtk_vpu*, %struct.mtk_vpu** %3, align 8
  %13 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @flush_workqueue(i64 %15)
  %17 = load %struct.mtk_vpu*, %struct.mtk_vpu** %3, align 8
  %18 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @destroy_workqueue(i64 %20)
  br label %22

22:                                               ; preds = %11, %1
  %23 = load %struct.mtk_vpu*, %struct.mtk_vpu** %3, align 8
  %24 = load i32, i32* @P_FW, align 4
  %25 = call i32 @vpu_free_ext_mem(%struct.mtk_vpu* %23, i32 %24)
  %26 = load %struct.mtk_vpu*, %struct.mtk_vpu** %3, align 8
  %27 = load i32, i32* @D_FW, align 4
  %28 = call i32 @vpu_free_ext_mem(%struct.mtk_vpu* %26, i32 %27)
  %29 = load %struct.mtk_vpu*, %struct.mtk_vpu** %3, align 8
  %30 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %29, i32 0, i32 1
  %31 = call i32 @mutex_destroy(i32* %30)
  %32 = load %struct.mtk_vpu*, %struct.mtk_vpu** %3, align 8
  %33 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @clk_unprepare(i32 %34)
  ret i32 0
}

declare dso_local %struct.mtk_vpu* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @flush_workqueue(i64) #1

declare dso_local i32 @destroy_workqueue(i64) #1

declare dso_local i32 @vpu_free_ext_mem(%struct.mtk_vpu*, i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @clk_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
