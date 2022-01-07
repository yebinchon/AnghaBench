; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_enet_sm_cfg_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_enet_sm_cfg_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_enet = type { i32 }

@BNA_ENET_F_PAUSE_CHANGED = common dso_local global i32 0, align 4
@BNA_ENET_F_MTU_CHANGED = common dso_local global i32 0, align 4
@bna_enet_sm_cfg_stop_wait = common dso_local global i32 0, align 4
@bna_enet_sm_stopped = common dso_local global i32 0, align 4
@bna_enet_sm_started = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_enet*, i32)* @bna_enet_sm_cfg_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_enet_sm_cfg_wait(%struct.bna_enet* %0, i32 %1) #0 {
  %3 = alloca %struct.bna_enet*, align 8
  %4 = alloca i32, align 4
  store %struct.bna_enet* %0, %struct.bna_enet** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %93 [
    i32 128, label %6
    i32 132, label %22
    i32 129, label %40
    i32 130, label %46
    i32 133, label %52
    i32 131, label %55
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @BNA_ENET_F_PAUSE_CHANGED, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %10 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @BNA_ENET_F_MTU_CHANGED, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %16 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %20 = load i32, i32* @bna_enet_sm_cfg_stop_wait, align 4
  %21 = call i32 @bfa_fsm_set_state(%struct.bna_enet* %19, i32 %20)
  br label %96

22:                                               ; preds = %2
  %23 = load i32, i32* @BNA_ENET_F_PAUSE_CHANGED, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %26 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @BNA_ENET_F_MTU_CHANGED, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %32 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %36 = load i32, i32* @bna_enet_sm_stopped, align 4
  %37 = call i32 @bfa_fsm_set_state(%struct.bna_enet* %35, i32 %36)
  %38 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %39 = call i32 @bna_enet_chld_fail(%struct.bna_enet* %38)
  br label %96

40:                                               ; preds = %2
  %41 = load i32, i32* @BNA_ENET_F_PAUSE_CHANGED, align 4
  %42 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %43 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %96

46:                                               ; preds = %2
  %47 = load i32, i32* @BNA_ENET_F_MTU_CHANGED, align 4
  %48 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %49 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %96

52:                                               ; preds = %2
  %53 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %54 = call i32 @bna_enet_rx_start(%struct.bna_enet* %53)
  br label %55

55:                                               ; preds = %2, %52
  %56 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %57 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @BNA_ENET_F_PAUSE_CHANGED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load i32, i32* @BNA_ENET_F_PAUSE_CHANGED, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %66 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %70 = call i32 @bna_bfi_pause_set(%struct.bna_enet* %69)
  br label %92

71:                                               ; preds = %55
  %72 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %73 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @BNA_ENET_F_MTU_CHANGED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %71
  %79 = load i32, i32* @BNA_ENET_F_MTU_CHANGED, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %82 = getelementptr inbounds %struct.bna_enet, %struct.bna_enet* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %86 = call i32 @bna_enet_rx_stop(%struct.bna_enet* %85)
  br label %91

87:                                               ; preds = %71
  %88 = load %struct.bna_enet*, %struct.bna_enet** %3, align 8
  %89 = load i32, i32* @bna_enet_sm_started, align 4
  %90 = call i32 @bfa_fsm_set_state(%struct.bna_enet* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %78
  br label %92

92:                                               ; preds = %91, %62
  br label %96

93:                                               ; preds = %2
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @bfa_sm_fault(i32 %94)
  br label %96

96:                                               ; preds = %93, %92, %46, %40, %22, %6
  ret void
}

declare dso_local i32 @bfa_fsm_set_state(%struct.bna_enet*, i32) #1

declare dso_local i32 @bna_enet_chld_fail(%struct.bna_enet*) #1

declare dso_local i32 @bna_enet_rx_start(%struct.bna_enet*) #1

declare dso_local i32 @bna_bfi_pause_set(%struct.bna_enet*) #1

declare dso_local i32 @bna_enet_rx_stop(%struct.bna_enet*) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
