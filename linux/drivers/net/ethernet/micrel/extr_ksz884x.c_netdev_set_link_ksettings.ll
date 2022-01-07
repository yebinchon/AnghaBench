; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.dev_priv = type { i32, i32, %struct.ksz_port, %struct.dev_info* }
%struct.ksz_port = type { i32, i32, i32 }
%struct.dev_info = type { i32 }

@ADVERTISED_ALL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @netdev_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.dev_priv*, align 8
  %6 = alloca %struct.dev_info*, align 8
  %7 = alloca %struct.ksz_port*, align 8
  %8 = alloca %struct.ethtool_link_ksettings, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.dev_priv* %13, %struct.dev_priv** %5, align 8
  %14 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %15 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %14, i32 0, i32 3
  %16 = load %struct.dev_info*, %struct.dev_info** %15, align 8
  store %struct.dev_info* %16, %struct.dev_info** %6, align 8
  %17 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %18 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %17, i32 0, i32 2
  store %struct.ksz_port* %18, %struct.ksz_port** %7, align 8
  %19 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ethtool_convert_link_mode_to_legacy_u32(i32* %10, i32 %26)
  %28 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %91

33:                                               ; preds = %2
  %34 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %35 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %91

39:                                               ; preds = %33
  %40 = load i32, i32* @ADVERTISED_ALL, align 4
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 10, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %47 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %10, align 4
  br label %63

52:                                               ; preds = %39
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 100, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %57 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %55, %52
  br label %63

63:                                               ; preds = %62, %45
  %64 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %65 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 0, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %71 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %90

76:                                               ; preds = %63
  %77 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %78 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 1, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %84 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %85 = or i32 %83, %84
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %10, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %82, %76
  br label %90

90:                                               ; preds = %89, %69
  br label %91

91:                                               ; preds = %90, %33, %2
  %92 = load %struct.dev_info*, %struct.dev_info** %6, align 8
  %93 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %92, i32 0, i32 0
  %94 = call i32 @mutex_lock(i32* %93)
  %95 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %96 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %91
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @ADVERTISED_ALL, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* @ADVERTISED_ALL, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load %struct.ksz_port*, %struct.ksz_port** %7, align 8
  %108 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %107, i32 0, i32 0
  store i32 0, i32* %108, align 4
  %109 = load %struct.ksz_port*, %struct.ksz_port** %7, align 8
  %110 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %109, i32 0, i32 1
  store i32 0, i32* %110, align 4
  %111 = load %struct.ksz_port*, %struct.ksz_port** %7, align 8
  %112 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %111, i32 0, i32 2
  store i32 0, i32* %112, align 4
  br label %140

113:                                              ; preds = %100, %91
  %114 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %115 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  %119 = load %struct.ksz_port*, %struct.ksz_port** %7, align 8
  %120 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 1000, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %113
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.ksz_port*, %struct.ksz_port** %7, align 8
  %126 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %123, %113
  %128 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %129 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load %struct.ksz_port*, %struct.ksz_port** %7, align 8
  %135 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %134, i32 0, i32 2
  store i32 0, i32* %135, align 4
  br label %139

136:                                              ; preds = %127
  %137 = load %struct.ksz_port*, %struct.ksz_port** %7, align 8
  %138 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %137, i32 0, i32 2
  store i32 1, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %133
  br label %140

140:                                              ; preds = %139, %106
  %141 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %142 = call i32 @memcpy(%struct.ethtool_link_ksettings* %8, %struct.ethtool_link_ksettings* %141, i32 24)
  %143 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %8, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %145, i32 %146)
  %148 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %149 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %148, i32 0, i32 1
  %150 = call i32 @mii_ethtool_set_link_ksettings(i32* %149, %struct.ethtool_link_ksettings* %8)
  store i32 %150, i32* %11, align 4
  %151 = load %struct.dev_info*, %struct.dev_info** %6, align 8
  %152 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %151, i32 0, i32 0
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load i32, i32* %11, align 4
  ret i32 %154
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethtool_convert_link_mode_to_legacy_u32(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings*, i32) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

declare dso_local i32 @mii_ethtool_set_link_ksettings(i32*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
