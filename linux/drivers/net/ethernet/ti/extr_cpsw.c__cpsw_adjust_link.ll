; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c__cpsw_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c__cpsw_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_slave = type { i32, i32, %struct.phy_device*, i32 }
%struct.phy_device = type { i32, i64, i64 }
%struct.cpsw_priv = type { i64, i32, i64, i64, %struct.cpsw_common* }
%struct.cpsw_common = type { i32 }

@CPSW_SL_CTL_GMII_EN = common dso_local global i32 0, align 4
@CPSW_SL_CTL_GIG = common dso_local global i32 0, align 4
@CPSW_SL_CTL_FULLDUPLEX = common dso_local global i32 0, align 4
@CPSW_SL_CTL_IFCTL_A = common dso_local global i32 0, align 4
@CPSW_SL_CTL_EXT_EN = common dso_local global i32 0, align 4
@CPSW_SL_CTL_RX_FLOW_EN = common dso_local global i32 0, align 4
@CPSW_SL_CTL_TX_FLOW_EN = common dso_local global i32 0, align 4
@ALE_PORT_STATE = common dso_local global i32 0, align 4
@ALE_PORT_STATE_FORWARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Speed was changed, CBS shaper speeds are changed!\00", align 1
@ALE_PORT_STATE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_slave*, %struct.cpsw_priv*, i32*)* @_cpsw_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_cpsw_adjust_link(%struct.cpsw_slave* %0, %struct.cpsw_priv* %1, i32* %2) #0 {
  %4 = alloca %struct.cpsw_slave*, align 8
  %5 = alloca %struct.cpsw_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cpsw_common*, align 8
  store %struct.cpsw_slave* %0, %struct.cpsw_slave** %4, align 8
  store %struct.cpsw_priv* %1, %struct.cpsw_priv** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.cpsw_slave*, %struct.cpsw_slave** %4, align 8
  %12 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %11, i32 0, i32 2
  %13 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  store %struct.phy_device* %13, %struct.phy_device** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %15 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %14, i32 0, i32 4
  %16 = load %struct.cpsw_common*, %struct.cpsw_common** %15, align 8
  store %struct.cpsw_common* %16, %struct.cpsw_common** %10, align 8
  %17 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %18 = icmp ne %struct.phy_device* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %164

20:                                               ; preds = %3
  %21 = load %struct.cpsw_slave*, %struct.cpsw_slave** %4, align 8
  %22 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @cpsw_get_slave_port(i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %26 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %135

29:                                               ; preds = %20
  %30 = load i32, i32* @CPSW_SL_CTL_GMII_EN, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %32 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1000
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* @CPSW_SL_CTL_GIG, align 4
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %29
  %40 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %41 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @CPSW_SL_CTL_FULLDUPLEX, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %50 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 100
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @CPSW_SL_CTL_IFCTL_A, align 4
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %71

57:                                               ; preds = %48
  %58 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %59 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 10
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %64 = call i64 @phy_interface_is_rgmii(%struct.phy_device* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* @CPSW_SL_CTL_EXT_EN, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %66, %62, %57
  br label %71

71:                                               ; preds = %70, %53
  %72 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %73 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @CPSW_SL_CTL_RX_FLOW_EN, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %76, %71
  %81 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %82 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @CPSW_SL_CTL_TX_FLOW_EN, align 4
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %85, %80
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.cpsw_slave*, %struct.cpsw_slave** %4, align 8
  %92 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %90, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load %struct.cpsw_slave*, %struct.cpsw_slave** %4, align 8
  %97 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @cpsw_sl_ctl_set(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %95, %89
  %102 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  %103 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @ALE_PORT_STATE, align 4
  %107 = load i32, i32* @ALE_PORT_STATE_FORWARD, align 4
  %108 = call i32 @cpsw_ale_control_set(i32 %104, i32 %105, i32 %106, i32 %107)
  %109 = load i32*, i32** %6, align 8
  store i32 1, i32* %109, align 4
  %110 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %111 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %101
  %115 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %116 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.cpsw_slave*, %struct.cpsw_slave** %4, align 8
  %119 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %118, i32 0, i32 2
  %120 = load %struct.phy_device*, %struct.phy_device** %119, align 8
  %121 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = icmp ne i64 %117, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %114
  %126 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %127 = call i32 @cpsw_shp_is_off(%struct.cpsw_priv* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %125
  %130 = load %struct.cpsw_priv*, %struct.cpsw_priv** %5, align 8
  %131 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @dev_warn(i32 %132, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %134

134:                                              ; preds = %129, %125, %114, %101
  br label %151

135:                                              ; preds = %20
  store i32 0, i32* %8, align 4
  %136 = load %struct.cpsw_common*, %struct.cpsw_common** %10, align 8
  %137 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* @ALE_PORT_STATE, align 4
  %141 = load i32, i32* @ALE_PORT_STATE_DISABLE, align 4
  %142 = call i32 @cpsw_ale_control_set(i32 %138, i32 %139, i32 %140, i32 %141)
  %143 = load %struct.cpsw_slave*, %struct.cpsw_slave** %4, align 8
  %144 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @cpsw_sl_wait_for_idle(i32 %145, i32 100)
  %147 = load %struct.cpsw_slave*, %struct.cpsw_slave** %4, align 8
  %148 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @cpsw_sl_ctl_reset(i32 %149)
  br label %151

151:                                              ; preds = %135, %134
  %152 = load i32, i32* %8, align 4
  %153 = load %struct.cpsw_slave*, %struct.cpsw_slave** %4, align 8
  %154 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %152, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %159 = call i32 @phy_print_status(%struct.phy_device* %158)
  br label %160

160:                                              ; preds = %157, %151
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.cpsw_slave*, %struct.cpsw_slave** %4, align 8
  %163 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  br label %164

164:                                              ; preds = %160, %19
  ret void
}

declare dso_local i32 @cpsw_get_slave_port(i32) #1

declare dso_local i64 @phy_interface_is_rgmii(%struct.phy_device*) #1

declare dso_local i32 @cpsw_sl_ctl_set(i32, i32) #1

declare dso_local i32 @cpsw_ale_control_set(i32, i32, i32, i32) #1

declare dso_local i32 @cpsw_shp_is_off(%struct.cpsw_priv*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @cpsw_sl_wait_for_idle(i32, i32) #1

declare dso_local i32 @cpsw_sl_ctl_reset(i32) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
