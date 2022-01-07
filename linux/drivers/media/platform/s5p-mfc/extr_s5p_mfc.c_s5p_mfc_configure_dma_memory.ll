; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc.c_s5p_mfc_configure_dma_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc.c_s5p_mfc_configure_dma_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_dev*)* @s5p_mfc_configure_dma_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_configure_dma_memory(%struct.s5p_mfc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %3, align 8
  %5 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %6 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i64 @exynos_is_iommu_available(%struct.device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %14 = call i32 @IS_TWOPORT(%struct.s5p_mfc_dev* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %18 = call i32 @s5p_mfc_configure_common_memory(%struct.s5p_mfc_dev* %17)
  store i32 %18, i32* %2, align 4
  br label %22

19:                                               ; preds = %12
  %20 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %21 = call i32 @s5p_mfc_configure_2port_memory(%struct.s5p_mfc_dev* %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @exynos_is_iommu_available(%struct.device*) #1

declare dso_local i32 @IS_TWOPORT(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @s5p_mfc_configure_common_memory(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @s5p_mfc_configure_2port_memory(%struct.s5p_mfc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
