; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ne2k-pci.c_ne2k_pci_reset_8390.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ne2k-pci.c_ne2k_pci_reset_8390.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.net_device = type { i32 }
%struct.ei_device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"resetting the 8390 t=%ld...\0A\00", align 1
@NE_BASE = common dso_local global i64 0, align 8
@NE_RESET = common dso_local global i64 0, align 8
@ei_status = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EN0_ISR = common dso_local global i64 0, align 8
@ENISR_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"ne2k_pci_reset_8390() did not complete.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ne2k_pci_reset_8390 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ne2k_pci_reset_8390(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ei_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load i64, i64* @jiffies, align 8
  store i64 %5, i64* %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ei_device* @netdev_priv(%struct.net_device* %6)
  store %struct.ei_device* %7, %struct.ei_device** %4, align 8
  %8 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %9 = load i32, i32* @hw, align 4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = load i64, i64* @jiffies, align 8
  %12 = call i32 @netif_dbg(%struct.ei_device* %8, i32 %9, %struct.net_device* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i64, i64* @NE_BASE, align 8
  %14 = load i64, i64* @NE_RESET, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @inb(i64 %15)
  %17 = load i64, i64* @NE_BASE, align 8
  %18 = load i64, i64* @NE_RESET, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @outb(i32 %16, i64 %19)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ei_status, i32 0, i32 0), align 8
  br label %21

21:                                               ; preds = %37, %1
  %22 = load i64, i64* @NE_BASE, align 8
  %23 = load i64, i64* @EN0_ISR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @inb(i64 %24)
  %26 = load i32, i32* @ENISR_RESET, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* %3, align 8
  %32 = sub i64 %30, %31
  %33 = icmp ugt i64 %32, 2
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = call i32 @netdev_err(%struct.net_device* %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %38

37:                                               ; preds = %29
  br label %21

38:                                               ; preds = %34, %21
  %39 = load i32, i32* @ENISR_RESET, align 4
  %40 = load i64, i64* @NE_BASE, align 8
  %41 = load i64, i64* @EN0_ISR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outb(i32 %39, i64 %42)
  ret void
}

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_dbg(%struct.ei_device*, i32, %struct.net_device*, i8*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
