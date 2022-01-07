; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_ethtool.c_fjes_get_dump_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_ethtool.c_fjes_get_dump_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_dump = type { i32 }
%struct.fjes_adapter = type { %struct.fjes_hw }
%struct.fjes_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_dump*, i8*)* @fjes_get_dump_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fjes_get_dump_data(%struct.net_device* %0, %struct.ethtool_dump* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_dump*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fjes_adapter*, align 8
  %8 = alloca %struct.fjes_hw*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_dump* %1, %struct.ethtool_dump** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.fjes_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.fjes_adapter* %11, %struct.fjes_adapter** %7, align 8
  %12 = load %struct.fjes_adapter*, %struct.fjes_adapter** %7, align 8
  %13 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %12, i32 0, i32 0
  store %struct.fjes_hw* %13, %struct.fjes_hw** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.fjes_hw*, %struct.fjes_hw** %8, align 8
  %15 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.fjes_hw*, %struct.fjes_hw** %8, align 8
  %22 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.fjes_hw*, %struct.fjes_hw** %8, align 8
  %26 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @memcpy(i8* %20, i64 %24, i32 %28)
  br label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %19
  %34 = load i32, i32* %9, align 4
  ret i32 %34
}

declare dso_local %struct.fjes_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
