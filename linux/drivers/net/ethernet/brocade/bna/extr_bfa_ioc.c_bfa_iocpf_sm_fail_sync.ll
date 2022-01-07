; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_iocpf_sm_fail_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_iocpf_sm_fail_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocpf = type { i32, %struct.bfa_ioc* }
%struct.bfa_ioc = type { i32 }

@BFI_IOC_FAIL = common dso_local global i32 0, align 4
@bfa_iocpf_sm_fail = common dso_local global i32 0, align 4
@bfa_iocpf_sm_hwinit = common dso_local global i32 0, align 4
@bfa_iocpf_sm_semwait = common dso_local global i32 0, align 4
@bfa_iocpf_sm_disabling_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocpf*, i32)* @bfa_iocpf_sm_fail_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocpf_sm_fail_sync(%struct.bfa_iocpf* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_iocpf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_ioc*, align 8
  store %struct.bfa_iocpf* %0, %struct.bfa_iocpf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_iocpf, %struct.bfa_iocpf* %6, i32 0, i32 1
  %8 = load %struct.bfa_ioc*, %struct.bfa_ioc** %7, align 8
  store %struct.bfa_ioc* %8, %struct.bfa_ioc** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %59 [
    i32 129, label %10
    i32 128, label %46
    i32 131, label %52
    i32 130, label %58
  ]

10:                                               ; preds = %2
  %11 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %12 = call i32 @bfa_ioc_sync_ack(%struct.bfa_ioc* %11)
  %13 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %14 = call i32 @bfa_ioc_notify_fail(%struct.bfa_ioc* %13)
  %15 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_iocpf, %struct.bfa_iocpf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %10
  %20 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %21 = call i32 @bfa_ioc_sync_leave(%struct.bfa_ioc* %20)
  %22 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %23 = load i32, i32* @BFI_IOC_FAIL, align 4
  %24 = call i32 @bfa_ioc_set_cur_ioc_fwstate(%struct.bfa_ioc* %22, i32 %23)
  %25 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %26 = call i32 @bfa_nw_ioc_hw_sem_release(%struct.bfa_ioc* %25)
  %27 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %28 = load i32, i32* @bfa_iocpf_sm_fail, align 4
  %29 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %27, i32 %28)
  br label %45

30:                                               ; preds = %10
  %31 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %32 = call i32 @bfa_ioc_sync_complete(%struct.bfa_ioc* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %36 = load i32, i32* @bfa_iocpf_sm_hwinit, align 4
  %37 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %35, i32 %36)
  br label %44

38:                                               ; preds = %30
  %39 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %40 = call i32 @bfa_nw_ioc_hw_sem_release(%struct.bfa_ioc* %39)
  %41 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %42 = load i32, i32* @bfa_iocpf_sm_semwait, align 4
  %43 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %34
  br label %45

45:                                               ; preds = %44, %19
  br label %62

46:                                               ; preds = %2
  %47 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %48 = load i32, i32* @bfa_iocpf_sm_fail, align 4
  %49 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %47, i32 %48)
  %50 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %51 = call i32 @bfa_ioc_pf_hwfailed(%struct.bfa_ioc* %50)
  br label %62

52:                                               ; preds = %2
  %53 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %54 = call i32 @bfa_ioc_hw_sem_get_cancel(%struct.bfa_ioc* %53)
  %55 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %56 = load i32, i32* @bfa_iocpf_sm_disabling_sync, align 4
  %57 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %55, i32 %56)
  br label %62

58:                                               ; preds = %2
  br label %62

59:                                               ; preds = %2
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @bfa_sm_fault(i32 %60)
  br label %62

62:                                               ; preds = %59, %58, %52, %46, %45
  ret void
}

declare dso_local i32 @bfa_ioc_sync_ack(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_notify_fail(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_sync_leave(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_set_cur_ioc_fwstate(%struct.bfa_ioc*, i32) #1

declare dso_local i32 @bfa_nw_ioc_hw_sem_release(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_iocpf*, i32) #1

declare dso_local i32 @bfa_ioc_sync_complete(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_pf_hwfailed(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_hw_sem_get_cancel(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
