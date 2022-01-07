; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rxf_sm_cfg_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rxf_sm_cfg_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i32 }

@bna_rxf_sm_last_resp_wait = common dso_local global i32 0, align 4
@bna_rxf_sm_stopped = common dso_local global i32 0, align 4
@bna_rxf_sm_started = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rxf*, i32)* @bna_rxf_sm_cfg_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_rxf_sm_cfg_wait(%struct.bna_rxf* %0, i32 %1) #0 {
  %3 = alloca %struct.bna_rxf*, align 8
  %4 = alloca i32, align 4
  store %struct.bna_rxf* %0, %struct.bna_rxf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %30 [
    i32 128, label %6
    i32 130, label %10
    i32 131, label %20
    i32 129, label %21
  ]

6:                                                ; preds = %2
  %7 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %8 = load i32, i32* @bna_rxf_sm_last_resp_wait, align 4
  %9 = call i32 @bfa_fsm_set_state(%struct.bna_rxf* %7, i32 %8)
  br label %33

10:                                               ; preds = %2
  %11 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %12 = call i32 @bna_rxf_cfg_reset(%struct.bna_rxf* %11)
  %13 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %14 = call i32 @call_rxf_start_cbfn(%struct.bna_rxf* %13)
  %15 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %16 = call i32 @call_rxf_cam_fltr_cbfn(%struct.bna_rxf* %15)
  %17 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %18 = load i32, i32* @bna_rxf_sm_stopped, align 4
  %19 = call i32 @bfa_fsm_set_state(%struct.bna_rxf* %17, i32 %18)
  br label %33

20:                                               ; preds = %2
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %23 = call i32 @bna_rxf_cfg_apply(%struct.bna_rxf* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load %struct.bna_rxf*, %struct.bna_rxf** %3, align 8
  %27 = load i32, i32* @bna_rxf_sm_started, align 4
  %28 = call i32 @bfa_fsm_set_state(%struct.bna_rxf* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @bfa_sm_fault(i32 %31)
  br label %33

33:                                               ; preds = %30, %29, %20, %10, %6
  ret void
}

declare dso_local i32 @bfa_fsm_set_state(%struct.bna_rxf*, i32) #1

declare dso_local i32 @bna_rxf_cfg_reset(%struct.bna_rxf*) #1

declare dso_local i32 @call_rxf_start_cbfn(%struct.bna_rxf*) #1

declare dso_local i32 @call_rxf_cam_fltr_cbfn(%struct.bna_rxf*) #1

declare dso_local i32 @bna_rxf_cfg_apply(%struct.bna_rxf*) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
