; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_mbox_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_ath6kl_htc_mbox_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, i32, i32 }

@HTC_OP_STATE_STOPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*)* @ath6kl_htc_mbox_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath6kl_htc_mbox_stop(%struct.htc_target* %0) #0 {
  %2 = alloca %struct.htc_target*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %2, align 8
  %3 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %4 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %3, i32 0, i32 1
  %5 = call i32 @spin_lock_bh(i32* %4)
  %6 = load i32, i32* @HTC_OP_STATE_STOPPING, align 4
  %7 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %8 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %12 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %11, i32 0, i32 1
  %13 = call i32 @spin_unlock_bh(i32* %12)
  %14 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %15 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ath6kl_hif_mask_intrs(i32 %16)
  %18 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %19 = call i32 @ath6kl_htc_flush_txep_all(%struct.htc_target* %18)
  %20 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %21 = call i32 @ath6kl_htc_mbox_flush_rx_buf(%struct.htc_target* %20)
  %22 = load %struct.htc_target*, %struct.htc_target** %2, align 8
  %23 = call i32 @ath6kl_htc_reset(%struct.htc_target* %22)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath6kl_hif_mask_intrs(i32) #1

declare dso_local i32 @ath6kl_htc_flush_txep_all(%struct.htc_target*) #1

declare dso_local i32 @ath6kl_htc_mbox_flush_rx_buf(%struct.htc_target*) #1

declare dso_local i32 @ath6kl_htc_reset(%struct.htc_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
