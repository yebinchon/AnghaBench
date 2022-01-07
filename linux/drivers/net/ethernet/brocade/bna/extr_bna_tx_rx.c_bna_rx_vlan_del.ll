; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rx_vlan_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rx_vlan_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rx = type { %struct.bna_rxf }
%struct.bna_rxf = type { i32*, i64, i32 }

@BFI_VLAN_WORD_SHIFT = common dso_local global i32 0, align 4
@BFI_VLAN_WORD_MASK = common dso_local global i32 0, align 4
@BFI_VLAN_BLOCK_SHIFT = common dso_local global i32 0, align 4
@BNA_STATUS_T_ENABLED = common dso_local global i64 0, align 8
@RXF_E_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_rx_vlan_del(%struct.bna_rx* %0, i32 %1) #0 {
  %3 = alloca %struct.bna_rx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bna_rxf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bna_rx* %0, %struct.bna_rx** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.bna_rx*, %struct.bna_rx** %3, align 8
  %10 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %9, i32 0, i32 0
  store %struct.bna_rxf* %10, %struct.bna_rxf** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @BFI_VLAN_WORD_SHIFT, align 4
  %13 = ashr i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @BFI_VLAN_WORD_MASK, align 4
  %16 = and i32 %14, %15
  %17 = call i32 @BIT(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @BFI_VLAN_BLOCK_SHIFT, align 4
  %20 = ashr i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %24 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %22
  store i32 %30, i32* %28, align 4
  %31 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %32 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BNA_STATUS_T_ENABLED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %2
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %40 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %44 = load i32, i32* @RXF_E_CONFIG, align 4
  %45 = call i32 @bfa_fsm_send_event(%struct.bna_rxf* %43, i32 %44)
  br label %46

46:                                               ; preds = %36, %2
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bna_rxf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
