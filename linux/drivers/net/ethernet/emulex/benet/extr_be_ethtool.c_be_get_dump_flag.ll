; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_get_dump_flag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_get_dump_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_dump = type { i32, i32, i32 }
%struct.be_adapter = type { i32 }

@MAX_PRIVILEGES = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_dump*)* @be_get_dump_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_get_dump_flag(%struct.net_device* %0, %struct.ethtool_dump* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_dump*, align 8
  %6 = alloca %struct.be_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_dump* %1, %struct.ethtool_dump** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.be_adapter* %8, %struct.be_adapter** %6, align 8
  %9 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %10 = load i32, i32* @MAX_PRIVILEGES, align 4
  %11 = call i32 @check_privilege(%struct.be_adapter* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %18 = call i32 @be_get_dump_len(%struct.be_adapter* %17)
  %19 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %16, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @check_privilege(%struct.be_adapter*, i32) #1

declare dso_local i32 @be_get_dump_len(%struct.be_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
