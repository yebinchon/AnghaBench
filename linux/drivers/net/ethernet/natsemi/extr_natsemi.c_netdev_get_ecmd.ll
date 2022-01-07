; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_natsemi.c_netdev_get_ecmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_natsemi.c_netdev_get_ecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.netdev_private = type { i32, i32, i32, i32, i32 }

@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i64 0, align 8
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i64 0, align 8
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i64 0, align 8
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i64 0, align 8
@SUPPORTED_Autoneg = common dso_local global i64 0, align 8
@SUPPORTED_10baseT_Half = common dso_local global i64 0, align 8
@SUPPORTED_10baseT_Full = common dso_local global i64 0, align 8
@SUPPORTED_100baseT_Half = common dso_local global i64 0, align 8
@SUPPORTED_100baseT_Full = common dso_local global i64 0, align 8
@SUPPORTED_TP = common dso_local global i64 0, align 8
@SUPPORTED_MII = common dso_local global i64 0, align 8
@SUPPORTED_FIBRE = common dso_local global i64 0, align 8
@ADVERTISED_TP = common dso_local global i64 0, align 8
@ADVERTISED_MII = common dso_local global i64 0, align 8
@ADVERTISED_FIBRE = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i64 0, align 8
@MII_LPA = common dso_local global i32 0, align 4
@LPA_100FULL = common dso_local global i64 0, align 8
@LPA_100HALF = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@LPA_10FULL = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @netdev_get_ecmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_get_ecmd(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.netdev_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %9)
  store %struct.netdev_private* %10, %struct.netdev_private** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %15 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %18 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i32 %19, i32* %22, align 4
  %23 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %24 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %30 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 4
  store i64 0, i64* %7, align 8
  %35 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %36 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ADVERTISE_10HALF, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load i64, i64* @ADVERTISED_10baseT_Half, align 8
  %43 = load i64, i64* %7, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %41, %2
  %46 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %47 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ADVERTISE_10FULL, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i64, i64* @ADVERTISED_10baseT_Full, align 8
  %54 = load i64, i64* %7, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %7, align 8
  br label %56

56:                                               ; preds = %52, %45
  %57 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %58 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ADVERTISE_100HALF, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i64, i64* @ADVERTISED_100baseT_Half, align 8
  %65 = load i64, i64* %7, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %7, align 8
  br label %67

67:                                               ; preds = %63, %56
  %68 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %69 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @ADVERTISE_100FULL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i64, i64* @ADVERTISED_100baseT_Full, align 8
  %76 = load i64, i64* %7, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %7, align 8
  br label %78

78:                                               ; preds = %74, %67
  %79 = load i64, i64* @SUPPORTED_Autoneg, align 8
  %80 = load i64, i64* @SUPPORTED_10baseT_Half, align 8
  %81 = or i64 %79, %80
  %82 = load i64, i64* @SUPPORTED_10baseT_Full, align 8
  %83 = or i64 %81, %82
  %84 = load i64, i64* @SUPPORTED_100baseT_Half, align 8
  %85 = or i64 %83, %84
  %86 = load i64, i64* @SUPPORTED_100baseT_Full, align 8
  %87 = or i64 %85, %86
  %88 = load i64, i64* @SUPPORTED_TP, align 8
  %89 = or i64 %87, %88
  %90 = load i64, i64* @SUPPORTED_MII, align 8
  %91 = or i64 %89, %90
  %92 = load i64, i64* @SUPPORTED_FIBRE, align 8
  %93 = or i64 %91, %92
  store i64 %93, i64* %6, align 8
  %94 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %95 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %98 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 4
  store i32 %96, i32* %99, align 4
  %100 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %101 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  switch i32 %103, label %104 [
    i32 128, label %105
    i32 129, label %109
    i32 130, label %113
  ]

104:                                              ; preds = %78
  br label %105

105:                                              ; preds = %78, %104
  %106 = load i64, i64* @ADVERTISED_TP, align 8
  %107 = load i64, i64* %7, align 8
  %108 = or i64 %107, %106
  store i64 %108, i64* %7, align 8
  br label %117

109:                                              ; preds = %78
  %110 = load i64, i64* @ADVERTISED_MII, align 8
  %111 = load i64, i64* %7, align 8
  %112 = or i64 %111, %110
  store i64 %112, i64* %7, align 8
  br label %117

113:                                              ; preds = %78
  %114 = load i64, i64* @ADVERTISED_FIBRE, align 8
  %115 = load i64, i64* %7, align 8
  %116 = or i64 %115, %114
  store i64 %116, i64* %7, align 8
  br label %117

117:                                              ; preds = %113, %109, %105
  %118 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %119 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @AUTONEG_ENABLE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %172

124:                                              ; preds = %117
  %125 = load i64, i64* @ADVERTISED_Autoneg, align 8
  %126 = load i64, i64* %7, align 8
  %127 = or i64 %126, %125
  store i64 %127, i64* %7, align 8
  %128 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %129 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.net_device*, %struct.net_device** %3, align 8
  %132 = load i32, i32* @MII_LPA, align 4
  %133 = call i32 @mdio_read(%struct.net_device* %131, i32 %132)
  %134 = and i32 %130, %133
  %135 = call i64 @mii_nway_result(i32 %134)
  store i64 %135, i64* %8, align 8
  %136 = load i64, i64* %8, align 8
  %137 = load i64, i64* @LPA_100FULL, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %143, label %139

139:                                              ; preds = %124
  %140 = load i64, i64* %8, align 8
  %141 = load i64, i64* @LPA_100HALF, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %139, %124
  %144 = load i32, i32* @SPEED_100, align 4
  %145 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %146 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 2
  store i32 %144, i32* %147, align 4
  br label %153

148:                                              ; preds = %139
  %149 = load i32, i32* @SPEED_10, align 4
  %150 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %151 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 2
  store i32 %149, i32* %152, align 4
  br label %153

153:                                              ; preds = %148, %143
  %154 = load i64, i64* %8, align 8
  %155 = load i64, i64* @LPA_100FULL, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load i64, i64* %8, align 8
  %159 = load i64, i64* @LPA_10FULL, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %157, %153
  %162 = load i32, i32* @DUPLEX_FULL, align 4
  %163 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %164 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 4
  br label %171

166:                                              ; preds = %157
  %167 = load i32, i32* @DUPLEX_HALF, align 4
  %168 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %169 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  store i32 %167, i32* %170, align 4
  br label %171

171:                                              ; preds = %166, %161
  br label %172

172:                                              ; preds = %171, %117
  %173 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %174 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i64, i64* %6, align 8
  %178 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %176, i64 %177)
  %179 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %180 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i64, i64* %7, align 8
  %184 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %182, i64 %183)
  ret i32 0
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @mii_nway_result(i32) #1

declare dso_local i32 @mdio_read(%struct.net_device*, i32) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
