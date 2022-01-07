; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_can_set_cts_prot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_can_set_cts_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i32, %struct.ath10k* }
%struct.ath10k = type { i32 }

@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"defer cts setup, vdev is not ready yet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_vif*)* @ath10k_mac_can_set_cts_prot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_can_set_cts_prot(%struct.ath10k_vif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_vif*, align 8
  %4 = alloca %struct.ath10k*, align 8
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %3, align 8
  %5 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %6 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %5, i32 0, i32 1
  %7 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  store %struct.ath10k* %7, %struct.ath10k** %4, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %9 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %8, i32 0, i32 0
  %10 = call i32 @lockdep_assert_held(i32* %9)
  %11 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %12 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %17 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %18 = call i32 @ath10k_dbg(%struct.ath10k* %16, i32 %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %20

19:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %15
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
