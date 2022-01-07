; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_free_tx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_free_tx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_bdr = type { i32 }
%struct.enetc_tx_swbd = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enetc_bdr*, %struct.enetc_tx_swbd*)* @enetc_free_tx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_free_tx_skb(%struct.enetc_bdr* %0, %struct.enetc_tx_swbd* %1) #0 {
  %3 = alloca %struct.enetc_bdr*, align 8
  %4 = alloca %struct.enetc_tx_swbd*, align 8
  store %struct.enetc_bdr* %0, %struct.enetc_bdr** %3, align 8
  store %struct.enetc_tx_swbd* %1, %struct.enetc_tx_swbd** %4, align 8
  %5 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %4, align 8
  %6 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.enetc_bdr*, %struct.enetc_bdr** %3, align 8
  %11 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %4, align 8
  %12 = call i32 @enetc_unmap_tx_buff(%struct.enetc_bdr* %10, %struct.enetc_tx_swbd* %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %4, align 8
  %15 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %4, align 8
  %20 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @dev_kfree_skb_any(i32* %21)
  %23 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %4, align 8
  %24 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %18, %13
  ret void
}

declare dso_local i32 @enetc_unmap_tx_buff(%struct.enetc_bdr*, %struct.enetc_tx_swbd*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
