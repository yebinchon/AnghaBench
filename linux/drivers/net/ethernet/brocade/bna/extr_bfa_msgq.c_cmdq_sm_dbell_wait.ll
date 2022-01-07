; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_msgq.c_cmdq_sm_dbell_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_msgq.c_cmdq_sm_dbell_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_msgq_cmdq = type { i32 }

@BFA_MSGQ_CMDQ_F_DB_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_msgq_cmdq*, i32)* @cmdq_sm_dbell_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdq_sm_dbell_wait(%struct.bfa_msgq_cmdq* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_msgq_cmdq*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_msgq_cmdq* %0, %struct.bfa_msgq_cmdq** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %35 [
    i32 128, label %6
    i32 130, label %6
    i32 129, label %9
    i32 131, label %15
  ]

6:                                                ; preds = %2, %2
  %7 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %8 = call i32 @bfa_fsm_set_state(%struct.bfa_msgq_cmdq* %7, void (%struct.bfa_msgq_cmdq*, i32)* @cmdq_sm_stopped)
  br label %38

9:                                                ; preds = %2
  %10 = load i32, i32* @BFA_MSGQ_CMDQ_F_DB_UPDATE, align 4
  %11 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %12 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %17 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BFA_MSGQ_CMDQ_F_DB_UPDATE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = load i32, i32* @BFA_MSGQ_CMDQ_F_DB_UPDATE, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %26 = getelementptr inbounds %struct.bfa_msgq_cmdq, %struct.bfa_msgq_cmdq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %30 = call i32 @bfa_fsm_set_state(%struct.bfa_msgq_cmdq* %29, void (%struct.bfa_msgq_cmdq*, i32)* @cmdq_sm_dbell_wait)
  br label %34

31:                                               ; preds = %15
  %32 = load %struct.bfa_msgq_cmdq*, %struct.bfa_msgq_cmdq** %3, align 8
  %33 = call i32 @bfa_fsm_set_state(%struct.bfa_msgq_cmdq* %32, void (%struct.bfa_msgq_cmdq*, i32)* @cmdq_sm_ready)
  br label %34

34:                                               ; preds = %31, %22
  br label %38

35:                                               ; preds = %2
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @bfa_sm_fault(i32 %36)
  br label %38

38:                                               ; preds = %35, %34, %9, %6
  ret void
}

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_msgq_cmdq*, void (%struct.bfa_msgq_cmdq*, i32)*) #1

declare dso_local void @cmdq_sm_stopped(%struct.bfa_msgq_cmdq*, i32) #1

declare dso_local void @cmdq_sm_ready(%struct.bfa_msgq_cmdq*, i32) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
