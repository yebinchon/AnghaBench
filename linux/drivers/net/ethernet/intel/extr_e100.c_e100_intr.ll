; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nic = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@intr = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"stat_ack = 0x%02X\0A\00", align 1
@stat_ack_not_ours = common dso_local global i32 0, align 4
@stat_ack_not_present = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@stat_ack_rnr = common dso_local global i32 0, align 4
@RU_SUSPENDED = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @e100_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.nic*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.nic* @netdev_priv(%struct.net_device* %11)
  store %struct.nic* %12, %struct.nic** %7, align 8
  %13 = load %struct.nic*, %struct.nic** %7, align 8
  %14 = getelementptr inbounds %struct.nic, %struct.nic* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call i32 @ioread8(i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.nic*, %struct.nic** %7, align 8
  %20 = load i32, i32* @intr, align 4
  %21 = load i32, i32* @KERN_DEBUG, align 4
  %22 = load %struct.nic*, %struct.nic** %7, align 8
  %23 = getelementptr inbounds %struct.nic, %struct.nic* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @netif_printk(%struct.nic* %19, i32 %20, i32 %21, i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @stat_ack_not_ours, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @stat_ack_not_present, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %2
  %35 = load i32, i32* @IRQ_NONE, align 4
  store i32 %35, i32* %3, align 4
  br label %66

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.nic*, %struct.nic** %7, align 8
  %39 = getelementptr inbounds %struct.nic, %struct.nic* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @iowrite8(i32 %37, i32* %42)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @stat_ack_rnr, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load i32, i32* @RU_SUSPENDED, align 4
  %50 = load %struct.nic*, %struct.nic** %7, align 8
  %51 = getelementptr inbounds %struct.nic, %struct.nic* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %36
  %53 = load %struct.nic*, %struct.nic** %7, align 8
  %54 = getelementptr inbounds %struct.nic, %struct.nic* %53, i32 0, i32 0
  %55 = call i32 @napi_schedule_prep(i32* %54)
  %56 = call i64 @likely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.nic*, %struct.nic** %7, align 8
  %60 = call i32 @e100_disable_irq(%struct.nic* %59)
  %61 = load %struct.nic*, %struct.nic** %7, align 8
  %62 = getelementptr inbounds %struct.nic, %struct.nic* %61, i32 0, i32 0
  %63 = call i32 @__napi_schedule(i32* %62)
  br label %64

64:                                               ; preds = %58, %52
  %65 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %34
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ioread8(i32*) #1

declare dso_local i32 @netif_printk(%struct.nic*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @napi_schedule_prep(i32*) #1

declare dso_local i32 @e100_disable_irq(%struct.nic*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
