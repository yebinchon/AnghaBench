; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_validate_ip4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_validate_ip4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_rx_flow_spec = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.ethtool_usrip4_spec }
%struct.ethtool_usrip4_spec = type { i64, i64, i64, i64, i64 }

@ETH_RX_NFC_IP4 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethtool_rx_flow_spec*)* @validate_ip4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_ip4(%struct.ethtool_rx_flow_spec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %4 = alloca %struct.ethtool_usrip4_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.ethtool_rx_flow_spec* %0, %struct.ethtool_rx_flow_spec** %3, align 8
  %6 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %3, align 8
  %7 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.ethtool_usrip4_spec* %8, %struct.ethtool_usrip4_spec** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %1
  %14 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %3, align 8
  %20 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ETH_RX_NFC_IP4, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %18, %13, %1
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %56

29:                                               ; preds = %18
  %30 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %4, align 8
  %39 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %26
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
