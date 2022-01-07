; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_ethport_cb_rx_stopped.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_ethport_cb_rx_stopped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_ethport = type { i64, i32 }

@BNA_ETHPORT_F_RX_STARTED = common dso_local global i32 0, align 4
@ETHPORT_E_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_ethport_cb_rx_stopped(%struct.bna_ethport* %0) #0 {
  %2 = alloca %struct.bna_ethport*, align 8
  %3 = alloca i32, align 4
  store %struct.bna_ethport* %0, %struct.bna_ethport** %2, align 8
  %4 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %5 = call i32 @ethport_is_up(%struct.bna_ethport* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %7 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, -1
  store i64 %9, i64* %7, align 8
  %10 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %11 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load i32, i32* @BNA_ETHPORT_F_RX_STARTED, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %18 = getelementptr inbounds %struct.bna_ethport, %struct.bna_ethport* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = load %struct.bna_ethport*, %struct.bna_ethport** %2, align 8
  %25 = load i32, i32* @ETHPORT_E_DOWN, align 4
  %26 = call i32 @bfa_fsm_send_event(%struct.bna_ethport* %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %14
  br label %28

28:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @ethport_is_up(%struct.bna_ethport*) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bna_ethport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
