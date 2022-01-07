; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i64 }
%struct.sky2_port = type { i32, i64, i32 }

@RX_MAX_PENDING = common dso_local global i32 0, align 4
@TX_MIN_PENDING = common dso_local global i64 0, align 8
@TX_MAX_PENDING = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @sky2_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.sky2_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %7)
  store %struct.sky2_port* %8, %struct.sky2_port** %6, align 8
  %9 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @RX_MAX_PENDING, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %31, label %14

14:                                               ; preds = %2
  %15 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TX_MIN_PENDING, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TX_MAX_PENDING, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %19, %14, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %55

34:                                               ; preds = %25
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = call i32 @sky2_detach(%struct.net_device* %35)
  %37 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %41 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %46 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %48 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @roundup_ring_size(i64 %49)
  %51 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %52 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = call i32 @sky2_reattach(%struct.net_device* %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %34, %31
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sky2_detach(%struct.net_device*) #1

declare dso_local i32 @roundup_ring_size(i64) #1

declare dso_local i32 @sky2_reattach(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
