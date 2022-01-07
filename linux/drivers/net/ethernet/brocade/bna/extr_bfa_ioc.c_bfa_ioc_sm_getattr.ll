; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_sm_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_sm_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@bfa_ioc_sm_op = common dso_local global i32 0, align 4
@BFA_STATUS_IOC_FAILURE = common dso_local global i32 0, align 4
@bfa_ioc_sm_fail = common dso_local global i32 0, align 4
@bfa_ioc_sm_disabling = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc*, i32)* @bfa_ioc_sm_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_sm_getattr(%struct.bfa_ioc* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_ioc*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %45 [
    i32 131, label %6
    i32 129, label %13
    i32 130, label %13
    i32 128, label %17
    i32 133, label %37
    i32 132, label %44
  ]

6:                                                ; preds = %2
  %7 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %7, i32 0, i32 0
  %9 = call i32 @del_timer(i32* %8)
  %10 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %11 = load i32, i32* @bfa_ioc_sm_op, align 4
  %12 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc* %10, i32 %11)
  br label %48

13:                                               ; preds = %2, %2
  %14 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %15 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %14, i32 0, i32 0
  %16 = call i32 @del_timer(i32* %15)
  br label %17

17:                                               ; preds = %2, %13
  %18 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %19 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (i32, i32)*, i32 (i32, i32)** %21, align 8
  %23 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %24 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BFA_STATUS_IOC_FAILURE, align 4
  %27 = call i32 %22(i32 %25, i32 %26)
  %28 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %29 = load i32, i32* @bfa_ioc_sm_fail, align 4
  %30 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc* %28, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 129
  br i1 %32, label %33, label %36

33:                                               ; preds = %17
  %34 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %35 = call i32 @bfa_iocpf_getattrfail(%struct.bfa_ioc* %34)
  br label %36

36:                                               ; preds = %33, %17
  br label %48

37:                                               ; preds = %2
  %38 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %39 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %38, i32 0, i32 0
  %40 = call i32 @del_timer(i32* %39)
  %41 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %42 = load i32, i32* @bfa_ioc_sm_disabling, align 4
  %43 = call i32 @bfa_fsm_set_state(%struct.bfa_ioc* %41, i32 %42)
  br label %48

44:                                               ; preds = %2
  br label %48

45:                                               ; preds = %2
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @bfa_sm_fault(i32 %46)
  br label %48

48:                                               ; preds = %45, %44, %37, %36, %6
  ret void
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_ioc*, i32) #1

declare dso_local i32 @bfa_iocpf_getattrfail(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
