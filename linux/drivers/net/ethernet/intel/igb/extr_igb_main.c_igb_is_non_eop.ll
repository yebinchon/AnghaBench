; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_is_non_eop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_is_non_eop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_ring = type { i32, i32 }
%union.e1000_adv_rx_desc = type { i32 }

@E1000_RXD_STAT_EOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_ring*, %union.e1000_adv_rx_desc*)* @igb_is_non_eop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_is_non_eop(%struct.igb_ring* %0, %union.e1000_adv_rx_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.igb_ring*, align 8
  %5 = alloca %union.e1000_adv_rx_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.igb_ring* %0, %struct.igb_ring** %4, align 8
  store %union.e1000_adv_rx_desc* %1, %union.e1000_adv_rx_desc** %5, align 8
  %7 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %8 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %13 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %23 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @IGB_RX_DESC(%struct.igb_ring* %24, i32 %25)
  %27 = call i32 @prefetch(i32 %26)
  %28 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %29 = load i32, i32* @E1000_RXD_STAT_EOP, align 4
  %30 = call i32 @igb_test_staterr(%union.e1000_adv_rx_desc* %28, i32 %29)
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %35

34:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @prefetch(i32) #1

declare dso_local i32 @IGB_RX_DESC(%struct.igb_ring*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @igb_test_staterr(%union.e1000_adv_rx_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
