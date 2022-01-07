; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_guest.c_vmci_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/vmw_vmci/extr_vmci_guest.c_vmci_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmci_guest_device = type { i32, i32, i32, i64, i64 }

@VMCI_ICR_ADDR = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@VMCI_ICR_DATAGRAM = common dso_local global i32 0, align 4
@VMCI_ICR_NOTIFICATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Ignoring unknown interrupt cause (%d)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vmci_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmci_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.vmci_guest_device*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.vmci_guest_device*
  store %struct.vmci_guest_device* %9, %struct.vmci_guest_device** %6, align 8
  %10 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %6, align 8
  %11 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %6, align 8
  %16 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %15, i32 0, i32 2
  %17 = call i32 @tasklet_schedule(i32* %16)
  br label %68

18:                                               ; preds = %2
  %19 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %6, align 8
  %20 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VMCI_ICR_ADDR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @ioread32(i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %18
  %31 = load i32, i32* @IRQ_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %70

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @VMCI_ICR_DATAGRAM, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %6, align 8
  %39 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %38, i32 0, i32 2
  %40 = call i32 @tasklet_schedule(i32* %39)
  %41 = load i32, i32* @VMCI_ICR_DATAGRAM, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %37, %32
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @VMCI_ICR_NOTIFICATION, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %6, align 8
  %52 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %51, i32 0, i32 1
  %53 = call i32 @tasklet_schedule(i32* %52)
  %54 = load i32, i32* @VMCI_ICR_NOTIFICATION, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %50, %45
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.vmci_guest_device*, %struct.vmci_guest_device** %6, align 8
  %63 = getelementptr inbounds %struct.vmci_guest_device, %struct.vmci_guest_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @dev_warn(i32 %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %61, %58
  br label %68

68:                                               ; preds = %67, %14
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %30
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
