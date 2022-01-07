; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_iocpf_sm_fwcheck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_iocpf_sm_fwcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocpf = type { %struct.bfa_ioc* }
%struct.bfa_ioc = type { i32 }

@bfa_iocpf_sm_hwinit = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BFA_IOC_HWSEM_TOV = common dso_local global i32 0, align 4
@bfa_iocpf_sm_mismatch = common dso_local global i32 0, align 4
@bfa_iocpf_sm_fail = common dso_local global i32 0, align 4
@bfa_iocpf_sm_reset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocpf*, i32)* @bfa_iocpf_sm_fwcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_iocpf_sm_fwcheck(%struct.bfa_iocpf* %0, i32 %1) #0 {
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
  switch i32 %9, label %64 [
    i32 130, label %10
    i32 129, label %44
    i32 131, label %50
    i32 128, label %58
  ]

10:                                               ; preds = %2
  %11 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %12 = call i32 @bfa_ioc_firmware_lock(%struct.bfa_ioc* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %10
  %15 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %16 = call i32 @bfa_ioc_sync_start(%struct.bfa_ioc* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %20 = call i32 @bfa_ioc_sync_join(%struct.bfa_ioc* %19)
  %21 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %22 = load i32, i32* @bfa_iocpf_sm_hwinit, align 4
  %23 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %21, i32 %22)
  br label %36

24:                                               ; preds = %14
  %25 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %26 = call i32 @bfa_ioc_firmware_unlock(%struct.bfa_ioc* %25)
  %27 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %28 = call i32 @bfa_nw_ioc_hw_sem_release(%struct.bfa_ioc* %27)
  %29 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %30 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %29, i32 0, i32 0
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i32, i32* @BFA_IOC_HWSEM_TOV, align 4
  %33 = call i64 @msecs_to_jiffies(i32 %32)
  %34 = add nsw i64 %31, %33
  %35 = call i32 @mod_timer(i32* %30, i64 %34)
  br label %36

36:                                               ; preds = %24, %18
  br label %43

37:                                               ; preds = %10
  %38 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %39 = call i32 @bfa_nw_ioc_hw_sem_release(%struct.bfa_ioc* %38)
  %40 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %41 = load i32, i32* @bfa_iocpf_sm_mismatch, align 4
  %42 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %36
  br label %67

44:                                               ; preds = %2
  %45 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %46 = load i32, i32* @bfa_iocpf_sm_fail, align 4
  %47 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %45, i32 %46)
  %48 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %49 = call i32 @bfa_ioc_pf_hwfailed(%struct.bfa_ioc* %48)
  br label %67

50:                                               ; preds = %2
  %51 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %52 = call i32 @bfa_ioc_hw_sem_get_cancel(%struct.bfa_ioc* %51)
  %53 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %54 = load i32, i32* @bfa_iocpf_sm_reset, align 4
  %55 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %53, i32 %54)
  %56 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %57 = call i32 @bfa_ioc_pf_disabled(%struct.bfa_ioc* %56)
  br label %67

58:                                               ; preds = %2
  %59 = load %struct.bfa_ioc*, %struct.bfa_ioc** %5, align 8
  %60 = call i32 @bfa_ioc_hw_sem_get_cancel(%struct.bfa_ioc* %59)
  %61 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %3, align 8
  %62 = load i32, i32* @bfa_iocpf_sm_reset, align 4
  %63 = call i32 @bfa_fsm_set_state(%struct.bfa_iocpf* %61, i32 %62)
  br label %67

64:                                               ; preds = %2
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @bfa_sm_fault(i32 %65)
  br label %67

67:                                               ; preds = %64, %58, %50, %44, %43
  ret void
}

declare dso_local i32 @bfa_ioc_firmware_lock(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_sync_start(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_sync_join(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bfa_iocpf*, i32) #1

declare dso_local i32 @bfa_ioc_firmware_unlock(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_nw_ioc_hw_sem_release(%struct.bfa_ioc*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @bfa_ioc_pf_hwfailed(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_hw_sem_get_cancel(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_pf_disabled(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_sm_fault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
