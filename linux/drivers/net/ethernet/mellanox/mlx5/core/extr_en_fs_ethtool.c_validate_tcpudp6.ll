; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_validate_tcpudp6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_validate_tcpudp6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_rx_flow_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ethtool_tcpip6_spec }
%struct.ethtool_tcpip6_spec = type { i64, i64, i64, i64, i64 }
%struct.in6_addr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethtool_rx_flow_spec*)* @validate_tcpudp6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_tcpudp6(%struct.ethtool_rx_flow_spec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %4 = alloca %struct.ethtool_tcpip6_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.ethtool_rx_flow_spec* %0, %struct.ethtool_rx_flow_spec** %3, align 8
  %6 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %3, align 8
  %7 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.ethtool_tcpip6_spec* %8, %struct.ethtool_tcpip6_spec** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %55

16:                                               ; preds = %1
  %17 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.in6_addr*
  %21 = call i32 @ipv6_addr_any(%struct.in6_addr* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %16
  %27 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.in6_addr*
  %31 = call i32 @ipv6_addr_any(%struct.in6_addr* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %26
  %37 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %4, align 8
  %46 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %13
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @ipv6_addr_any(%struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
