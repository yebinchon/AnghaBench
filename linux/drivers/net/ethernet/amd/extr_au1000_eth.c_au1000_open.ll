; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32, i32 }
%struct.au1000_private = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"open: dev=%p\0A\00", align 1
@au1000_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unable to get IRQ %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"error in au1000_init\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"open: Initialization done.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @au1000_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1000_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.au1000_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.au1000_private* @netdev_priv(%struct.net_device* %6)
  store %struct.au1000_private* %7, %struct.au1000_private** %5, align 8
  %8 = load %struct.au1000_private*, %struct.au1000_private** %5, align 8
  %9 = load i32, i32* @drv, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i32 (%struct.au1000_private*, i32, %struct.net_device*, i8*, ...) @netif_dbg(%struct.au1000_private* %8, i32 %9, %struct.net_device* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.net_device* %11)
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @au1000_interrupt, align 4
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @request_irq(i32 %15, i32 %16, i32 0, i32 %19, %struct.net_device* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %62

31:                                               ; preds = %1
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = call i32 @au1000_init(%struct.net_device* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @free_irq(i32 %41, %struct.net_device* %42)
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %62

45:                                               ; preds = %31
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @phy_start(i64 %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i32 @netif_start_queue(%struct.net_device* %56)
  %58 = load %struct.au1000_private*, %struct.au1000_private** %5, align 8
  %59 = load i32, i32* @drv, align 4
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = call i32 (%struct.au1000_private*, i32, %struct.net_device*, i8*, ...) @netif_dbg(%struct.au1000_private* %58, i32 %59, %struct.net_device* %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %55, %36, %24
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.au1000_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_dbg(%struct.au1000_private*, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @au1000_init(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @phy_start(i64) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
