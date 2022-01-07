; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_parse_udp4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_parse_udp4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_rx_flow_spec = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.ethtool_tcpip4_spec }
%struct.ethtool_tcpip4_spec = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.ethtool_tcpip4_spec }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.ethtool_rx_flow_spec*)* @parse_udp4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_udp4(i8* %0, i8* %1, %struct.ethtool_rx_flow_spec* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %7 = alloca %struct.ethtool_tcpip4_spec*, align 8
  %8 = alloca %struct.ethtool_tcpip4_spec*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ethtool_rx_flow_spec* %2, %struct.ethtool_rx_flow_spec** %6, align 8
  %9 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %10 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.ethtool_tcpip4_spec* %11, %struct.ethtool_tcpip4_spec** %7, align 8
  %12 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %13 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.ethtool_tcpip4_spec* %14, %struct.ethtool_tcpip4_spec** %8, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %7, align 8
  %18 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %8, align 8
  %21 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %7, align 8
  %24 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %8, align 8
  %27 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @set_ip4(i8* %15, i8* %16, i32 %19, i32 %22, i32 %25, i32 %28)
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %7, align 8
  %33 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %8, align 8
  %36 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %7, align 8
  %39 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %8, align 8
  %42 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @set_udp(i8* %30, i8* %31, i32 %34, i32 %37, i32 %40, i32 %43)
  ret void
}

declare dso_local i32 @set_ip4(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @set_udp(i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
