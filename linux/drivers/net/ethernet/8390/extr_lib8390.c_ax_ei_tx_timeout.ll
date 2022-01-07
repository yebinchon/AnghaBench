; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_lib8390.c_ax_ei_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_lib8390.c_ax_ei_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ei_device = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@EN0_TSR = common dso_local global i64 0, align 8
@EN0_ISR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Tx timed out, %s TSR=%#2x, ISR=%#2x, t=%d\0A\00", align 1
@ENTSR_ABT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"excess collisions.\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"lost interrupt?\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"cable problem?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @__ei_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ei_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ei_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.ei_device* @netdev_priv(%struct.net_device* %12)
  store %struct.ei_device* %13, %struct.ei_device** %4, align 8
  %14 = load i32, i32* @jiffies, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @dev_trans_start(%struct.net_device* %15)
  %17 = sub nsw i32 %14, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %24 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %23, i32 0, i32 1
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load i64, i64* %3, align 8
  %28 = load i64, i64* @EN0_TSR, align 8
  %29 = add i64 %27, %28
  %30 = call i32 @ei_inb(i64 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @EN0_ISR, align 8
  %33 = add i64 %31, %32
  %34 = call i32 @ei_inb(i64 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %36 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %35, i32 0, i32 1
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @ENTSR_ABT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %1
  br label %50

45:                                               ; preds = %1
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)
  br label %50

50:                                               ; preds = %45, %44
  %51 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %44 ], [ %49, %45 ]
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @netdev_dbg(%struct.net_device* %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %50
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %58
  %65 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %66 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = xor i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64, %58, %50
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @disable_irq_nosync_lockdep(i32 %72)
  %74 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %75 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %74, i32 0, i32 1
  %76 = call i32 @spin_lock(i32* %75)
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = call i32 @ei_reset_8390(%struct.net_device* %77)
  %79 = load %struct.net_device*, %struct.net_device** %2, align 8
  %80 = call i32 @__NS8390_init(%struct.net_device* %79, i32 1)
  %81 = load %struct.ei_device*, %struct.ei_device** %4, align 8
  %82 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %81, i32 0, i32 1
  %83 = call i32 @spin_unlock(i32* %82)
  %84 = load %struct.net_device*, %struct.net_device** %2, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @enable_irq_lockdep(i32 %86)
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = call i32 @netif_wake_queue(%struct.net_device* %88)
  ret void
}

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_trans_start(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ei_inb(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @disable_irq_nosync_lockdep(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ei_reset_8390(%struct.net_device*) #1

declare dso_local i32 @__NS8390_init(%struct.net_device*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @enable_irq_lockdep(i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
