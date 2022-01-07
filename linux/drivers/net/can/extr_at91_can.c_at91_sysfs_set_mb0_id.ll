; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_sysfs_set_mb0_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_sysfs_set_mb0_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.net_device = type { i32 }
%struct.at91_priv = type { i64 }

@IFF_UP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i64 0, align 8
@CAN_EFF_MASK = common dso_local global i64 0, align 8
@CAN_SFF_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @at91_sysfs_set_mb0_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_sysfs_set_mb0_id(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.at91_priv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.net_device* @to_net_dev(%struct.device* %14)
  store %struct.net_device* %15, %struct.net_device** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %9, align 8
  %17 = call %struct.at91_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.at91_priv* %17, %struct.at91_priv** %10, align 8
  %18 = call i32 (...) @rtnl_lock()
  %19 = load %struct.net_device*, %struct.net_device** %9, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IFF_UP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %12, align 4
  br label %56

28:                                               ; preds = %4
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @kstrtoul(i8* %29, i32 0, i64* %11)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %12, align 4
  br label %56

35:                                               ; preds = %28
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @CAN_EFF_FLAG, align 8
  %38 = and i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i64, i64* @CAN_EFF_MASK, align 8
  %42 = load i64, i64* @CAN_EFF_FLAG, align 8
  %43 = or i64 %41, %42
  %44 = load i64, i64* %11, align 8
  %45 = and i64 %44, %43
  store i64 %45, i64* %11, align 8
  br label %50

46:                                               ; preds = %35
  %47 = load i64, i64* @CAN_SFF_MASK, align 8
  %48 = load i64, i64* %11, align 8
  %49 = and i64 %48, %47
  store i64 %49, i64* %11, align 8
  br label %50

50:                                               ; preds = %46, %40
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.at91_priv*, %struct.at91_priv** %10, align 8
  %53 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %8, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %50, %33, %25
  %57 = call i32 (...) @rtnl_unlock()
  %58 = load i32, i32* %12, align 4
  ret i32 %58
}

declare dso_local %struct.net_device* @to_net_dev(%struct.device*) #1

declare dso_local %struct.at91_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
