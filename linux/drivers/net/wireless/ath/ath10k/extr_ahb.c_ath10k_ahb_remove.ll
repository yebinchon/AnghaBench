; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ath10k = type { i32 }
%struct.ath10k_ahb = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ATH10K_DBG_AHB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ahb remove\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ath10k_ahb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_ahb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.ath10k_ahb*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.ath10k* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.ath10k* %7, %struct.ath10k** %4, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %9 = icmp ne %struct.ath10k* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %43

13:                                               ; preds = %1
  %14 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %15 = call %struct.ath10k_ahb* @ath10k_ahb_priv(%struct.ath10k* %14)
  store %struct.ath10k_ahb* %15, %struct.ath10k_ahb** %5, align 8
  %16 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %5, align 8
  %17 = icmp ne %struct.ath10k_ahb* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %43

21:                                               ; preds = %13
  %22 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %23 = load i32, i32* @ATH10K_DBG_AHB, align 4
  %24 = call i32 @ath10k_dbg(%struct.ath10k* %22, i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %26 = call i32 @ath10k_core_unregister(%struct.ath10k* %25)
  %27 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %28 = call i32 @ath10k_ahb_irq_disable(%struct.ath10k* %27)
  %29 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %30 = call i32 @ath10k_ahb_release_irq_legacy(%struct.ath10k* %29)
  %31 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %32 = call i32 @ath10k_pci_release_resource(%struct.ath10k* %31)
  %33 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %34 = call i32 @ath10k_ahb_halt_chip(%struct.ath10k* %33)
  %35 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %36 = call i32 @ath10k_ahb_clock_disable(%struct.ath10k* %35)
  %37 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %38 = call i32 @ath10k_ahb_resource_deinit(%struct.ath10k* %37)
  %39 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %40 = call i32 @ath10k_core_destroy(%struct.ath10k* %39)
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = call i32 @platform_set_drvdata(%struct.platform_device* %41, i32* null)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %21, %18, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.ath10k* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.ath10k_ahb* @ath10k_ahb_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @ath10k_core_unregister(%struct.ath10k*) #1

declare dso_local i32 @ath10k_ahb_irq_disable(%struct.ath10k*) #1

declare dso_local i32 @ath10k_ahb_release_irq_legacy(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_release_resource(%struct.ath10k*) #1

declare dso_local i32 @ath10k_ahb_halt_chip(%struct.ath10k*) #1

declare dso_local i32 @ath10k_ahb_clock_disable(%struct.ath10k*) #1

declare dso_local i32 @ath10k_ahb_resource_deinit(%struct.ath10k*) #1

declare dso_local i32 @ath10k_core_destroy(%struct.ath10k*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
