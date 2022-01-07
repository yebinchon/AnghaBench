; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_enet_sm_pause_init_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_enet_sm_pause_init_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_enet = type { i32 }

@BNA_ENET_F_PAUSE_CHANGED = common dso_local global i32 0, align 4
@bna_enet_sm_last_resp_wait = common dso_local global i32 0, align 4
@bna_enet_sm_stopped = common dso_local global i32 0, align 4
@bna_enet_sm_started = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_enet*, i32)* @bna_enet_sm_pause_init_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_enet_sm_pause_init_wait(%struct.bna_enet* %0, i32 %1) #0 {
  %3 = alloca %struct.bna_enet*, align 8
  %4 = alloca i32, align 4
  store %struct.bna_enet* %0, %struct.bna_enet** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %56 [
    i32 128, label %6
    i32 132, label %16
    i32 129, label %26
    i32 130, label %32
    i32 131, label %33
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @BNA_ENET_F_PAUSE_CHANGED, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %10 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %14 = load i32, i32* @bna_enet_sm_last_resp_wait, align 4
  %15 = call i32 @bfa_fsm_set_state(%struct.bna_enet* %13, i32 %14)
  br label %59

16:                                               ; preds = %2
  %17 = load i32, i32* @BNA_ENET_F_PAUSE_CHANGED, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %20 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %24 = load i32, i32* @bna_enet_sm_stopped, align 4
  %25 = call i32 @bfa_fsm_set_state(%struct.bna_enet* %23, i32 %24)
  br label %59

26:                                               ; preds = %2
  %27 = load i32, i32* @BNA_ENET_F_PAUSE_CHANGED, align 4
  %28 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %29 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %59

32:                                               ; preds = %2
  br label %59

33:                                               ; preds = %2
  %34 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %35 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BNA_ENET_F_PAUSE_CHANGED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load i32, i32* @BNA_ENET_F_PAUSE_CHANGED, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %44 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %48 = call i32 @bna_bfi_pause_set(%struct.bna_enet* %47)
  br label %55

49:                                               ; preds = %33
  %50 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %51 = load i32, i32* @bna_enet_sm_started, align 4
  %52 = call i32 @bfa_fsm_set_state(%struct.bna_enet* %50, i32 %51)
  %53 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %54 = call i32 @bna_enet_chld_start(%struct.bna_enet* %53)
  br label %55

55:                                               ; preds = %49, %40
  br label %59

56:                                               ; preds = %2
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @bfa_sm_fault(i32 %57)
  br label %59

59:                                               ; preds = %56, %55, %32, %26, %16, %6
  ret void
}

declare dso_local i32 @bfa_fsm_set_state(%struct.bna_enet*, i32) #1

declare dso_local i32 @bna_bfi_pause_set(%struct.bna_enet*) #1

declare dso_local i32 @bna_enet_chld_start(%struct.bna_enet*) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
