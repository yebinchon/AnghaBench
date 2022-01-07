; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_enet_mtu_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_enet_mtu_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_enet = type { i32, void (%struct.bnad*)* }
%struct.bnad = type opaque
%struct.bnad.0 = type opaque

@ENET_E_MTU_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_enet_mtu_set(%struct.bna_enet* %0, i32 %1, void (%struct.bnad.0*)* %2) #0 {
  %4 = alloca %struct.bna_enet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca void (%struct.bnad.0*)*, align 8
  store %struct.bna_enet* %0, %struct.bna_enet** %4, align 8
  store i32 %1, i32* %5, align 4
  store void (%struct.bnad.0*)* %2, void (%struct.bnad.0*)** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.bna_enet*, %struct.bna_enet** %4, align 8
  %9 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load void (%struct.bnad.0*)*, void (%struct.bnad.0*)** %6, align 8
  %11 = bitcast void (%struct.bnad.0*)* %10 to void (%struct.bnad*)*
  %12 = load %struct.bna_enet*, %struct.bna_enet** %4, align 8
  %13 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %12, i32 0, i32 1
  store void (%struct.bnad*)* %11, void (%struct.bnad*)** %13, align 8
  %14 = load %struct.bna_enet*, %struct.bna_enet** %4, align 8
  %15 = load i32, i32* @ENET_E_MTU_CFG, align 4
  %16 = call i32 @bfa_fsm_send_event(%struct.bna_enet* %14, i32 %15)
  ret void
}

declare dso_local i32 @bfa_fsm_send_event(%struct.bna_enet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
