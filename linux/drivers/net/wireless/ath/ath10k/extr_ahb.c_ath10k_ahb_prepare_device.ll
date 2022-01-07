; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_prepare_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_prepare_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"failed to enable clocks\0A\00", align 1
@ATH10K_AHB_GCC_FEPLL_PLL_DIV = common dso_local global i32 0, align 4
@ATH10K_AHB_WIFI_SCRATCH_5_REG = common dso_local global i32 0, align 4
@FW_INDICATOR_ADDRESS = common dso_local global i32 0, align 4
@FW_IND_HOST_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_ahb_prepare_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_ahb_prepare_device(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %6 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %7 = call i32 @ath10k_ahb_clock_enable(%struct.ath10k* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %12 = call i32 @ath10k_err(%struct.ath10k* %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %16 = load i32, i32* @ATH10K_AHB_GCC_FEPLL_PLL_DIV, align 4
  %17 = call i32 @ath10k_ahb_gcc_read32(%struct.ath10k* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %19 = load i32, i32* @ATH10K_AHB_WIFI_SCRATCH_5_REG, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ath10k_ahb_write32(%struct.ath10k* %18, i32 %19, i32 %20)
  %22 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %23 = call i32 @ath10k_ahb_release_reset(%struct.ath10k* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %43

27:                                               ; preds = %14
  %28 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %29 = call i32 @ath10k_ahb_irq_disable(%struct.ath10k* %28)
  %30 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %31 = load i32, i32* @FW_INDICATOR_ADDRESS, align 4
  %32 = load i32, i32* @FW_IND_HOST_READY, align 4
  %33 = call i32 @ath10k_ahb_write32(%struct.ath10k* %30, i32 %31, i32 %32)
  %34 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %35 = call i32 @ath10k_pci_wait_for_target_init(%struct.ath10k* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %40

39:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %47

40:                                               ; preds = %38
  %41 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %42 = call i32 @ath10k_ahb_halt_chip(%struct.ath10k* %41)
  br label %43

43:                                               ; preds = %40, %26
  %44 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %45 = call i32 @ath10k_ahb_clock_disable(%struct.ath10k* %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %39, %10
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @ath10k_ahb_clock_enable(%struct.ath10k*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*) #1

declare dso_local i32 @ath10k_ahb_gcc_read32(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_ahb_write32(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @ath10k_ahb_release_reset(%struct.ath10k*) #1

declare dso_local i32 @ath10k_ahb_irq_disable(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_wait_for_target_init(%struct.ath10k*) #1

declare dso_local i32 @ath10k_ahb_halt_chip(%struct.ath10k*) #1

declare dso_local i32 @ath10k_ahb_clock_disable(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
