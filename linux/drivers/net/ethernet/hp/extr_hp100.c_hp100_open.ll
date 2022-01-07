; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.hp100_private = type { i64, i32, i32, i32, i32 }

@hp100_interrupt = common dso_local global i32 0, align 4
@HP100_BUS_PCI = common dso_local global i64 0, align 8
@HP100_BUS_EISA = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"hp100: %s: unable to get IRQ %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@HP100_MAC1MODE3 = common dso_local global i32 0, align 4
@HP100_MAC2MODE3 = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hp100_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp100_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hp100_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.hp100_private* @netdev_priv(%struct.net_device* %5)
  store %struct.hp100_private* %6, %struct.hp100_private** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @hp100_interrupt, align 4
  %11 = load %struct.hp100_private*, %struct.hp100_private** %4, align 8
  %12 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HP100_BUS_PCI, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.hp100_private*, %struct.hp100_private** %4, align 8
  %18 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HP100_BUS_EISA, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16, %1
  %23 = load i32, i32* @IRQF_SHARED, align 4
  br label %25

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i64 @request_irq(i32 %9, i32 %10, i32 %26, i32 %29, %struct.net_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39)
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %67

43:                                               ; preds = %25
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 @netif_trans_update(%struct.net_device* %44)
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @netif_start_queue(%struct.net_device* %46)
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = call i32 @hp100_sense_lan(%struct.net_device* %48)
  %50 = load %struct.hp100_private*, %struct.hp100_private** %4, align 8
  %51 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @HP100_MAC1MODE3, align 4
  %53 = load %struct.hp100_private*, %struct.hp100_private** %4, align 8
  %54 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @HP100_MAC2MODE3, align 4
  %56 = load %struct.hp100_private*, %struct.hp100_private** %4, align 8
  %57 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.hp100_private*, %struct.hp100_private** %4, align 8
  %59 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %58, i32 0, i32 1
  %60 = call i32 @memset(i32* %59, i32 0, i32 8)
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = call i32 @hp100_stop_interface(%struct.net_device* %61)
  %63 = load %struct.net_device*, %struct.net_device** %3, align 8
  %64 = call i32 @hp100_hwinit(%struct.net_device* %63)
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = call i32 @hp100_start_interface(%struct.net_device* %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %43, %33
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.hp100_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @hp100_sense_lan(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @hp100_stop_interface(%struct.net_device*) #1

declare dso_local i32 @hp100_hwinit(%struct.net_device*) #1

declare dso_local i32 @hp100_start_interface(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
