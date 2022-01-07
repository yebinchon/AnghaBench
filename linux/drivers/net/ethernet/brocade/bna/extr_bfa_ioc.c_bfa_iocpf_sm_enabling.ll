; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_iocpf_sm_enabling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_iocpf_sm_enabling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocpf = type { %struct.bfa_ioc* }
%struct.bfa_ioc = type { i32 }

@bfa_iocpf_sm_ready = common dso_local global i32 0, align 4
@bfa_iocpf_sm_initfail_sync = common dso_local global i32 0, align 4
@bfa_iocpf_sm_disabling = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocpf*, i32)* @bfa_iocpf_sm_enabling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocpf_sm_enabling(%struct.bfa_iocpf* %0, i32 %1) #0 {
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
    i32 129, label %19
    i32 128, label %23
    i32 131, label %35
  ]

10:                                               ; preds = %2
  %11 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %12 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %11, i32 0, i32 0
  %13 = call i32 @del_timer(i32* %12)
  %14 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %15 = call i32 @bfa_nw_ioc_hw_sem_release(%struct.bfa_ioc* %14)
  %16 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %17 = load i32, i32* @bfa_iocpf_sm_ready, align 4
  %18 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %16, i32 %17)
  br label %47

19:                                               ; preds = %2
  %20 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %21 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %20, i32 0, i32 0
  %22 = call i32 @del_timer(i32* %21)
  br label %23

23:                                               ; preds = %2, %19
  %24 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %25 = call i32 @bfa_nw_ioc_hw_sem_release(%struct.bfa_ioc* %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 128
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %30 = call i32 @bfa_ioc_pf_failed(%struct.bfa_ioc* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %33 = load i32, i32* @bfa_iocpf_sm_initfail_sync, align 4
  %34 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %32, i32 %33)
  br label %47

35:                                               ; preds = %2
  %36 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %37 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %36, i32 0, i32 0
  %38 = call i32 @del_timer(i32* %37)
  %39 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %40 = call i32 @bfa_nw_ioc_hw_sem_release(%struct.bfa_ioc* %39)
  %41 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %42 = load i32, i32* @bfa_iocpf_sm_disabling, align 4
  %43 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %41, i32 %42)
  br label %47

44:                                               ; preds = %2
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @bfa_sm_fault(i32 %45)
  br label %47

47:                                               ; preds = %44, %35, %31, %10
  ret void
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @bfa_nw_ioc_hw_sem_release(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_iocpf*, i32) #1

declare dso_local i32 @bfa_ioc_pf_failed(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
