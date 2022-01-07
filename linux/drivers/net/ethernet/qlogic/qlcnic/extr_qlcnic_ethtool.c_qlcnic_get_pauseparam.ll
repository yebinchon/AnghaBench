; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32 }
%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@QLCNIC_GBE = common dso_local global i64 0, align 8
@QLCNIC_NIU_MAX_GBE_PORTS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@QLCNIC_NIU_GB_PAUSE_CTL = common dso_local global i32 0, align 4
@QLCNIC_XGBE = common dso_local global i64 0, align 8
@QLCNIC_NIU_MAX_XG_PORTS = common dso_local global i32 0, align 4
@QLCNIC_NIU_XG_PAUSE_CTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown board type: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_pauseparam*)* @qlcnic_get_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_get_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.qlcnic_adapter* %10, %struct.qlcnic_adapter** %5, align 8
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %17 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %21 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %22 = call i32 @qlcnic_83xx_get_pauseparam(%struct.qlcnic_adapter* %20, %struct.ethtool_pauseparam* %21)
  br label %155

23:                                               ; preds = %2
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @QLCNIC_GBE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %98

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @QLCNIC_NIU_MAX_GBE_PORTS, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %31
  br label %155

39:                                               ; preds = %34
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @QLCNIC_NIU_GB_MAC_CONFIG_0(i32 %41)
  %43 = call i32 @QLCRD32(%struct.qlcnic_adapter* %40, i32 %42, i32* %7)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %155

49:                                               ; preds = %39
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @qlcnic_gb_get_rx_flowctl(i32 %50)
  %52 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %53 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %55 = load i32, i32* @QLCNIC_NIU_GB_PAUSE_CTL, align 4
  %56 = call i32 @QLCRD32(%struct.qlcnic_adapter* %54, i32 %55, i32* %7)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %155

62:                                               ; preds = %49
  %63 = load i32, i32* %6, align 4
  switch i32 %63, label %89 [
    i32 0, label %64
    i32 1, label %72
    i32 2, label %80
    i32 3, label %88
  ]

64:                                               ; preds = %62
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @qlcnic_gb_get_gb0_mask(i32 %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %71 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %97

72:                                               ; preds = %62
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @qlcnic_gb_get_gb1_mask(i32 %73)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %79 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %97

80:                                               ; preds = %62
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @qlcnic_gb_get_gb2_mask(i32 %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %87 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %97

88:                                               ; preds = %62
  br label %89

89:                                               ; preds = %62, %88
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @qlcnic_gb_get_gb3_mask(i32 %90)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %96 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %89, %80, %72, %64
  br label %155

98:                                               ; preds = %23
  %99 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %100 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @QLCNIC_XGBE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %145

106:                                              ; preds = %98
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @QLCNIC_NIU_MAX_XG_PORTS, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109, %106
  br label %155

114:                                              ; preds = %109
  %115 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %116 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %115, i32 0, i32 0
  store i32 1, i32* %116, align 4
  %117 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %118 = load i32, i32* @QLCNIC_NIU_XG_PAUSE_CTL, align 4
  %119 = call i32 @QLCRD32(%struct.qlcnic_adapter* %117, i32 %118, i32* %7)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  br label %155

125:                                              ; preds = %114
  %126 = load i32, i32* %6, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @qlcnic_xg_get_xg0_mask(i32 %129)
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %135 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  br label %144

136:                                              ; preds = %125
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @qlcnic_xg_get_xg1_mask(i32 %137)
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %143 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %136, %128
  br label %154

145:                                              ; preds = %98
  %146 = load %struct.net_device*, %struct.net_device** %3, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 0
  %148 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %149 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %148, i32 0, i32 0
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @dev_err(i32* %147, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %152)
  br label %154

154:                                              ; preds = %145, %144
  br label %155

155:                                              ; preds = %19, %38, %48, %61, %113, %124, %154, %97
  ret void
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_83xx_get_pauseparam(%struct.qlcnic_adapter*, %struct.ethtool_pauseparam*) #1

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i32, i32*) #1

declare dso_local i32 @QLCNIC_NIU_GB_MAC_CONFIG_0(i32) #1

declare dso_local i32 @qlcnic_gb_get_rx_flowctl(i32) #1

declare dso_local i32 @qlcnic_gb_get_gb0_mask(i32) #1

declare dso_local i32 @qlcnic_gb_get_gb1_mask(i32) #1

declare dso_local i32 @qlcnic_gb_get_gb2_mask(i32) #1

declare dso_local i32 @qlcnic_gb_get_gb3_mask(i32) #1

declare dso_local i32 @qlcnic_xg_get_xg0_mask(i32) #1

declare dso_local i32 @qlcnic_xg_get_xg1_mask(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
