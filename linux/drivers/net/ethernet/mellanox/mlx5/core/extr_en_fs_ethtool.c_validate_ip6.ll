; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_validate_ip6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_validate_ip6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_rx_flow_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ethtool_usrip6_spec }
%struct.ethtool_usrip6_spec = type { i64, i64, i64, i64, i64 }
%struct.in6_addr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethtool_rx_flow_spec*)* @validate_ip6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_ip6(%struct.ethtool_rx_flow_spec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %4 = alloca %struct.ethtool_usrip6_spec*, align 8
  %5 = alloca i32, align 4
  store %struct.ethtool_rx_flow_spec* %0, %struct.ethtool_rx_flow_spec** %3, align 8
  %6 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %3, align 8
  %7 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.ethtool_usrip6_spec* %8, %struct.ethtool_usrip6_spec** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %52

21:                                               ; preds = %13
  %22 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.in6_addr*
  %26 = call i32 @ipv6_addr_any(%struct.in6_addr* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %21
  %32 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.in6_addr*
  %36 = call i32 @ipv6_addr_any(%struct.in6_addr* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %4, align 8
  %43 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %49, %18
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @ipv6_addr_any(%struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
