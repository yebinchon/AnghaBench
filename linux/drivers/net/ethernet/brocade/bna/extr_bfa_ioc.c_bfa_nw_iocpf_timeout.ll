; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_nw_iocpf_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_nw_iocpf_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@iocpf_sm_table = common dso_local global i32 0, align 4
@BFA_IOCPF_HWINIT = common dso_local global i32 0, align 4
@IOCPF_E_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_nw_iocpf_timeout(%struct.bfa_ioc* %0) #0 {
  %2 = alloca %struct.bfa_ioc*, align 8
  %3 = alloca i32, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %2, align 8
  %4 = load i32, i32* @iocpf_sm_table, align 4
  %5 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %6 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @bfa_sm_to_state(i32 %4, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @BFA_IOCPF_HWINIT, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %15 = call i32 @bfa_ioc_poll_fwinit(%struct.bfa_ioc* %14)
  br label %21

16:                                               ; preds = %1
  %17 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %18 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %17, i32 0, i32 0
  %19 = load i32, i32* @IOCPF_E_TIMEOUT, align 4
  %20 = call i32 @bfa_fsm_send_event(%struct.TYPE_2__* %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @bfa_sm_to_state(i32, i32) #1

declare dso_local i32 @bfa_ioc_poll_fwinit(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
