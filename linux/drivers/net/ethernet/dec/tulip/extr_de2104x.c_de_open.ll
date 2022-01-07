; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.de_private = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"enabling interface\0A\00", align 1
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"ring allocation failure, err=%d\0A\00", align 1
@IntrMask = common dso_local global i32 0, align 4
@de_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"IRQ %d request failure, err=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"h/w init failure, err=%d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@DE_TIMER_NO_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @de_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.de_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.de_private* @netdev_priv(%struct.net_device* %7)
  store %struct.de_private* %8, %struct.de_private** %4, align 8
  %9 = load %struct.de_private*, %struct.de_private** %4, align 8
  %10 = getelementptr inbounds %struct.de_private, %struct.de_private* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.de_private*, %struct.de_private** %4, align 8
  %15 = load i32, i32* @ifup, align 4
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i32 @netif_dbg(%struct.de_private* %14, i32 %15, %struct.net_device* %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %20, 1500
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @PKT_BUF_SZ, align 4
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 32
  br label %29

29:                                               ; preds = %24, %22
  %30 = phi i32 [ %23, %22 ], [ %28, %24 ]
  %31 = load %struct.de_private*, %struct.de_private** %4, align 8
  %32 = getelementptr inbounds %struct.de_private, %struct.de_private* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.de_private*, %struct.de_private** %4, align 8
  %34 = call i32 @de_alloc_rings(%struct.de_private* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %86

42:                                               ; preds = %29
  %43 = load i32, i32* @IntrMask, align 4
  %44 = call i32 @dw32(i32 %43, i32 0)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @de_interrupt, align 4
  %47 = load i32, i32* @IRQF_SHARED, align 4
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = call i32 @request_irq(i32 %45, i32 %46, i32 %47, i32 %50, %struct.net_device* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %42
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %57, i32 %58)
  br label %82

60:                                               ; preds = %42
  %61 = load %struct.de_private*, %struct.de_private** %4, align 8
  %62 = call i32 @de_init_hw(%struct.de_private* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_err(%struct.net_device* %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %78

69:                                               ; preds = %60
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = call i32 @netif_start_queue(%struct.net_device* %70)
  %72 = load %struct.de_private*, %struct.de_private** %4, align 8
  %73 = getelementptr inbounds %struct.de_private, %struct.de_private* %72, i32 0, i32 1
  %74 = load i64, i64* @jiffies, align 8
  %75 = load i64, i64* @DE_TIMER_NO_LINK, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @mod_timer(i32* %73, i64 %76)
  store i32 0, i32* %2, align 4
  br label %86

78:                                               ; preds = %65
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = call i32 @free_irq(i32 %79, %struct.net_device* %80)
  br label %82

82:                                               ; preds = %78, %55
  %83 = load %struct.de_private*, %struct.de_private** %4, align 8
  %84 = call i32 @de_free_rings(%struct.de_private* %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %69, %37
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.de_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_dbg(%struct.de_private*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @de_alloc_rings(%struct.de_private*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @dw32(i32, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @de_init_hw(%struct.de_private*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @de_free_rings(%struct.de_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
