; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_iocpf_sm_initfail_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_iocpf_sm_initfail_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocpf = type { %struct.bfa_ioc* }
%struct.bfa_ioc = type { i32 }

@BFI_IOC_FAIL = common dso_local global i32 0, align 4
@bfa_iocpf_sm_initfail = common dso_local global i32 0, align 4
@bfa_iocpf_sm_fail = common dso_local global i32 0, align 4
@bfa_iocpf_sm_disabling_sync = common dso_local global i32 0, align 4
@bfa_iocpf_sm_reset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocpf*, i32)* @bfa_iocpf_sm_initfail_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocpf_sm_initfail_sync(%struct.bfa_iocpf* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_iocpf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_ioc*, align 8
  store %struct.bfa_iocpf* %0, %struct.bfa_iocpf** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_iocpf, %struct.bfa_iocpf* %6, i32 0, i32 0
  %8 = load %struct.bfa_ioc*, %struct.bfa_ioc** %7, align 8
  store %struct.bfa_ioc* %8, %struct.bfa_ioc** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %44 [
    i32 130, label %10
    i32 129, label %23
    i32 132, label %29
    i32 128, label %35
    i32 131, label %43
  ]

10:                                               ; preds = %2
  %11 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %12 = call i32 @bfa_ioc_notify_fail(%struct.bfa_ioc* %11)
  %13 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %14 = call i32 @bfa_ioc_sync_leave(%struct.bfa_ioc* %13)
  %15 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %16 = load i32, i32* @BFI_IOC_FAIL, align 4
  %17 = call i32 @bfa_ioc_set_cur_ioc_fwstate(%struct.bfa_ioc* %15, i32 %16)
  %18 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %19 = call i32 @bfa_nw_ioc_hw_sem_release(%struct.bfa_ioc* %18)
  %20 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %21 = load i32, i32* @bfa_iocpf_sm_initfail, align 4
  %22 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %20, i32 %21)
  br label %47

23:                                               ; preds = %2
  %24 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %25 = load i32, i32* @bfa_iocpf_sm_fail, align 4
  %26 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %24, i32 %25)
  %27 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %28 = call i32 @bfa_ioc_pf_hwfailed(%struct.bfa_ioc* %27)
  br label %47

29:                                               ; preds = %2
  %30 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %31 = call i32 @bfa_ioc_hw_sem_get_cancel(%struct.bfa_ioc* %30)
  %32 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %33 = load i32, i32* @bfa_iocpf_sm_disabling_sync, align 4
  %34 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %32, i32 %33)
  br label %47

35:                                               ; preds = %2
  %36 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %37 = call i32 @bfa_ioc_hw_sem_get_cancel(%struct.bfa_ioc* %36)
  %38 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %39 = call i32 @bfa_ioc_firmware_unlock(%struct.bfa_ioc* %38)
  %40 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %41 = load i32, i32* @bfa_iocpf_sm_reset, align 4
  %42 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %40, i32 %41)
  br label %47

43:                                               ; preds = %2
  br label %47

44:                                               ; preds = %2
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @bfa_sm_fault(i32 %45)
  br label %47

47:                                               ; preds = %44, %43, %35, %29, %23, %10
  ret void
}

declare dso_local i32 @bfa_ioc_notify_fail(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_sync_leave(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_set_cur_ioc_fwstate(%struct.bfa_ioc*, i32) #1

declare dso_local i32 @bfa_nw_ioc_hw_sem_release(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_iocpf*, i32) #1

declare dso_local i32 @bfa_ioc_pf_hwfailed(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_hw_sem_get_cancel(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_firmware_unlock(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
