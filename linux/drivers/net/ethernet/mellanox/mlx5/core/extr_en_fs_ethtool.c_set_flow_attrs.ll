; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_set_flow_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs_ethtool.c_set_flow_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_rx_flow_spec = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@fte_match_param = common dso_local global i32 0, align 4
@outer_headers = common dso_local global i32 0, align 4
@FLOW_EXT = common dso_local global i32 0, align 4
@FLOW_MAC_EXT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.ethtool_rx_flow_spec*)* @set_flow_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_flow_attrs(i32* %0, i32* %1, %struct.ethtool_rx_flow_spec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.ethtool_rx_flow_spec* %2, %struct.ethtool_rx_flow_spec** %7, align 8
  %11 = load i32, i32* @fte_match_param, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* @outer_headers, align 4
  %14 = call i8* @MLX5_ADDR_OF(i32 %11, i32* %12, i32 %13)
  store i8* %14, i8** %8, align 8
  %15 = load i32, i32* @fte_match_param, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* @outer_headers, align 4
  %18 = call i8* @MLX5_ADDR_OF(i32 %15, i32* %16, i32 %17)
  store i8* %18, i8** %9, align 8
  %19 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %20 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FLOW_EXT, align 4
  %23 = load i32, i32* @FLOW_MAC_EXT, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = and i32 %21, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  switch i32 %27, label %63 [
    i32 131, label %28
    i32 129, label %33
    i32 132, label %38
    i32 130, label %43
    i32 128, label %48
    i32 133, label %53
    i32 134, label %58
  ]

28:                                               ; preds = %3
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %32 = call i32 @parse_tcp4(i8* %29, i8* %30, %struct.ethtool_rx_flow_spec* %31)
  br label %66

33:                                               ; preds = %3
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %37 = call i32 @parse_udp4(i8* %34, i8* %35, %struct.ethtool_rx_flow_spec* %36)
  br label %66

38:                                               ; preds = %3
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %42 = call i32 @parse_ip4(i8* %39, i8* %40, %struct.ethtool_rx_flow_spec* %41)
  br label %66

43:                                               ; preds = %3
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %47 = call i32 @parse_tcp6(i8* %44, i8* %45, %struct.ethtool_rx_flow_spec* %46)
  br label %66

48:                                               ; preds = %3
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %52 = call i32 @parse_udp6(i8* %49, i8* %50, %struct.ethtool_rx_flow_spec* %51)
  br label %66

53:                                               ; preds = %3
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %57 = call i32 @parse_ip6(i8* %54, i8* %55, %struct.ethtool_rx_flow_spec* %56)
  br label %66

58:                                               ; preds = %3
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %62 = call i32 @parse_ether(i8* %59, i8* %60, %struct.ethtool_rx_flow_spec* %61)
  br label %66

63:                                               ; preds = %3
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %127

66:                                               ; preds = %58, %53, %48, %43, %38, %33, %28
  %67 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %68 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @FLOW_EXT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %66
  %74 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %75 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @VLAN_VID_MASK, align 4
  %79 = call i32 @cpu_to_be16(i32 %78)
  %80 = and i32 %77, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load i8*, i8** %8, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %86 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @set_cvlan(i8* %83, i8* %84, i32 %88)
  br label %90

90:                                               ; preds = %82, %73, %66
  %91 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %92 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @FLOW_MAC_EXT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %90
  %98 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %99 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @is_zero_ether_addr(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %126, label %104

104:                                              ; preds = %97
  %105 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %106 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %110 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ETH_ALEN, align 4
  %114 = call i32 @mask_spec(i32 %108, i32 %112, i32 %113)
  %115 = load i8*, i8** %8, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %118 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %7, align 8
  %122 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @set_dmac(i8* %115, i8* %116, i32 %120, i32 %124)
  br label %126

126:                                              ; preds = %104, %97, %90
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %63
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @parse_tcp4(i8*, i8*, %struct.ethtool_rx_flow_spec*) #1

declare dso_local i32 @parse_udp4(i8*, i8*, %struct.ethtool_rx_flow_spec*) #1

declare dso_local i32 @parse_ip4(i8*, i8*, %struct.ethtool_rx_flow_spec*) #1

declare dso_local i32 @parse_tcp6(i8*, i8*, %struct.ethtool_rx_flow_spec*) #1

declare dso_local i32 @parse_udp6(i8*, i8*, %struct.ethtool_rx_flow_spec*) #1

declare dso_local i32 @parse_ip6(i8*, i8*, %struct.ethtool_rx_flow_spec*) #1

declare dso_local i32 @parse_ether(i8*, i8*, %struct.ethtool_rx_flow_spec*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @set_cvlan(i8*, i8*, i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @mask_spec(i32, i32, i32) #1

declare dso_local i32 @set_dmac(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
