; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_set_reset_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_set_reset_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xcan_priv = type { i32 (%struct.xcan_priv*, i32)*, i64, i64, i32 (%struct.xcan_priv*, i32, i32)* }

@XCAN_SRR_OFFSET = common dso_local global i32 0, align 4
@XCAN_SRR_RESET_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@XCAN_TIMEOUT = common dso_local global i64 0, align 8
@XCAN_SR_OFFSET = common dso_local global i32 0, align 4
@XCAN_SR_CONFIG_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"timed out for config mode\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @set_reset_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_reset_mode(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.xcan_priv*, align 8
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.xcan_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.xcan_priv* %7, %struct.xcan_priv** %4, align 8
  %8 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %9 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %8, i32 0, i32 3
  %10 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %9, align 8
  %11 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %12 = load i32, i32* @XCAN_SRR_OFFSET, align 4
  %13 = load i32, i32* @XCAN_SRR_RESET_MASK, align 4
  %14 = call i32 %10(%struct.xcan_priv* %11, i32 %12, i32 %13)
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* @XCAN_TIMEOUT, align 8
  %17 = add i64 %15, %16
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %39, %1
  %19 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %20 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %19, i32 0, i32 0
  %21 = load i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32)** %20, align 8
  %22 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %23 = load i32, i32* @XCAN_SR_OFFSET, align 4
  %24 = call i32 %21(%struct.xcan_priv* %22, i32 %23)
  %25 = load i32, i32* @XCAN_SR_CONFIG_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %41

29:                                               ; preds = %18
  %30 = load i64, i64* @jiffies, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @time_after(i64 %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @netdev_warn(%struct.net_device* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ETIMEDOUT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %46

39:                                               ; preds = %29
  %40 = call i32 @usleep_range(i32 500, i32 10000)
  br label %18

41:                                               ; preds = %18
  %42 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %43 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %45 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %41, %34
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.xcan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
