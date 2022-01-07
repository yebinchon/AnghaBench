; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_tx_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_tx_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasemi_mac_txring = type { i32, %struct.pasemi_mac* }
%struct.pasemi_mac = type { i32 }
%struct.timer_list = type { i32 }

@clean_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@TX_CLEAN_INTERVAL = common dso_local global i64 0, align 8
@txring = common dso_local global %struct.pasemi_mac_txring* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @pasemi_mac_tx_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pasemi_mac_tx_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.pasemi_mac_txring*, align 8
  %4 = alloca %struct.pasemi_mac*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.pasemi_mac_txring*, %struct.pasemi_mac_txring** %3, align 8
  %6 = ptrtoint %struct.pasemi_mac_txring* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @clean_timer, align 4
  %9 = call %struct.pasemi_mac_txring* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.pasemi_mac_txring* %9, %struct.pasemi_mac_txring** %3, align 8
  %10 = load %struct.pasemi_mac_txring*, %struct.pasemi_mac_txring** %3, align 8
  %11 = getelementptr inbounds %struct.pasemi_mac_txring, %struct.pasemi_mac_txring* %10, i32 0, i32 1
  %12 = load %struct.pasemi_mac*, %struct.pasemi_mac** %11, align 8
  store %struct.pasemi_mac* %12, %struct.pasemi_mac** %4, align 8
  %13 = load %struct.pasemi_mac_txring*, %struct.pasemi_mac_txring** %3, align 8
  %14 = call i32 @pasemi_mac_clean_tx(%struct.pasemi_mac_txring* %13)
  %15 = load %struct.pasemi_mac_txring*, %struct.pasemi_mac_txring** %3, align 8
  %16 = getelementptr inbounds %struct.pasemi_mac_txring, %struct.pasemi_mac_txring* %15, i32 0, i32 0
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* @TX_CLEAN_INTERVAL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @mod_timer(i32* %16, i64 %19)
  %21 = load %struct.pasemi_mac*, %struct.pasemi_mac** %4, align 8
  %22 = call i32 @pasemi_mac_restart_tx_intr(%struct.pasemi_mac* %21)
  ret void
}

declare dso_local %struct.pasemi_mac_txring* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @pasemi_mac_clean_tx(%struct.pasemi_mac_txring*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @pasemi_mac_restart_tx_intr(%struct.pasemi_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
