; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_reclaim_txctrl_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_reclaim_txctrl_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32, i32 }
%struct.htc_packet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*, %struct.htc_packet*)* @htc_reclaim_txctrl_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htc_reclaim_txctrl_buf(%struct.htc_target* %0, %struct.htc_packet* %1) #0 {
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca %struct.htc_packet*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  store %struct.htc_packet* %1, %struct.htc_packet** %4, align 8
  %5 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %6 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %9 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %8, i32 0, i32 0
  %10 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %11 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %10, i32 0, i32 1
  %12 = call i32 @list_add_tail(i32* %9, i32* %11)
  %13 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %14 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %13, i32 0, i32 0
  %15 = call i32 @spin_unlock_bh(i32* %14)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
