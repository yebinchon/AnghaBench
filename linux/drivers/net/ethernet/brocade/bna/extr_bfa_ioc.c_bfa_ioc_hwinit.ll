; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_hwinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_hwinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { i32 }

@BFI_IOC_UNINIT = common dso_local global i32 0, align 4
@BFI_FWBOOT_ENV_OS = common dso_local global i32 0, align 4
@BFI_FWBOOT_TYPE_NORMAL = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i64 0, align 8
@BFI_IOC_INITING = common dso_local global i32 0, align 4
@BFI_IOC_DISABLED = common dso_local global i32 0, align 4
@BFI_IOC_OP = common dso_local global i32 0, align 4
@IOCPF_E_FWREADY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc*, i32)* @bfa_ioc_hwinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_hwinit(%struct.bfa_ioc* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_ioc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %9 = call i32 @bfa_ioc_get_cur_ioc_fwstate(%struct.bfa_ioc* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @BFI_IOC_UNINIT, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* @BFI_FWBOOT_ENV_OS, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @BFI_IOC_UNINIT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %24

20:                                               ; preds = %14
  %21 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @bfa_ioc_fwver_valid(%struct.bfa_ioc* %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %19
  %25 = phi i32 [ 0, %19 ], [ %23, %20 ]
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %30 = load i32, i32* @BFI_FWBOOT_TYPE_NORMAL, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i64 @bfa_ioc_boot(%struct.bfa_ioc* %29, i32 %30, i32 %31)
  %33 = load i64, i64* @BFA_STATUS_OK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %37 = call i32 @bfa_ioc_poll_fwinit(%struct.bfa_ioc* %36)
  br label %38

38:                                               ; preds = %35, %28
  br label %71

39:                                               ; preds = %24
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @BFI_IOC_INITING, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %45 = call i32 @bfa_ioc_poll_fwinit(%struct.bfa_ioc* %44)
  br label %71

46:                                               ; preds = %39
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @BFI_IOC_DISABLED, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @BFI_IOC_OP, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50, %46
  %55 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %56 = call i32 @bfa_ioc_msgflush(%struct.bfa_ioc* %55)
  %57 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %58 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %57, i32 0, i32 0
  %59 = load i32, i32* @IOCPF_E_FWREADY, align 4
  %60 = call i32 @bfa_fsm_send_event(i32* %58, i32 %59)
  br label %71

61:                                               ; preds = %50
  %62 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %63 = load i32, i32* @BFI_FWBOOT_TYPE_NORMAL, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @bfa_ioc_boot(%struct.bfa_ioc* %62, i32 %63, i32 %64)
  %66 = load i64, i64* @BFA_STATUS_OK, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %70 = call i32 @bfa_ioc_poll_fwinit(%struct.bfa_ioc* %69)
  br label %71

71:                                               ; preds = %38, %43, %54, %68, %61
  ret void
}

declare dso_local i32 @bfa_ioc_get_cur_ioc_fwstate(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_fwver_valid(%struct.bfa_ioc*, i32) #1

declare dso_local i64 @bfa_ioc_boot(%struct.bfa_ioc*, i32, i32) #1

declare dso_local i32 @bfa_ioc_poll_fwinit(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_msgflush(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_fsm_send_event(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
