; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_guest.c_vmci_send_datagram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_guest.c_vmci_send_datagram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vmci_datagram = type { i32 }

@VMCI_ERROR_INVALID_ARGS = common dso_local global i32 0, align 4
@vmci_dev_spinlock = common dso_local global i32 0, align 4
@vmci_dev_g = common dso_local global %struct.TYPE_2__* null, align 8
@VMCI_DATA_OUT_ADDR = common dso_local global i64 0, align 8
@VMCI_RESULT_LOW_ADDR = common dso_local global i64 0, align 8
@VMCI_ERROR_UNAVAILABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmci_send_datagram(%struct.vmci_datagram* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmci_datagram*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.vmci_datagram* %0, %struct.vmci_datagram** %3, align 8
  %6 = load %struct.vmci_datagram*, %struct.vmci_datagram** %3, align 8
  %7 = icmp eq %struct.vmci_datagram* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @VMCI_ERROR_INVALID_ARGS, align 4
  store i32 %9, i32* %2, align 4
  br label %37

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* @vmci_dev_spinlock, i64 %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vmci_dev_g, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vmci_dev_g, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VMCI_DATA_OUT_ADDR, align 8
  %20 = add nsw i64 %18, %19
  %21 = load %struct.vmci_datagram*, %struct.vmci_datagram** %3, align 8
  %22 = load %struct.vmci_datagram*, %struct.vmci_datagram** %3, align 8
  %23 = call i32 @VMCI_DG_SIZE(%struct.vmci_datagram* %22)
  %24 = call i32 @iowrite8_rep(i64 %20, %struct.vmci_datagram* %21, i32 %23)
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vmci_dev_g, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VMCI_RESULT_LOW_ADDR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @ioread32(i64 %29)
  store i32 %30, i32* %5, align 4
  br label %33

31:                                               ; preds = %10
  %32 = load i32, i32* @VMCI_ERROR_UNAVAILABLE, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %15
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* @vmci_dev_spinlock, i64 %34)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %33, %8
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iowrite8_rep(i64, %struct.vmci_datagram*, i32) #1

declare dso_local i32 @VMCI_DG_SIZE(%struct.vmci_datagram*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
