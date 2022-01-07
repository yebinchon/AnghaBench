; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_rx_drop_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_rx_drop_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftmac100 = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ftmac100_rxdes = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"drop packet %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftmac100*)* @ftmac100_rx_drop_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftmac100_rx_drop_packet(%struct.ftmac100* %0) #0 {
  %2 = alloca %struct.ftmac100*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ftmac100_rxdes*, align 8
  %5 = alloca i32, align 4
  store %struct.ftmac100* %0, %struct.ftmac100** %2, align 8
  %6 = load %struct.ftmac100*, %struct.ftmac100** %2, align 8
  %7 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %6, i32 0, i32 0
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.ftmac100*, %struct.ftmac100** %2, align 8
  %10 = call %struct.ftmac100_rxdes* @ftmac100_current_rxdes(%struct.ftmac100* %9)
  store %struct.ftmac100_rxdes* %10, %struct.ftmac100_rxdes** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = call i64 (...) @net_ratelimit()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %4, align 8
  %16 = call i32 @netdev_dbg(%struct.net_device* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.ftmac100_rxdes* %15)
  br label %17

17:                                               ; preds = %13, %1
  br label %18

18:                                               ; preds = %38, %17
  %19 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %4, align 8
  %20 = call i64 @ftmac100_rxdes_last_segment(%struct.ftmac100_rxdes* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %18
  %24 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %4, align 8
  %25 = call i32 @ftmac100_rxdes_set_dma_own(%struct.ftmac100_rxdes* %24)
  %26 = load %struct.ftmac100*, %struct.ftmac100** %2, align 8
  %27 = call i32 @ftmac100_rx_pointer_advance(%struct.ftmac100* %26)
  %28 = load %struct.ftmac100*, %struct.ftmac100** %2, align 8
  %29 = call %struct.ftmac100_rxdes* @ftmac100_current_rxdes(%struct.ftmac100* %28)
  store %struct.ftmac100_rxdes* %29, %struct.ftmac100_rxdes** %4, align 8
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %4, align 8
  %35 = call i32 @ftmac100_rxdes_owned_by_dma(%struct.ftmac100_rxdes* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %33, %30
  %39 = phi i1 [ false, %30 ], [ %37, %33 ]
  br i1 %39, label %18, label %40

40:                                               ; preds = %38
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  ret void
}

declare dso_local %struct.ftmac100_rxdes* @ftmac100_current_rxdes(%struct.ftmac100*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, %struct.ftmac100_rxdes*) #1

declare dso_local i64 @ftmac100_rxdes_last_segment(%struct.ftmac100_rxdes*) #1

declare dso_local i32 @ftmac100_rxdes_set_dma_own(%struct.ftmac100_rxdes*) #1

declare dso_local i32 @ftmac100_rx_pointer_advance(%struct.ftmac100*) #1

declare dso_local i32 @ftmac100_rxdes_owned_by_dma(%struct.ftmac100_rxdes*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
