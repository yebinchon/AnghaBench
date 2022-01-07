; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.b53_device* }
%struct.b53_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ethtool_eee }
%struct.ethtool_eee = type { i32 }
%struct.phy_device = type { i32, i32, i64, i32, i64, i64 }

@MLO_PAUSE_TXRX_MASK = common dso_local global i32 0, align 4
@MLO_PAUSE_TX = common dso_local global i32 0, align 4
@MLO_PAUSE_RX = common dso_local global i32 0, align 4
@B53_RGMII_CTRL_IMP = common dso_local global i32 0, align 4
@B53_CTRL_PAGE = common dso_local global i32 0, align 4
@RGMII_CTRL_DLL_RXC = common dso_local global i32 0, align 4
@RGMII_CTRL_DLL_TXC = common dso_local global i32 0, align 4
@RGMII_CTRL_TIMING_SEL = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_TXID = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Configured port %d for %s\0A\00", align 1
@B53_PORT_OVERRIDE_CTRL = common dso_local global i32 0, align 4
@PORT_OVERRIDE_RV_MII_25 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to enable reverse MII mode\0A\00", align 1
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, %struct.phy_device*)* @b53_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b53_adjust_link(%struct.dsa_switch* %0, i32 %1, %struct.phy_device* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca %struct.b53_device*, align 8
  %8 = alloca %struct.ethtool_eee*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.phy_device* %2, %struct.phy_device** %6, align 8
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %14 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %13, i32 0, i32 1
  %15 = load %struct.b53_device*, %struct.b53_device** %14, align 8
  store %struct.b53_device* %15, %struct.b53_device** %7, align 8
  %16 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %17 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store %struct.ethtool_eee* %22, %struct.ethtool_eee** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %23 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %24 = call i32 @phy_is_pseudo_fixed_link(%struct.phy_device* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  br label %209

27:                                               ; preds = %3
  %28 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %29 = call i64 @is5301x(%struct.b53_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %34 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @MLO_PAUSE_TXRX_MASK, align 4
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %37, %31, %27
  %40 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %41 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %46 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @MLO_PAUSE_TX, align 4
  %51 = load i32, i32* %12, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* @MLO_PAUSE_RX, align 4
  %55 = load i32, i32* %12, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %53, %39
  %58 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %61 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %64 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @b53_force_port_config(%struct.b53_device* %58, i32 %59, i32 %62, i32 %65, i32 %66)
  %68 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %71 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @b53_force_link(%struct.b53_device* %68, i32 %69, i32 %72)
  %74 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %75 = call i64 @is531x5(%struct.b53_device* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %141

77:                                               ; preds = %57
  %78 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %79 = call i64 @phy_interface_is_rgmii(%struct.phy_device* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %141

81:                                               ; preds = %77
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, 8
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i32, i32* @B53_RGMII_CTRL_IMP, align 4
  store i32 %85, i32* %11, align 4
  br label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @B53_RGMII_CTRL_P(i32 %87)
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %86, %84
  %90 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %91 = load i32, i32* @B53_CTRL_PAGE, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @b53_read8(%struct.b53_device* %90, i32 %91, i32 %92, i32* %9)
  %94 = load i32, i32* @RGMII_CTRL_DLL_RXC, align 4
  %95 = load i32, i32* @RGMII_CTRL_DLL_TXC, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @RGMII_CTRL_TIMING_SEL, align 4
  %98 = or i32 %96, %97
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %9, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %9, align 4
  %102 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %103 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_TXID, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %89
  %108 = load i32, i32* @RGMII_CTRL_DLL_TXC, align 4
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %107, %89
  %112 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %113 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @PHY_INTERFACE_MODE_RGMII, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load i32, i32* @RGMII_CTRL_DLL_TXC, align 4
  %119 = load i32, i32* @RGMII_CTRL_DLL_RXC, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %117, %111
  %124 = load i32, i32* @RGMII_CTRL_TIMING_SEL, align 4
  %125 = load i32, i32* %9, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %9, align 4
  %127 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %128 = load i32, i32* @B53_CTRL_PAGE, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @b53_write8(%struct.b53_device* %127, i32 %128, i32 %129, i32 %130)
  %132 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %133 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %137 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @phy_modes(i64 %138)
  %140 = call i32 @dev_info(i32 %134, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %135, i32 %139)
  br label %141

141:                                              ; preds = %123, %77, %57
  %142 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %143 = call i64 @is5325(%struct.b53_device* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %177

145:                                              ; preds = %141
  %146 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %147 = load i32, i32* @B53_CTRL_PAGE, align 4
  %148 = load i32, i32* @B53_PORT_OVERRIDE_CTRL, align 4
  %149 = call i32 @b53_read8(%struct.b53_device* %146, i32 %147, i32 %148, i32* %10)
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @PORT_OVERRIDE_RV_MII_25, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %176, label %154

154:                                              ; preds = %145
  %155 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %156 = load i32, i32* @B53_CTRL_PAGE, align 4
  %157 = load i32, i32* @B53_PORT_OVERRIDE_CTRL, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @PORT_OVERRIDE_RV_MII_25, align 4
  %160 = or i32 %158, %159
  %161 = call i32 @b53_write8(%struct.b53_device* %155, i32 %156, i32 %157, i32 %160)
  %162 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %163 = load i32, i32* @B53_CTRL_PAGE, align 4
  %164 = load i32, i32* @B53_PORT_OVERRIDE_CTRL, align 4
  %165 = call i32 @b53_read8(%struct.b53_device* %162, i32 %163, i32 %164, i32* %10)
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* @PORT_OVERRIDE_RV_MII_25, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %154
  %171 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %172 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @dev_err(i32 %173, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %209

175:                                              ; preds = %154
  br label %176

176:                                              ; preds = %175, %145
  br label %202

177:                                              ; preds = %141
  %178 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %179 = call i64 @is5301x(%struct.b53_device* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %201

181:                                              ; preds = %177
  %182 = load i32, i32* %5, align 4
  %183 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %184 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %182, %185
  br i1 %186, label %187, label %200

187:                                              ; preds = %181
  %188 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %189 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %190 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @DUPLEX_FULL, align 4
  %193 = load i32, i32* @MLO_PAUSE_TXRX_MASK, align 4
  %194 = call i32 @b53_force_port_config(%struct.b53_device* %188, i32 %191, i32 2000, i32 %192, i32 %193)
  %195 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %196 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %197 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @b53_force_link(%struct.b53_device* %195, i32 %198, i32 1)
  br label %200

200:                                              ; preds = %187, %181
  br label %201

201:                                              ; preds = %200, %177
  br label %202

202:                                              ; preds = %201, %176
  %203 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %204 = load i32, i32* %5, align 4
  %205 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %206 = call i32 @b53_eee_init(%struct.dsa_switch* %203, i32 %204, %struct.phy_device* %205)
  %207 = load %struct.ethtool_eee*, %struct.ethtool_eee** %8, align 8
  %208 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 4
  br label %209

209:                                              ; preds = %202, %170, %26
  ret void
}

declare dso_local i32 @phy_is_pseudo_fixed_link(%struct.phy_device*) #1

declare dso_local i64 @is5301x(%struct.b53_device*) #1

declare dso_local i32 @b53_force_port_config(%struct.b53_device*, i32, i32, i32, i32) #1

declare dso_local i32 @b53_force_link(%struct.b53_device*, i32, i32) #1

declare dso_local i64 @is531x5(%struct.b53_device*) #1

declare dso_local i64 @phy_interface_is_rgmii(%struct.phy_device*) #1

declare dso_local i32 @B53_RGMII_CTRL_P(i32) #1

declare dso_local i32 @b53_read8(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @b53_write8(%struct.b53_device*, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @phy_modes(i64) #1

declare dso_local i64 @is5325(%struct.b53_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @b53_eee_init(%struct.dsa_switch*, i32, %struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
