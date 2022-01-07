; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_check_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_check_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftgmac100 = type { i64, %struct.ftgmac100_rxdes* }
%struct.ftgmac100_rxdes = type { i32 }

@FTGMAC100_RXDES0_RXPKT_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftgmac100*)* @ftgmac100_check_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftgmac100_check_rx(%struct.ftgmac100* %0) #0 {
  %2 = alloca %struct.ftgmac100*, align 8
  %3 = alloca %struct.ftgmac100_rxdes*, align 8
  store %struct.ftgmac100* %0, %struct.ftgmac100** %2, align 8
  %4 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %5 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %4, i32 0, i32 1
  %6 = load %struct.ftgmac100_rxdes*, %struct.ftgmac100_rxdes** %5, align 8
  %7 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %8 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.ftgmac100_rxdes, %struct.ftgmac100_rxdes* %6, i64 %9
  store %struct.ftgmac100_rxdes* %10, %struct.ftgmac100_rxdes** %3, align 8
  %11 = load %struct.ftgmac100_rxdes*, %struct.ftgmac100_rxdes** %3, align 8
  %12 = getelementptr inbounds %struct.ftgmac100_rxdes, %struct.ftgmac100_rxdes* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @FTGMAC100_RXDES0_RXPKT_RDY, align 4
  %15 = call i32 @cpu_to_le32(i32 %14)
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
