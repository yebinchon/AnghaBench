; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_set_rx_promisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_set_rx_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@MVPP2_PRS_L2_UNI_CAST = common dso_local global i32 0, align 4
@MVPP2_PRS_L2_MULTI_CAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, i32)* @mvpp2_set_rx_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_set_rx_promisc(%struct.mvpp2_port* %0, i32 %1) #0 {
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %2
  %8 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %9 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %7
  %17 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %18 = call i32 @mvpp2_prs_vid_enable_filtering(%struct.mvpp2_port* %17)
  br label %22

19:                                               ; preds = %7, %2
  %20 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %21 = call i32 @mvpp2_prs_vid_disable_filtering(%struct.mvpp2_port* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %24 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %27 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MVPP2_PRS_L2_UNI_CAST, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @mvpp2_prs_mac_promisc_set(i32 %25, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %33 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %36 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MVPP2_PRS_L2_MULTI_CAST, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @mvpp2_prs_mac_promisc_set(i32 %34, i32 %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @mvpp2_prs_vid_enable_filtering(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_prs_vid_disable_filtering(%struct.mvpp2_port*) #1

declare dso_local i32 @mvpp2_prs_mac_promisc_set(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
