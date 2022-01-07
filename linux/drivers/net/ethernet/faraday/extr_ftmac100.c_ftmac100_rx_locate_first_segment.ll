; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_rx_locate_first_segment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_rx_locate_first_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftmac100_rxdes = type { i32 }
%struct.ftmac100 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ftmac100_rxdes* (%struct.ftmac100*)* @ftmac100_rx_locate_first_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ftmac100_rxdes* @ftmac100_rx_locate_first_segment(%struct.ftmac100* %0) #0 {
  %2 = alloca %struct.ftmac100_rxdes*, align 8
  %3 = alloca %struct.ftmac100*, align 8
  %4 = alloca %struct.ftmac100_rxdes*, align 8
  store %struct.ftmac100* %0, %struct.ftmac100** %3, align 8
  %5 = load %struct.ftmac100*, %struct.ftmac100** %3, align 8
  %6 = call %struct.ftmac100_rxdes* @ftmac100_current_rxdes(%struct.ftmac100* %5)
  store %struct.ftmac100_rxdes* %6, %struct.ftmac100_rxdes** %4, align 8
  br label %7

7:                                                ; preds = %18, %1
  %8 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %4, align 8
  %9 = call i32 @ftmac100_rxdes_owned_by_dma(%struct.ftmac100_rxdes* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %4, align 8
  %14 = call i64 @ftmac100_rxdes_first_segment(%struct.ftmac100_rxdes* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %4, align 8
  store %struct.ftmac100_rxdes* %17, %struct.ftmac100_rxdes** %2, align 8
  br label %26

18:                                               ; preds = %12
  %19 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %4, align 8
  %20 = call i32 @ftmac100_rxdes_set_dma_own(%struct.ftmac100_rxdes* %19)
  %21 = load %struct.ftmac100*, %struct.ftmac100** %3, align 8
  %22 = call i32 @ftmac100_rx_pointer_advance(%struct.ftmac100* %21)
  %23 = load %struct.ftmac100*, %struct.ftmac100** %3, align 8
  %24 = call %struct.ftmac100_rxdes* @ftmac100_current_rxdes(%struct.ftmac100* %23)
  store %struct.ftmac100_rxdes* %24, %struct.ftmac100_rxdes** %4, align 8
  br label %7

25:                                               ; preds = %7
  store %struct.ftmac100_rxdes* null, %struct.ftmac100_rxdes** %2, align 8
  br label %26

26:                                               ; preds = %25, %16
  %27 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %2, align 8
  ret %struct.ftmac100_rxdes* %27
}

declare dso_local %struct.ftmac100_rxdes* @ftmac100_current_rxdes(%struct.ftmac100*) #1

declare dso_local i32 @ftmac100_rxdes_owned_by_dma(%struct.ftmac100_rxdes*) #1

declare dso_local i64 @ftmac100_rxdes_first_segment(%struct.ftmac100_rxdes*) #1

declare dso_local i32 @ftmac100_rxdes_set_dma_own(%struct.ftmac100_rxdes*) #1

declare dso_local i32 @ftmac100_rx_pointer_advance(%struct.ftmac100*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
