; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_poll_fwinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_poll_fwinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BFI_IOC_DISABLED = common dso_local global i64 0, align 8
@IOCPF_E_FWREADY = common dso_local global i32 0, align 4
@BFA_IOC_TOV = common dso_local global i64 0, align 8
@IOCPF_E_TIMEOUT = common dso_local global i32 0, align 4
@BFA_IOC_POLL_TOV = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc*)* @bfa_ioc_poll_fwinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_poll_fwinit(%struct.bfa_ioc* %0) #0 {
  %2 = alloca %struct.bfa_ioc*, align 8
  %3 = alloca i64, align 8
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %2, align 8
  %4 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %5 = call i64 @bfa_ioc_get_cur_ioc_fwstate(%struct.bfa_ioc* %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @BFI_IOC_DISABLED, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %11 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %10, i32 0, i32 1
  %12 = load i32, i32* @IOCPF_E_FWREADY, align 4
  %13 = call i32 @bfa_fsm_send_event(%struct.TYPE_2__* %11, i32 %12)
  br label %40

14:                                               ; preds = %1
  %15 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %16 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BFA_IOC_TOV, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %23 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %22, i32 0, i32 1
  %24 = load i32, i32* @IOCPF_E_TIMEOUT, align 4
  %25 = call i32 @bfa_fsm_send_event(%struct.TYPE_2__* %23, i32 %24)
  br label %40

26:                                               ; preds = %14
  %27 = load i64, i64* @BFA_IOC_POLL_TOV, align 8
  %28 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %29 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %27
  store i64 %32, i64* %30, align 8
  %33 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %34 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %33, i32 0, i32 0
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i64, i64* @BFA_IOC_POLL_TOV, align 8
  %37 = call i64 @msecs_to_jiffies(i64 %36)
  %38 = add nsw i64 %35, %37
  %39 = call i32 @mod_timer(i32* %34, i64 %38)
  br label %40

40:                                               ; preds = %9, %26, %21
  ret void
}

declare dso_local i64 @bfa_ioc_get_cur_ioc_fwstate(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
