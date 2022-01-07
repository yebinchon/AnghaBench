; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_vif_handle_tx_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_vif_handle_tx_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i32, %struct.ath10k* }
%struct.ath10k = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"received unknown tx pause action %d on vdev %i, ignoring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_vif*, i32, i32)* @ath10k_mac_vif_handle_tx_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_mac_vif_handle_tx_pause(%struct.ath10k_vif* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath10k_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath10k*, align 8
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %9 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %8, i32 0, i32 1
  %10 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  store %struct.ath10k* %10, %struct.ath10k** %7, align 8
  %11 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %12 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %24 [
    i32 129, label %16
    i32 128, label %20
  ]

16:                                               ; preds = %3
  %17 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ath10k_mac_vif_tx_lock(%struct.ath10k_vif* %17, i32 %18)
  br label %32

20:                                               ; preds = %3
  %21 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ath10k_mac_vif_tx_unlock(%struct.ath10k_vif* %21, i32 %22)
  br label %32

24:                                               ; preds = %3
  %25 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  %26 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.ath10k_vif*, %struct.ath10k_vif** %4, align 8
  %29 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ath10k_dbg(%struct.ath10k* %25, i32 %26, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %24, %20, %16
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_mac_vif_tx_lock(%struct.ath10k_vif*, i32) #1

declare dso_local i32 @ath10k_mac_vif_tx_unlock(%struct.ath10k_vif*, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
