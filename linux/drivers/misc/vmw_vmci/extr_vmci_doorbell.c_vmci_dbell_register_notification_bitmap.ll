; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_doorbell.c_vmci_dbell_register_notification_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_doorbell.c_vmci_dbell_register_notification_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_notify_bm_set_msg = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@VMCI_HYPERVISOR_CONTEXT_ID = common dso_local global i32 0, align 4
@VMCI_SET_NOTIFY_BITMAP = common dso_local global i32 0, align 4
@VMCI_ANON_SRC_HANDLE = common dso_local global i32 0, align 4
@VMCI_DG_HEADERSIZE = common dso_local global i64 0, align 8
@VMCI_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Failed to register (PPN=%llu) as notification bitmap (error=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_dbell_register_notification_bitmap(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmci_notify_bm_set_msg, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i32, i32* @VMCI_HYPERVISOR_CONTEXT_ID, align 4
  %7 = load i32, i32* @VMCI_SET_NOTIFY_BITMAP, align 4
  %8 = call i32 @vmci_make_handle(i32 %6, i32 %7)
  %9 = getelementptr inbounds %struct.vmci_notify_bm_set_msg, %struct.vmci_notify_bm_set_msg* %5, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @VMCI_ANON_SRC_HANDLE, align 4
  %12 = getelementptr inbounds %struct.vmci_notify_bm_set_msg, %struct.vmci_notify_bm_set_msg* %5, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  %14 = load i64, i64* @VMCI_DG_HEADERSIZE, align 8
  %15 = sub i64 32, %14
  %16 = getelementptr inbounds %struct.vmci_notify_bm_set_msg, %struct.vmci_notify_bm_set_msg* %5, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = call i64 (...) @vmci_use_ppn64()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds %struct.vmci_notify_bm_set_msg, %struct.vmci_notify_bm_set_msg* %5, i32 0, i32 2
  store i64 %21, i64* %22, align 8
  br label %26

23:                                               ; preds = %1
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.vmci_notify_bm_set_msg, %struct.vmci_notify_bm_set_msg* %5, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  br label %26

26:                                               ; preds = %23, %20
  %27 = getelementptr inbounds %struct.vmci_notify_bm_set_msg, %struct.vmci_notify_bm_set_msg* %5, i32 0, i32 0
  %28 = call i32 @vmci_send_datagram(%struct.TYPE_2__* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @VMCI_SUCCESS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, i64* %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @pr_devel(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %33, i32 %34)
  store i32 0, i32* %2, align 4
  br label %37

36:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @vmci_make_handle(i32, i32) #1

declare dso_local i64 @vmci_use_ppn64(...) #1

declare dso_local i32 @vmci_send_datagram(%struct.TYPE_2__*) #1

declare dso_local i32 @pr_devel(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
