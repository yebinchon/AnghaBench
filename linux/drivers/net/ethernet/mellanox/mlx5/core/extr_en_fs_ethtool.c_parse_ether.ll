; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_parse_ether.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_parse_ether.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_rx_flow_spec = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.ethhdr }
%struct.ethhdr = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.ethhdr }

@smac_47_16 = common dso_local global i32 0, align 4
@dmac_47_16 = common dso_local global i32 0, align 4
@ethertype = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.ethtool_rx_flow_spec*)* @parse_ether to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_ether(i8* %0, i8* %1, %struct.ethtool_rx_flow_spec* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %7 = alloca %struct.ethhdr*, align 8
  %8 = alloca %struct.ethhdr*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ethtool_rx_flow_spec* %2, %struct.ethtool_rx_flow_spec** %6, align 8
  %9 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %10 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.ethhdr* %11, %struct.ethhdr** %7, align 8
  %12 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %13 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.ethhdr* %14, %struct.ethhdr** %8, align 8
  %15 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %16 = bitcast %struct.ethhdr* %15 to i32*
  %17 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %18 = bitcast %struct.ethhdr* %17 to i32*
  %19 = call i32 @mask_spec(i32* %16, i32* %18, i32 12)
  %20 = load i8*, i8** %4, align 8
  %21 = load i32, i32* @smac_47_16, align 4
  %22 = call i32 @MLX5E_FTE_ADDR_OF(i8* %20, i32 %21)
  %23 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %24 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ether_addr_copy(i32 %22, i32 %25)
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* @smac_47_16, align 4
  %29 = call i32 @MLX5E_FTE_ADDR_OF(i8* %27, i32 %28)
  %30 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %31 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ether_addr_copy(i32 %29, i32 %32)
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* @dmac_47_16, align 4
  %36 = call i32 @MLX5E_FTE_ADDR_OF(i8* %34, i32 %35)
  %37 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %38 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ether_addr_copy(i32 %36, i32 %39)
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* @dmac_47_16, align 4
  %43 = call i32 @MLX5E_FTE_ADDR_OF(i8* %41, i32 %42)
  %44 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %45 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ether_addr_copy(i32 %43, i32 %46)
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* @ethertype, align 4
  %50 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %51 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ntohs(i32 %52)
  %54 = call i32 @MLX5E_FTE_SET(i8* %48, i32 %49, i32 %53)
  %55 = load i8*, i8** %5, align 8
  %56 = load i32, i32* @ethertype, align 4
  %57 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %58 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ntohs(i32 %59)
  %61 = call i32 @MLX5E_FTE_SET(i8* %55, i32 %56, i32 %60)
  ret void
}

declare dso_local i32 @mask_spec(i32*, i32*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @MLX5E_FTE_ADDR_OF(i8*, i32) #1

declare dso_local i32 @MLX5E_FTE_SET(i8*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
