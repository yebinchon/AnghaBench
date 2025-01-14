; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_hwtstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_hwtstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fec_enet_private = type { i32, i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fec_enet_private*, i32, %struct.skb_shared_hwtstamps*)* @fec_enet_hwtstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fec_enet_hwtstamp(%struct.fec_enet_private* %0, i32 %1, %struct.skb_shared_hwtstamps* %2) #0 {
  %4 = alloca %struct.fec_enet_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.skb_shared_hwtstamps*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.fec_enet_private* %0, %struct.fec_enet_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.skb_shared_hwtstamps* %2, %struct.skb_shared_hwtstamps** %6, align 8
  %9 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %10 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %9, i32 0, i32 0
  %11 = load i64, i64* %7, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %14 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %13, i32 0, i32 1
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @timecounter_cyc2time(i32* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.fec_enet_private*, %struct.fec_enet_private** %4, align 8
  %18 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %17, i32 0, i32 0
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %6, align 8
  %22 = call i32 @memset(%struct.skb_shared_hwtstamps* %21, i32 0, i32 4)
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @ns_to_ktime(i32 %23)
  %25 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %6, align 8
  %26 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @timecounter_cyc2time(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
