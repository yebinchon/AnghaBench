; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_ethtool.c_fjes_set_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_ethtool.c_fjes_set_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_dump = type { i64 }
%struct.fjes_adapter = type { %struct.fjes_hw }
%struct.fjes_hw = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_dump*)* @fjes_set_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fjes_set_dump(%struct.net_device* %0, %struct.ethtool_dump* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_dump*, align 8
  %6 = alloca %struct.fjes_adapter*, align 8
  %7 = alloca %struct.fjes_hw*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_dump* %1, %struct.ethtool_dump** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.fjes_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.fjes_adapter* %10, %struct.fjes_adapter** %6, align 8
  %11 = load %struct.fjes_adapter*, %struct.fjes_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %11, i32 0, i32 0
  store %struct.fjes_hw* %12, %struct.fjes_hw** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %14 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %2
  %18 = load %struct.fjes_hw*, %struct.fjes_hw** %7, align 8
  %19 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EPERM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %68

25:                                               ; preds = %17
  %26 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.fjes_hw*, %struct.fjes_hw** %7, align 8
  %30 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.fjes_hw*, %struct.fjes_hw** %7, align 8
  %32 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.fjes_hw*, %struct.fjes_hw** %7, align 8
  %36 = call i32 @fjes_hw_start_debug(%struct.fjes_hw* %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.fjes_hw*, %struct.fjes_hw** %7, align 8
  %38 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %25
  %44 = load %struct.fjes_hw*, %struct.fjes_hw** %7, align 8
  %45 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %25
  br label %66

47:                                               ; preds = %2
  %48 = load %struct.fjes_hw*, %struct.fjes_hw** %7, align 8
  %49 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @EPERM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %68

55:                                               ; preds = %47
  %56 = load %struct.fjes_hw*, %struct.fjes_hw** %7, align 8
  %57 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @mutex_lock(i32* %58)
  %60 = load %struct.fjes_hw*, %struct.fjes_hw** %7, align 8
  %61 = call i32 @fjes_hw_stop_debug(%struct.fjes_hw* %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.fjes_hw*, %struct.fjes_hw** %7, align 8
  %63 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  br label %66

66:                                               ; preds = %55, %46
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %52, %22
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.fjes_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fjes_hw_start_debug(%struct.fjes_hw*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fjes_hw_stop_debug(%struct.fjes_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
