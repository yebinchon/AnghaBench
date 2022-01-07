; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_mac_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_mac_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.hip04_priv = type { i32, i32, i32, i64 }

@PPE_INTSTS = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@DEF_INT_MASK = common dso_local global i32 0, align 4
@PPE_RINT = common dso_local global i64 0, align 8
@DEF_INT_ERR = common dso_local global i32 0, align 4
@RCV_NOBUF = common dso_local global i32 0, align 4
@RCV_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"rx drop\0A\00", align 1
@TX_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"tx drop\0A\00", align 1
@RCV_INT = common dso_local global i32 0, align 4
@PPE_INTEN = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hip04_mac_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hip04_mac_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.hip04_priv*, align 8
  %8 = alloca %struct.net_device_stats*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.hip04_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.hip04_priv* %13, %struct.hip04_priv** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  store %struct.net_device_stats* %15, %struct.net_device_stats** %8, align 8
  %16 = load %struct.hip04_priv*, %struct.hip04_priv** %7, align 8
  %17 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PPE_INTSTS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl_relaxed(i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %105

26:                                               ; preds = %2
  %27 = load i32, i32* @DEF_INT_MASK, align 4
  %28 = load %struct.hip04_priv*, %struct.hip04_priv** %7, align 8
  %29 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PPE_RINT, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel_relaxed(i32 %27, i64 %32)
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @DEF_INT_ERR, align 4
  %36 = and i32 %34, %35
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %26
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @RCV_NOBUF, align 4
  %42 = load i32, i32* @RCV_DROP, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %39
  %47 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %48 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %52 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.net_device*, %struct.net_device** %6, align 8
  %56 = call i32 @netdev_err(%struct.net_device* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %46, %39
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @TX_DROP, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %64 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = call i32 @netdev_err(%struct.net_device* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %62, %57
  br label %70

70:                                               ; preds = %69, %26
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @RCV_INT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %103

75:                                               ; preds = %70
  %76 = load %struct.hip04_priv*, %struct.hip04_priv** %7, align 8
  %77 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %76, i32 0, i32 1
  %78 = call i64 @napi_schedule_prep(i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %75
  %81 = load i32, i32* @RCV_INT, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.hip04_priv*, %struct.hip04_priv** %7, align 8
  %84 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load i32, i32* @DEF_INT_MASK, align 4
  %88 = load i32, i32* @RCV_INT, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  %91 = load %struct.hip04_priv*, %struct.hip04_priv** %7, align 8
  %92 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @PPE_INTEN, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @writel_relaxed(i32 %90, i64 %95)
  %97 = load %struct.hip04_priv*, %struct.hip04_priv** %7, align 8
  %98 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %97, i32 0, i32 2
  %99 = call i32 @hrtimer_cancel(i32* %98)
  %100 = load %struct.hip04_priv*, %struct.hip04_priv** %7, align 8
  %101 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %100, i32 0, i32 1
  %102 = call i32 @__napi_schedule(i32* %101)
  br label %103

103:                                              ; preds = %80, %75, %70
  %104 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %24
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.hip04_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
