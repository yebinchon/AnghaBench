; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_axnet_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_axnet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.axnet_dev = type { i32, i32, %struct.pcmcia_device* }
%struct.pcmcia_device = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"axnet_open('%s')\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EN0_ISR = common dso_local global i64 0, align 8
@ei_irq_wrapper = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"axnet_cs\00", align 1
@ei_watchdog = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @axnet_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axnet_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.axnet_dev*, align 8
  %6 = alloca %struct.pcmcia_device*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.axnet_dev* @PRIV(%struct.net_device* %8)
  store %struct.axnet_dev* %9, %struct.axnet_dev** %5, align 8
  %10 = load %struct.axnet_dev*, %struct.axnet_dev** %5, align 8
  %11 = getelementptr inbounds %struct.axnet_dev, %struct.axnet_dev* %10, i32 0, i32 2
  %12 = load %struct.pcmcia_device*, %struct.pcmcia_device** %11, align 8
  store %struct.pcmcia_device* %12, %struct.pcmcia_device** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %17 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %16, i32 0, i32 1
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_dbg(i32* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %23 = call i32 @pcmcia_dev_present(%struct.pcmcia_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %64

28:                                               ; preds = %1
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = load i64, i64* @EN0_ISR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @outb_p(i32 255, i64 %32)
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ei_irq_wrapper, align 4
  %38 = load i32, i32* @IRQF_SHARED, align 4
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = call i32 @request_irq(i32 %36, i32 %37, i32 %38, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.net_device* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %64

45:                                               ; preds = %28
  %46 = load %struct.pcmcia_device*, %struct.pcmcia_device** %6, align 8
  %47 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.axnet_dev*, %struct.axnet_dev** %5, align 8
  %51 = getelementptr inbounds %struct.axnet_dev, %struct.axnet_dev* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.axnet_dev*, %struct.axnet_dev** %5, align 8
  %53 = getelementptr inbounds %struct.axnet_dev, %struct.axnet_dev* %52, i32 0, i32 1
  %54 = load i32, i32* @ei_watchdog, align 4
  %55 = call i32 @timer_setup(i32* %53, i32 %54, i32 0)
  %56 = load %struct.axnet_dev*, %struct.axnet_dev** %5, align 8
  %57 = getelementptr inbounds %struct.axnet_dev, %struct.axnet_dev* %56, i32 0, i32 1
  %58 = load i64, i64* @jiffies, align 8
  %59 = load i64, i64* @HZ, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @mod_timer(i32* %57, i64 %60)
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = call i32 @ax_open(%struct.net_device* %62)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %45, %43, %25
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.axnet_dev* @PRIV(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @pcmcia_dev_present(%struct.pcmcia_device*) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.net_device*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @ax_open(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
