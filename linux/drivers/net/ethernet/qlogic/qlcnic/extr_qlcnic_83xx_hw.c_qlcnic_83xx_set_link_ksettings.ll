; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64 }

@DUPLEX_HALF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Half duplex mode not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QLC_83XX_AUTONEG_ENABLE = common dso_local global i32 0, align 4
@QLC_83XX_100_CAPABLE = common dso_local global i32 0, align 4
@QLC_83XX_1G_CAPABLE = common dso_local global i32 0, align 4
@QLC_83XX_10G_CAPABLE = common dso_local global i32 0, align 4
@QLC_83XX_10_CAPABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to Set Link Speed and autoneg.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_set_link_ksettings(%struct.qlcnic_adapter* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.qlcnic_hardware_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %9, i32 0, i32 1
  %11 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %10, align 8
  store %struct.qlcnic_hardware_context* %11, %struct.qlcnic_hardware_context** %6, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 1
  %14 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %13, align 8
  %15 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DUPLEX_HALF, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @netdev_info(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %145

30:                                               ; preds = %2
  %31 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load i32, i32* @QLC_83XX_AUTONEG_ENABLE, align 4
  %38 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %39 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @QLC_83XX_100_CAPABLE, align 4
  %43 = load i32, i32* @QLC_83XX_1G_CAPABLE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @QLC_83XX_10G_CAPABLE, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %48 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %130

51:                                               ; preds = %30
  %52 = load i32, i32* @QLC_83XX_AUTONEG_ENABLE, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %55 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %126 [
    i32 131, label %62
    i32 130, label %78
    i32 129, label %94
    i32 128, label %110
  ]

62:                                               ; preds = %51
  %63 = load i32, i32* @QLC_83XX_100_CAPABLE, align 4
  %64 = load i32, i32* @QLC_83XX_1G_CAPABLE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @QLC_83XX_10G_CAPABLE, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %70 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* @QLC_83XX_10_CAPABLE, align 4
  %74 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %75 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %129

78:                                               ; preds = %51
  %79 = load i32, i32* @QLC_83XX_10_CAPABLE, align 4
  %80 = load i32, i32* @QLC_83XX_1G_CAPABLE, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @QLC_83XX_10G_CAPABLE, align 4
  %83 = or i32 %81, %82
  %84 = xor i32 %83, -1
  %85 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %86 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* @QLC_83XX_100_CAPABLE, align 4
  %90 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %91 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %129

94:                                               ; preds = %51
  %95 = load i32, i32* @QLC_83XX_10_CAPABLE, align 4
  %96 = load i32, i32* @QLC_83XX_100_CAPABLE, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @QLC_83XX_10G_CAPABLE, align 4
  %99 = or i32 %97, %98
  %100 = xor i32 %99, -1
  %101 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %102 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load i32, i32* @QLC_83XX_1G_CAPABLE, align 4
  %106 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %107 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %129

110:                                              ; preds = %51
  %111 = load i32, i32* @QLC_83XX_10_CAPABLE, align 4
  %112 = load i32, i32* @QLC_83XX_100_CAPABLE, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @QLC_83XX_1G_CAPABLE, align 4
  %115 = or i32 %113, %114
  %116 = xor i32 %115, -1
  %117 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %118 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load i32, i32* @QLC_83XX_10G_CAPABLE, align 4
  %122 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %123 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %129

126:                                              ; preds = %51
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %145

129:                                              ; preds = %110, %94, %78, %62
  br label %130

130:                                              ; preds = %129, %36
  %131 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %132 = call i32 @qlcnic_83xx_set_port_config(%struct.qlcnic_adapter* %131)
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %137 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @netdev_info(i32 %138, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %142 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %135, %130
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %126, %23
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @qlcnic_83xx_set_port_config(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
