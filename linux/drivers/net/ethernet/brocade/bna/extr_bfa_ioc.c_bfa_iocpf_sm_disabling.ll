; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_iocpf_sm_disabling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_iocpf_sm_disabling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocpf = type { %struct.bfa_ioc* }
%struct.bfa_ioc = type { i32 }

@bfa_iocpf_sm_disabling_sync = common dso_local global i32 0, align 4
@BFI_IOC_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocpf*, i32)* @bfa_iocpf_sm_disabling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocpf_sm_disabling(%struct.bfa_iocpf* %0, i32 %1) #0 {
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
  switch i32 %9, label %29 [
    i32 130, label %10
    i32 131, label %17
    i32 128, label %21
    i32 129, label %28
  ]

10:                                               ; preds = %2
  %11 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %12 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %11, i32 0, i32 0
  %13 = call i32 @del_timer(i32* %12)
  %14 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %15 = load i32, i32* @bfa_iocpf_sm_disabling_sync, align 4
  %16 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %14, i32 %15)
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %19 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %18, i32 0, i32 0
  %20 = call i32 @del_timer(i32* %19)
  br label %21

21:                                               ; preds = %2, %17
  %22 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %23 = load i32, i32* @BFI_IOC_FAIL, align 4
  %24 = call i32 @bfa_ioc_set_cur_ioc_fwstate(%struct.bfa_ioc* %22, i32 %23)
  %25 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %26 = load i32, i32* @bfa_iocpf_sm_disabling_sync, align 4
  %27 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %25, i32 %26)
  br label %32

28:                                               ; preds = %2
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @bfa_sm_fault(i32 %30)
  br label %32

32:                                               ; preds = %29, %28, %21, %10
  ret void
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_iocpf*, i32) #1

declare dso_local i32 @bfa_ioc_set_cur_ioc_fwstate(%struct.bfa_ioc*, i32) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
