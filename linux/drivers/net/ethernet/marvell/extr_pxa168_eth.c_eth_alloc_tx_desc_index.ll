; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_eth_alloc_tx_desc_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_eth_alloc_tx_desc_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa168_eth_private = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa168_eth_private*)* @eth_alloc_tx_desc_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eth_alloc_tx_desc_index(%struct.pxa168_eth_private* %0) #0 {
  %2 = alloca %struct.pxa168_eth_private*, align 8
  %3 = alloca i32, align 4
  store %struct.pxa168_eth_private* %0, %struct.pxa168_eth_private** %2, align 8
  %4 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %2, align 8
  %5 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = add nsw i32 %7, 1
  %9 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %2, align 8
  %10 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = srem i32 %8, %11
  %13 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %2, align 8
  %14 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %2, align 8
  %16 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %2, align 8
  %19 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %2, align 8
  %25 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
