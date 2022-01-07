; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.board_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm9000_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm9000_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.board_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.board_info* @netdev_priv(%struct.net_device* %6)
  store %struct.board_info* %7, %struct.board_info** %3, align 8
  %8 = load %struct.board_info*, %struct.board_info** %3, align 8
  %9 = getelementptr inbounds %struct.board_info, %struct.board_info* %8, i32 0, i32 1
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.board_info*, %struct.board_info** %3, align 8
  %13 = getelementptr inbounds %struct.board_info, %struct.board_info* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.board_info*, %struct.board_info** %3, align 8
  %15 = getelementptr inbounds %struct.board_info, %struct.board_info* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @readb(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @netif_stop_queue(%struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @dm9000_init_dm9000(%struct.net_device* %20)
  %22 = load %struct.board_info*, %struct.board_info** %3, align 8
  %23 = call i32 @dm9000_unmask_interrupts(%struct.board_info* %22)
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @netif_trans_update(%struct.net_device* %24)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = call i32 @netif_wake_queue(%struct.net_device* %26)
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.board_info*, %struct.board_info** %3, align 8
  %30 = getelementptr inbounds %struct.board_info, %struct.board_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @writeb(i32 %28, i32 %31)
  %33 = load %struct.board_info*, %struct.board_info** %3, align 8
  %34 = getelementptr inbounds %struct.board_info, %struct.board_info* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load %struct.board_info*, %struct.board_info** %3, align 8
  %36 = getelementptr inbounds %struct.board_info, %struct.board_info* %35, i32 0, i32 1
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  ret void
}

declare dso_local %struct.board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readb(i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @dm9000_init_dm9000(%struct.net_device*) #1

declare dso_local i32 @dm9000_unmask_interrupts(%struct.board_info*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
