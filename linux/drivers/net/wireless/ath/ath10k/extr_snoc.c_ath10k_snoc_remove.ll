; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ath10k = type { i32 }
%struct.ath10k_snoc = type { i32 }

@ATH10K_DBG_SNOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"snoc remove\0A\00", align 1
@ATH10K_SNOC_FLAG_RECOVERY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ATH10K_SNOC_FLAG_UNREGISTERING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ath10k_snoc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_snoc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_snoc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.ath10k* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.ath10k* %6, %struct.ath10k** %3, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %8 = call %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k* %7)
  store %struct.ath10k_snoc* %8, %struct.ath10k_snoc** %4, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = load i32, i32* @ATH10K_DBG_SNOC, align 4
  %11 = call i32 @ath10k_dbg(%struct.ath10k* %9, i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %12, i32 0, i32 0
  %14 = call i32 @reinit_completion(i32* %13)
  %15 = load i32, i32* @ATH10K_SNOC_FLAG_RECOVERY, align 4
  %16 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %4, align 8
  %17 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %16, i32 0, i32 0
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %22 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %21, i32 0, i32 0
  %23 = load i32, i32* @HZ, align 4
  %24 = mul nsw i32 3, %23
  %25 = call i32 @wait_for_completion_timeout(i32* %22, i32 %24)
  br label %26

26:                                               ; preds = %20, %1
  %27 = load i32, i32* @ATH10K_SNOC_FLAG_UNREGISTERING, align 4
  %28 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %4, align 8
  %29 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %28, i32 0, i32 0
  %30 = call i32 @set_bit(i32 %27, i32* %29)
  %31 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %32 = call i32 @ath10k_core_unregister(%struct.ath10k* %31)
  %33 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %34 = call i32 @ath10k_hw_power_off(%struct.ath10k* %33)
  %35 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %36 = call i32 @ath10k_snoc_free_irq(%struct.ath10k* %35)
  %37 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %38 = call i32 @ath10k_snoc_release_resource(%struct.ath10k* %37)
  %39 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %40 = call i32 @ath10k_qmi_deinit(%struct.ath10k* %39)
  %41 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %42 = call i32 @ath10k_core_destroy(%struct.ath10k* %41)
  ret i32 0
}

declare dso_local %struct.ath10k* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ath10k_core_unregister(%struct.ath10k*) #1

declare dso_local i32 @ath10k_hw_power_off(%struct.ath10k*) #1

declare dso_local i32 @ath10k_snoc_free_irq(%struct.ath10k*) #1

declare dso_local i32 @ath10k_snoc_release_resource(%struct.ath10k*) #1

declare dso_local i32 @ath10k_qmi_deinit(%struct.ath10k*) #1

declare dso_local i32 @ath10k_core_destroy(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
