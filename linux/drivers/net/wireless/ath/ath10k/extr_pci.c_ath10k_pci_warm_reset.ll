; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_warm_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_warm_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"boot warm reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to wait for target init: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"boot warm reset complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_pci_warm_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_pci_warm_reset(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %5 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %6 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %7 = call i32 @ath10k_dbg(%struct.ath10k* %5, i32 %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %12 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %17 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %16, i32 0, i32 0
  %18 = call i32 @spin_unlock_bh(i32* %17)
  %19 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %20 = call i32 @ath10k_pci_irq_disable(%struct.ath10k* %19)
  %21 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %22 = call i32 @ath10k_pci_warm_reset_si0(%struct.ath10k* %21)
  %23 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %24 = call i32 @ath10k_pci_warm_reset_cpu(%struct.ath10k* %23)
  %25 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %26 = call i32 @ath10k_pci_init_pipes(%struct.ath10k* %25)
  %27 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %28 = call i32 @ath10k_pci_wait_for_target_init(%struct.ath10k* %27)
  %29 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %30 = call i32 @ath10k_pci_warm_reset_clear_lf(%struct.ath10k* %29)
  %31 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %32 = call i32 @ath10k_pci_warm_reset_ce(%struct.ath10k* %31)
  %33 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %34 = call i32 @ath10k_pci_warm_reset_cpu(%struct.ath10k* %33)
  %35 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %36 = call i32 @ath10k_pci_init_pipes(%struct.ath10k* %35)
  %37 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %38 = call i32 @ath10k_pci_wait_for_target_init(%struct.ath10k* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %1
  %42 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @ath10k_warn(%struct.ath10k* %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %50

46:                                               ; preds = %1
  %47 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %48 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %49 = call i32 @ath10k_dbg(%struct.ath10k* %47, i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath10k_pci_irq_disable(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_warm_reset_si0(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_warm_reset_cpu(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_init_pipes(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_wait_for_target_init(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_warm_reset_clear_lf(%struct.ath10k*) #1

declare dso_local i32 @ath10k_pci_warm_reset_ce(%struct.ath10k*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
