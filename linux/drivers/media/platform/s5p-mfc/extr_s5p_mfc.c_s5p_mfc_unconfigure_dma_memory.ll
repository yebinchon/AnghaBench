; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc.c_s5p_mfc_unconfigure_dma_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc.c_s5p_mfc_unconfigure_dma_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_mfc_dev*)* @s5p_mfc_unconfigure_dma_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_mfc_unconfigure_dma_memory(%struct.s5p_mfc_dev* %0) #0 {
  %2 = alloca %struct.s5p_mfc_dev*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %2, align 8
  %4 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %5 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %9 = call i32 @s5p_mfc_release_firmware(%struct.s5p_mfc_dev* %8)
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i64 @exynos_is_iommu_available(%struct.device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %15 = call i32 @IS_TWOPORT(%struct.s5p_mfc_dev* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %19 = call i32 @s5p_mfc_unconfigure_common_memory(%struct.s5p_mfc_dev* %18)
  br label %23

20:                                               ; preds = %13
  %21 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %22 = call i32 @s5p_mfc_unconfigure_2port_memory(%struct.s5p_mfc_dev* %21)
  br label %23

23:                                               ; preds = %20, %17
  ret void
}

declare dso_local i32 @s5p_mfc_release_firmware(%struct.s5p_mfc_dev*) #1

declare dso_local i64 @exynos_is_iommu_available(%struct.device*) #1

declare dso_local i32 @IS_TWOPORT(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @s5p_mfc_unconfigure_common_memory(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @s5p_mfc_unconfigure_2port_memory(%struct.s5p_mfc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
