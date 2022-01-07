; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_phy_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_phy_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i64, i64, i32, %struct.TYPE_4__, i32, i32, i32, %struct.net_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.1*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_prv_data.1 = type opaque
%struct.net_device = type { i32 }

@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"starting PHY\0A\00", align 1
@xgbe_an_isr_task = common dso_local global i32 0, align 4
@xgbe_an_isr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"phy irq request failed\0A\00", align 1
@XGBE_MODE_KR = common dso_local global i32 0, align 4
@XGBE_MODE_KX_2500 = common dso_local global i32 0, align 4
@XGBE_MODE_KX_1000 = common dso_local global i32 0, align 4
@XGBE_MODE_SFI = common dso_local global i32 0, align 4
@XGBE_MODE_X = common dso_local global i32 0, align 4
@XGBE_MODE_SGMII_1000 = common dso_local global i32 0, align 4
@XGBE_MODE_SGMII_100 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_phy_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_start(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %7 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %6, i32 0, i32 7
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %10 = load i32, i32* @link, align 4
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 7
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  %14 = call i32 @netif_dbg(%struct.xgbe_prv_data* %9, i32 %10, %struct.net_device* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %16 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %18, align 8
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %21 = bitcast %struct.xgbe_prv_data* %20 to %struct.xgbe_prv_data.0*
  %22 = call i32 %19(%struct.xgbe_prv_data.0* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %162

27:                                               ; preds = %1
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %29 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %32 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %60

35:                                               ; preds = %27
  %36 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %37 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %36, i32 0, i32 6
  %38 = load i32, i32* @xgbe_an_isr_task, align 4
  %39 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %40 = ptrtoint %struct.xgbe_prv_data* %39 to i64
  %41 = call i32 @tasklet_init(i32* %37, i32 %38, i64 %40)
  %42 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %43 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %46 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* @xgbe_an_isr, align 4
  %49 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %50 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %53 = call i32 @devm_request_irq(i32 %44, i64 %47, i32 %48, i32 0, i32 %51, %struct.xgbe_prv_data* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %35
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = call i32 @netdev_err(%struct.net_device* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %152

59:                                               ; preds = %35
  br label %60

60:                                               ; preds = %59, %27
  %61 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %62 = load i32, i32* @XGBE_MODE_KR, align 4
  %63 = call i64 @xgbe_use_mode(%struct.xgbe_prv_data* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %67 = call i32 @xgbe_kr_mode(%struct.xgbe_prv_data* %66)
  br label %125

68:                                               ; preds = %60
  %69 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %70 = load i32, i32* @XGBE_MODE_KX_2500, align 4
  %71 = call i64 @xgbe_use_mode(%struct.xgbe_prv_data* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %75 = call i32 @xgbe_kx_2500_mode(%struct.xgbe_prv_data* %74)
  br label %124

76:                                               ; preds = %68
  %77 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %78 = load i32, i32* @XGBE_MODE_KX_1000, align 4
  %79 = call i64 @xgbe_use_mode(%struct.xgbe_prv_data* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %83 = call i32 @xgbe_kx_1000_mode(%struct.xgbe_prv_data* %82)
  br label %123

84:                                               ; preds = %76
  %85 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %86 = load i32, i32* @XGBE_MODE_SFI, align 4
  %87 = call i64 @xgbe_use_mode(%struct.xgbe_prv_data* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %91 = call i32 @xgbe_sfi_mode(%struct.xgbe_prv_data* %90)
  br label %122

92:                                               ; preds = %84
  %93 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %94 = load i32, i32* @XGBE_MODE_X, align 4
  %95 = call i64 @xgbe_use_mode(%struct.xgbe_prv_data* %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %99 = call i32 @xgbe_x_mode(%struct.xgbe_prv_data* %98)
  br label %121

100:                                              ; preds = %92
  %101 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %102 = load i32, i32* @XGBE_MODE_SGMII_1000, align 4
  %103 = call i64 @xgbe_use_mode(%struct.xgbe_prv_data* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %107 = call i32 @xgbe_sgmii_1000_mode(%struct.xgbe_prv_data* %106)
  br label %120

108:                                              ; preds = %100
  %109 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %110 = load i32, i32* @XGBE_MODE_SGMII_100, align 4
  %111 = call i64 @xgbe_use_mode(%struct.xgbe_prv_data* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %115 = call i32 @xgbe_sgmii_100_mode(%struct.xgbe_prv_data* %114)
  br label %119

116:                                              ; preds = %108
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %134

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %105
  br label %121

121:                                              ; preds = %120, %97
  br label %122

122:                                              ; preds = %121, %89
  br label %123

123:                                              ; preds = %122, %81
  br label %124

124:                                              ; preds = %123, %73
  br label %125

125:                                              ; preds = %124, %65
  %126 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %127 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %126, i32 0, i32 2
  store i32 1, i32* %127, align 8
  %128 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %129 = call i32 @xgbe_an_init(%struct.xgbe_prv_data* %128)
  %130 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %131 = call i32 @xgbe_an_enable_interrupts(%struct.xgbe_prv_data* %130)
  %132 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %133 = call i32 @xgbe_phy_config_aneg(%struct.xgbe_prv_data* %132)
  store i32 %133, i32* %2, align 4
  br label %162

134:                                              ; preds = %116
  %135 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %136 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %139 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %137, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %134
  %143 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %144 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %147 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %150 = call i32 @devm_free_irq(i32 %145, i64 %148, %struct.xgbe_prv_data* %149)
  br label %151

151:                                              ; preds = %142, %134
  br label %152

152:                                              ; preds = %151, %56
  %153 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %154 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i32 (%struct.xgbe_prv_data.1*)*, i32 (%struct.xgbe_prv_data.1*)** %156, align 8
  %158 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %159 = bitcast %struct.xgbe_prv_data* %158 to %struct.xgbe_prv_data.1*
  %160 = call i32 %157(%struct.xgbe_prv_data.1* %159)
  %161 = load i32, i32* %5, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %152, %125, %25
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @devm_request_irq(i32, i64, i32, i32, i32, %struct.xgbe_prv_data*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i64 @xgbe_use_mode(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @xgbe_kr_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_kx_2500_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_kx_1000_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_sfi_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_x_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_sgmii_1000_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_sgmii_100_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_an_init(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_an_enable_interrupts(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_config_aneg(%struct.xgbe_prv_data*) #1

declare dso_local i32 @devm_free_irq(i32, i64, %struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
