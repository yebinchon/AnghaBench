; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8726_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8726_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i64, i32, i32* }
%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Initializing BCM8726\0A\00", align 1
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_CTRL = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Setting 1G force\0A\00", align 1
@MDIO_PMA_REG_10G_CTRL2 = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_CTRL = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_RXCTRL = common dso_local global i32 0, align 4
@SPEED_AUTO_NEG = common dso_local global i64 0, align 8
@PORT_HW_CFG_SPEED_CAPABILITY_D0_1G = common dso_local global i32 0, align 4
@PORT_HW_CFG_SPEED_CAPABILITY_D0_10G = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Setting 1G clause37\0A\00", align 1
@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_AN_REG_ADV = common dso_local global i32 0, align 4
@MDIO_AN_REG_CL37_CL73 = common dso_local global i32 0, align 4
@MDIO_AN_REG_CL37_FC_LD = common dso_local global i32 0, align 4
@MDIO_AN_REG_CL37_AN = common dso_local global i32 0, align 4
@MDIO_AN_REG_CTRL = common dso_local global i32 0, align 4
@FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Setting TX_CTRL1 0x%x, TX_CTRL2 0x%x\0A\00", align 1
@MDIO_PMA_REG_8726_TX_CTRL1 = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8726_TX_CTRL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* @bnx2x_8726_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_8726_config_init(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store %struct.link_vars* %2, %struct.link_vars** %6, align 8
  %8 = load %struct.link_params*, %struct.link_params** %5, align 8
  %9 = getelementptr inbounds %struct.link_params, %struct.link_params* %8, i32 0, i32 1
  %10 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  store %struct.bnx2x* %10, %struct.bnx2x** %7, align 8
  %11 = load i32, i32* @NETIF_MSG_LINK, align 4
  %12 = call i32 (i32, i8*, ...) @DP(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %14 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %15 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %16 = load i32, i32* @MDIO_PMA_REG_CTRL, align 4
  %17 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %13, %struct.bnx2x_phy* %14, i32 %15, i32 %16, i32 32768)
  %18 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %19 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %20 = load %struct.link_params*, %struct.link_params** %5, align 8
  %21 = call i32 @bnx2x_wait_reset_complete(%struct.bnx2x* %18, %struct.bnx2x_phy* %19, %struct.link_params* %20)
  %22 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %23 = load %struct.link_params*, %struct.link_params** %5, align 8
  %24 = call i32 @bnx2x_8726_external_rom_boot(%struct.bnx2x_phy* %22, %struct.link_params* %23)
  %25 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %26 = load %struct.link_params*, %struct.link_params** %5, align 8
  %27 = call i32 @bnx2x_sfp_module_detection(%struct.bnx2x_phy* %25, %struct.link_params* %26)
  %28 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %29 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SPEED_1000, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %3
  %34 = load i32, i32* @NETIF_MSG_LINK, align 4
  %35 = call i32 (i32, i8*, ...) @DP(i32 %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %37 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %38 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %39 = load i32, i32* @MDIO_PMA_REG_CTRL, align 4
  %40 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %36, %struct.bnx2x_phy* %37, i32 %38, i32 %39, i32 64)
  %41 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %42 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %43 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %44 = load i32, i32* @MDIO_PMA_REG_10G_CTRL2, align 4
  %45 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %41, %struct.bnx2x_phy* %42, i32 %43, i32 %44, i32 13)
  %46 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %47 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %48 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %49 = load i32, i32* @MDIO_PMA_LASI_CTRL, align 4
  %50 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %46, %struct.bnx2x_phy* %47, i32 %48, i32 %49, i32 5)
  %51 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %52 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %53 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %54 = load i32, i32* @MDIO_PMA_LASI_RXCTRL, align 4
  %55 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %51, %struct.bnx2x_phy* %52, i32 %53, i32 %54, i32 1024)
  br label %126

56:                                               ; preds = %3
  %57 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %58 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SPEED_AUTO_NEG, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %119

62:                                               ; preds = %56
  %63 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %64 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_1G, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %119

69:                                               ; preds = %62
  %70 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %71 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10G, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @PORT_HW_CFG_SPEED_CAPABILITY_D0_10G, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %119

77:                                               ; preds = %69
  %78 = load i32, i32* @NETIF_MSG_LINK, align 4
  %79 = call i32 (i32, i8*, ...) @DP(i32 %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.link_params*, %struct.link_params** %5, align 8
  %81 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %82 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %83 = call i32 @bnx2x_ext_phy_set_pause(%struct.link_params* %80, %struct.bnx2x_phy* %81, %struct.link_vars* %82)
  %84 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %85 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %86 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %87 = load i32, i32* @MDIO_AN_REG_ADV, align 4
  %88 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %84, %struct.bnx2x_phy* %85, i32 %86, i32 %87, i32 32)
  %89 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %90 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %91 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %92 = load i32, i32* @MDIO_AN_REG_CL37_CL73, align 4
  %93 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %89, %struct.bnx2x_phy* %90, i32 %91, i32 %92, i32 1036)
  %94 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %95 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %96 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %97 = load i32, i32* @MDIO_AN_REG_CL37_FC_LD, align 4
  %98 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %94, %struct.bnx2x_phy* %95, i32 %96, i32 %97, i32 32)
  %99 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %100 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %101 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %102 = load i32, i32* @MDIO_AN_REG_CL37_AN, align 4
  %103 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %99, %struct.bnx2x_phy* %100, i32 %101, i32 %102, i32 4096)
  %104 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %105 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %106 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %107 = load i32, i32* @MDIO_AN_REG_CTRL, align 4
  %108 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %104, %struct.bnx2x_phy* %105, i32 %106, i32 %107, i32 4608)
  %109 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %110 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %111 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %112 = load i32, i32* @MDIO_PMA_LASI_CTRL, align 4
  %113 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %109, %struct.bnx2x_phy* %110, i32 %111, i32 %112, i32 4)
  %114 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %115 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %116 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %117 = load i32, i32* @MDIO_PMA_LASI_RXCTRL, align 4
  %118 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %114, %struct.bnx2x_phy* %115, i32 %116, i32 %117, i32 1024)
  br label %125

119:                                              ; preds = %69, %62, %56
  %120 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %121 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %122 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %123 = load i32, i32* @MDIO_PMA_LASI_CTRL, align 4
  %124 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %120, %struct.bnx2x_phy* %121, i32 %122, i32 %123, i32 1)
  br label %125

125:                                              ; preds = %119, %77
  br label %126

126:                                              ; preds = %125, %33
  %127 = load %struct.link_params*, %struct.link_params** %5, align 8
  %128 = getelementptr inbounds %struct.link_params, %struct.link_params* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @FEATURE_CONFIG_OVERRIDE_PREEMPHASIS_ENABLED, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %166

133:                                              ; preds = %126
  %134 = load i32, i32* @NETIF_MSG_LINK, align 4
  %135 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %136 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %141 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i32, i8*, ...) @DP(i32 %134, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %139, i32 %144)
  %146 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %147 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %148 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %149 = load i32, i32* @MDIO_PMA_REG_8726_TX_CTRL1, align 4
  %150 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %151 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %146, %struct.bnx2x_phy* %147, i32 %148, i32 %149, i32 %154)
  %156 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %157 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %158 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %159 = load i32, i32* @MDIO_PMA_REG_8726_TX_CTRL2, align 4
  %160 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %161 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %156, %struct.bnx2x_phy* %157, i32 %158, i32 %159, i32 %164)
  br label %166

166:                                              ; preds = %133, %126
  ret i32 0
}

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_wait_reset_complete(%struct.bnx2x*, %struct.bnx2x_phy*, %struct.link_params*) #1

declare dso_local i32 @bnx2x_8726_external_rom_boot(%struct.bnx2x_phy*, %struct.link_params*) #1

declare dso_local i32 @bnx2x_sfp_module_detection(%struct.bnx2x_phy*, %struct.link_params*) #1

declare dso_local i32 @bnx2x_ext_phy_set_pause(%struct.link_params*, %struct.bnx2x_phy*, %struct.link_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
