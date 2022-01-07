; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_ethport_sm_down_resp_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_ethport_sm_down_resp_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_ethport = type { i32 }

@bna_ethport_sm_last_resp_wait = common dso_local global i32 0, align 4
@bna_ethport_sm_stopped = common dso_local global i32 0, align 4
@bna_ethport_sm_up_resp_wait = common dso_local global i32 0, align 4
@bna_ethport_sm_down = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_ethport*, i32)* @bna_ethport_sm_down_resp_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_ethport_sm_down_resp_wait(%struct.bna_ethport* %0, i32 %1) #0 {
  %3 = alloca %struct.bna_ethport*, align 8
  %4 = alloca i32, align 4
  store %struct.bna_ethport* %0, %struct.bna_ethport** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %25 [
    i32 129, label %6
    i32 133, label %10
    i32 128, label %14
    i32 130, label %18
    i32 131, label %21
    i32 132, label %21
  ]

6:                                                ; preds = %2
  %7 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %8 = load i32, i32* @bna_ethport_sm_last_resp_wait, align 4
  %9 = call i32 @bfa_fsm_set_state(%struct.bna_ethport* %7, i32 %8)
  br label %28

10:                                               ; preds = %2
  %11 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %12 = load i32, i32* @bna_ethport_sm_stopped, align 4
  %13 = call i32 @bfa_fsm_set_state(%struct.bna_ethport* %11, i32 %12)
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %16 = load i32, i32* @bna_ethport_sm_up_resp_wait, align 4
  %17 = call i32 @bfa_fsm_set_state(%struct.bna_ethport* %15, i32 %16)
  br label %28

18:                                               ; preds = %2
  %19 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %20 = call i32 @bna_bfi_ethport_down(%struct.bna_ethport* %19)
  br label %28

21:                                               ; preds = %2, %2
  %22 = load %struct.bna_ethport*, %struct.bna_ethport** %3, align 8
  %23 = load i32, i32* @bna_ethport_sm_down, align 4
  %24 = call i32 @bfa_fsm_set_state(%struct.bna_ethport* %22, i32 %23)
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @bfa_sm_fault(i32 %26)
  br label %28

28:                                               ; preds = %25, %21, %18, %14, %10, %6
  ret void
}

declare dso_local i32 @bfa_fsm_set_state(%struct.bna_ethport*, i32) #1

declare dso_local i32 @bna_bfi_ethport_down(%struct.bna_ethport*) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
