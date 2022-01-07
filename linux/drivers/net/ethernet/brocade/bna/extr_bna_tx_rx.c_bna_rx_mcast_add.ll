; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rx_mcast_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rx_mcast_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rx = type { %struct.TYPE_4__*, %struct.bna_rxf }
%struct.TYPE_4__ = type { %struct.bnad* }
%struct.bnad = type opaque
%struct.bna_rxf = type { void (%struct.bnad.0*, %struct.bna_rx.1*)*, %struct.bnad*, i32, %struct.TYPE_3__*, i32 }
%struct.bnad.0 = type opaque
%struct.bna_rx.1 = type opaque
%struct.TYPE_3__ = type { i32 }
%struct.bna_mac = type { i32, i32 }

@BNA_CB_SUCCESS = common dso_local global i32 0, align 4
@BNA_CB_MCAST_LIST_FULL = common dso_local global i32 0, align 4
@RXF_E_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bna_rx_mcast_add(%struct.bna_rx* %0, i32* %1, void (%struct.bnad*, %struct.bna_rx*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bna_rx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca void (%struct.bnad*, %struct.bna_rx*)*, align 8
  %8 = alloca %struct.bna_rxf*, align 8
  %9 = alloca %struct.bna_mac*, align 8
  store %struct.bna_rx* %0, %struct.bna_rx** %5, align 8
  store i32* %1, i32** %6, align 8
  store void (%struct.bnad*, %struct.bna_rx*)* %2, void (%struct.bnad*, %struct.bna_rx*)** %7, align 8
  %10 = load %struct.bna_rx*, %struct.bna_rx** %5, align 8
  %11 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %10, i32 0, i32 1
  store %struct.bna_rxf* %11, %struct.bna_rxf** %8, align 8
  %12 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %13 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %12, i32 0, i32 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i64 @bna_mac_find(i32* %13, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %19 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %18, i32 0, i32 2
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @bna_mac_find(i32* %19, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %17, %3
  %24 = load void (%struct.bnad*, %struct.bna_rx*)*, void (%struct.bnad*, %struct.bna_rx*)** %7, align 8
  %25 = icmp ne void (%struct.bnad*, %struct.bna_rx*)* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load void (%struct.bnad*, %struct.bna_rx*)*, void (%struct.bnad*, %struct.bna_rx*)** %7, align 8
  %28 = load %struct.bna_rx*, %struct.bna_rx** %5, align 8
  %29 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.bnad*, %struct.bnad** %31, align 8
  %33 = load %struct.bna_rx*, %struct.bna_rx** %5, align 8
  call void %27(%struct.bnad* %32, %struct.bna_rx* %33)
  br label %34

34:                                               ; preds = %26, %23
  %35 = load i32, i32* @BNA_CB_SUCCESS, align 4
  store i32 %35, i32* %4, align 4
  br label %74

36:                                               ; preds = %17
  %37 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %38 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %37, i32 0, i32 3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bna_mcam_mod_free_q(i32 %41)
  %43 = call %struct.bna_mac* @bna_cam_mod_mac_get(i32 %42)
  store %struct.bna_mac* %43, %struct.bna_mac** %9, align 8
  %44 = load %struct.bna_mac*, %struct.bna_mac** %9, align 8
  %45 = icmp eq %struct.bna_mac* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @BNA_CB_MCAST_LIST_FULL, align 4
  store i32 %47, i32* %4, align 4
  br label %74

48:                                               ; preds = %36
  %49 = load %struct.bna_mac*, %struct.bna_mac** %9, align 8
  %50 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @ether_addr_copy(i32 %51, i32* %52)
  %54 = load %struct.bna_mac*, %struct.bna_mac** %9, align 8
  %55 = getelementptr inbounds %struct.bna_mac, %struct.bna_mac* %54, i32 0, i32 0
  %56 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %57 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %56, i32 0, i32 2
  %58 = call i32 @list_add_tail(i32* %55, i32* %57)
  %59 = load void (%struct.bnad*, %struct.bna_rx*)*, void (%struct.bnad*, %struct.bna_rx*)** %7, align 8
  %60 = bitcast void (%struct.bnad*, %struct.bna_rx*)* %59 to void (%struct.bnad.0*, %struct.bna_rx.1*)*
  %61 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %62 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %61, i32 0, i32 0
  store void (%struct.bnad.0*, %struct.bna_rx.1*)* %60, void (%struct.bnad.0*, %struct.bna_rx.1*)** %62, align 8
  %63 = load %struct.bna_rx*, %struct.bna_rx** %5, align 8
  %64 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.bnad*, %struct.bnad** %66, align 8
  %68 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %69 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %68, i32 0, i32 1
  store %struct.bnad* %67, %struct.bnad** %69, align 8
  %70 = load %struct.bna_rxf*, %struct.bna_rxf** %8, align 8
  %71 = load i32, i32* @RXF_E_CONFIG, align 4
  %72 = call i32 @bfa_fsm_send_event(%struct.bna_rxf* %70, i32 %71)
  %73 = load i32, i32* @BNA_CB_SUCCESS, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %48, %46, %34
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i64 @bna_mac_find(i32*, i32*) #1

declare dso_local %struct.bna_mac* @bna_cam_mod_mac_get(i32) #1

declare dso_local i32 @bna_mcam_mod_free_q(i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bna_rxf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
