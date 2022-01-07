; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_848xx_set_link_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_848xx_set_link_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { i32, i32, i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Port 0x%x: LED MODE OFF\0A\00", align 1
@SHARED_HW_CFG_LED_MODE_SHIFT = common dso_local global i32 0, align 4
@SHARED_HW_CFG_LED_EXTPHY1 = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8481_LED1_MASK = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8481_LED2_MASK = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8481_LED3_MASK = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8481_LED5_MASK = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84858 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Port 0x%x: LED MODE FRONT PANEL OFF\0A\00", align 1
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834 = common dso_local global i32 0, align 4
@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i32 0, align 4
@NIG_MASK_MI_INT = common dso_local global i32 0, align 4
@LINK_FLAGS_INT_DISABLED = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8481_SIGNAL_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Port 0x%x: LED MODE ON\0A\00", align 1
@MDIO_PMA_REG_8481_LINK_SIGNAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Port 0x%x: LED MODE OPER\0A\00", align 1
@MDIO_PMA_REG_8481_LINK_SIGNAL_LED4_ENABLE_MASK = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8481_LINK_SIGNAL_LED4_ENABLE_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Setting LINK_SIGNAL\0A\00", align 1
@SHARED_HW_CFG_LED_EXTPHY2 = common dso_local global i32 0, align 4
@MDIO_WC_DEVAD = common dso_local global i32 0, align 4
@MDIO_WC_REG_GP2_STATUS_GP_2_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*, i32)* @bnx2x_848xx_set_link_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_848xx_set_link_led(%struct.bnx2x_phy* %0, %struct.link_params* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.link_params*, %struct.link_params** %5, align 8
  %11 = getelementptr inbounds %struct.link_params, %struct.link_params* %10, i32 0, i32 3
  %12 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  store %struct.bnx2x* %12, %struct.bnx2x** %7, align 8
  %13 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %14 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %18 = call i32 @BP_PATH(%struct.bnx2x* %17)
  store i32 %18, i32* %9, align 4
  br label %23

19:                                               ; preds = %3
  %20 = load %struct.link_params*, %struct.link_params** %5, align 8
  %21 = getelementptr inbounds %struct.link_params, %struct.link_params* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %426 [
    i32 130, label %25
    i32 131, label %81
    i32 129, label %176
    i32 128, label %297
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @NETIF_MSG_LINK, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (i32, i8*, ...) @DP(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.link_params*, %struct.link_params** %5, align 8
  %30 = getelementptr inbounds %struct.link_params, %struct.link_params* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SHARED_HW_CFG_LED_MODE_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* @SHARED_HW_CFG_LED_EXTPHY1, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %25
  %37 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %38 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %39 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %40 = load i32, i32* @MDIO_PMA_REG_8481_LED1_MASK, align 4
  %41 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %37, %struct.bnx2x_phy* %38, i32 %39, i32 %40, i32 0)
  %42 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %43 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %44 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %45 = load i32, i32* @MDIO_PMA_REG_8481_LED2_MASK, align 4
  %46 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %42, %struct.bnx2x_phy* %43, i32 %44, i32 %45, i32 0)
  %47 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %48 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %49 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %50 = load i32, i32* @MDIO_PMA_REG_8481_LED3_MASK, align 4
  %51 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %47, %struct.bnx2x_phy* %48, i32 %49, i32 %50, i32 0)
  %52 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %53 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %54 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %55 = load i32, i32* @MDIO_PMA_REG_8481_LED5_MASK, align 4
  %56 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %52, %struct.bnx2x_phy* %53, i32 %54, i32 %55, i32 0)
  br label %80

57:                                               ; preds = %25
  %58 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %59 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %60 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %61 = load i32, i32* @MDIO_PMA_REG_8481_LED1_MASK, align 4
  %62 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %58, %struct.bnx2x_phy* %59, i32 %60, i32 %61, i32 0)
  %63 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %64 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84858, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %57
  %69 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %70 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %71 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %72 = load i32, i32* @MDIO_PMA_REG_8481_LED2_MASK, align 4
  %73 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %69, %struct.bnx2x_phy* %70, i32 %71, i32 %72, i32 0)
  %74 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %75 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %76 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %77 = load i32, i32* @MDIO_PMA_REG_8481_LED3_MASK, align 4
  %78 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %74, %struct.bnx2x_phy* %75, i32 %76, i32 %77, i32 0)
  br label %79

79:                                               ; preds = %68, %57
  br label %80

80:                                               ; preds = %79, %36
  br label %426

81:                                               ; preds = %23
  %82 = load i32, i32* @NETIF_MSG_LINK, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 (i32, i8*, ...) @DP(i32 %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load %struct.link_params*, %struct.link_params** %5, align 8
  %86 = getelementptr inbounds %struct.link_params, %struct.link_params* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SHARED_HW_CFG_LED_MODE_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = load i32, i32* @SHARED_HW_CFG_LED_EXTPHY1, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %113

92:                                               ; preds = %81
  %93 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %94 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %95 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %96 = load i32, i32* @MDIO_PMA_REG_8481_LED1_MASK, align 4
  %97 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %93, %struct.bnx2x_phy* %94, i32 %95, i32 %96, i32 0)
  %98 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %99 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %100 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %101 = load i32, i32* @MDIO_PMA_REG_8481_LED2_MASK, align 4
  %102 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %98, %struct.bnx2x_phy* %99, i32 %100, i32 %101, i32 0)
  %103 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %104 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %105 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %106 = load i32, i32* @MDIO_PMA_REG_8481_LED3_MASK, align 4
  %107 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %103, %struct.bnx2x_phy* %104, i32 %105, i32 %106, i32 0)
  %108 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %109 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %110 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %111 = load i32, i32* @MDIO_PMA_REG_8481_LED5_MASK, align 4
  %112 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %108, %struct.bnx2x_phy* %109, i32 %110, i32 %111, i32 32)
  br label %175

113:                                              ; preds = %81
  %114 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %115 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %116 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %117 = load i32, i32* @MDIO_PMA_REG_8481_LED1_MASK, align 4
  %118 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %114, %struct.bnx2x_phy* %115, i32 %116, i32 %117, i32 0)
  %119 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %120 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %157

124:                                              ; preds = %113
  %125 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %126 = load i32, i32* @NIG_REG_MASK_INTERRUPT_PORT0, align 4
  %127 = load %struct.link_params*, %struct.link_params** %5, align 8
  %128 = getelementptr inbounds %struct.link_params, %struct.link_params* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = mul nsw i32 %129, 4
  %131 = add nsw i32 %126, %130
  %132 = call i32 @REG_RD(%struct.bnx2x* %125, i32 %131)
  %133 = load i32, i32* @NIG_MASK_MI_INT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %124
  %137 = load i32, i32* @LINK_FLAGS_INT_DISABLED, align 4
  %138 = load %struct.link_params*, %struct.link_params** %5, align 8
  %139 = getelementptr inbounds %struct.link_params, %struct.link_params* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %143 = load i32, i32* @NIG_REG_MASK_INTERRUPT_PORT0, align 4
  %144 = load %struct.link_params*, %struct.link_params** %5, align 8
  %145 = getelementptr inbounds %struct.link_params, %struct.link_params* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = mul nsw i32 %146, 4
  %148 = add nsw i32 %143, %147
  %149 = load i32, i32* @NIG_MASK_MI_INT, align 4
  %150 = call i32 @bnx2x_bits_dis(%struct.bnx2x* %142, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %136, %124
  %152 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %153 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %154 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %155 = load i32, i32* @MDIO_PMA_REG_8481_SIGNAL_MASK, align 4
  %156 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %152, %struct.bnx2x_phy* %153, i32 %154, i32 %155, i32 0)
  br label %157

157:                                              ; preds = %151, %113
  %158 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %159 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84858, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %174

163:                                              ; preds = %157
  %164 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %165 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %166 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %167 = load i32, i32* @MDIO_PMA_REG_8481_LED2_MASK, align 4
  %168 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %164, %struct.bnx2x_phy* %165, i32 %166, i32 %167, i32 0)
  %169 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %170 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %171 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %172 = load i32, i32* @MDIO_PMA_REG_8481_LED3_MASK, align 4
  %173 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %169, %struct.bnx2x_phy* %170, i32 %171, i32 %172, i32 0)
  br label %174

174:                                              ; preds = %163, %157
  br label %175

175:                                              ; preds = %174, %92
  br label %426

176:                                              ; preds = %23
  %177 = load i32, i32* @NETIF_MSG_LINK, align 4
  %178 = load i32, i32* %9, align 4
  %179 = call i32 (i32, i8*, ...) @DP(i32 %177, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %178)
  %180 = load %struct.link_params*, %struct.link_params** %5, align 8
  %181 = getelementptr inbounds %struct.link_params, %struct.link_params* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @SHARED_HW_CFG_LED_MODE_SHIFT, align 4
  %184 = shl i32 %182, %183
  %185 = load i32, i32* @SHARED_HW_CFG_LED_EXTPHY1, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %223

187:                                              ; preds = %176
  %188 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %189 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %190 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %191 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL, align 4
  %192 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %188, %struct.bnx2x_phy* %189, i32 %190, i32 %191, i32* %8)
  %193 = load i32, i32* %8, align 4
  %194 = and i32 %193, 32768
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = or i32 %195, 9362
  store i32 %196, i32* %8, align 4
  %197 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %198 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %199 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %200 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL, align 4
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %197, %struct.bnx2x_phy* %198, i32 %199, i32 %200, i32 %201)
  %203 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %204 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %205 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %206 = load i32, i32* @MDIO_PMA_REG_8481_LED1_MASK, align 4
  %207 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %203, %struct.bnx2x_phy* %204, i32 %205, i32 %206, i32 0)
  %208 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %209 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %210 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %211 = load i32, i32* @MDIO_PMA_REG_8481_LED2_MASK, align 4
  %212 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %208, %struct.bnx2x_phy* %209, i32 %210, i32 %211, i32 32)
  %213 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %214 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %215 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %216 = load i32, i32* @MDIO_PMA_REG_8481_LED3_MASK, align 4
  %217 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %213, %struct.bnx2x_phy* %214, i32 %215, i32 %216, i32 32)
  %218 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %219 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %220 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %221 = load i32, i32* @MDIO_PMA_REG_8481_LED5_MASK, align 4
  %222 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %218, %struct.bnx2x_phy* %219, i32 %220, i32 %221, i32 0)
  br label %296

223:                                              ; preds = %176
  %224 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %225 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %226 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %227 = load i32, i32* @MDIO_PMA_REG_8481_LED1_MASK, align 4
  %228 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %224, %struct.bnx2x_phy* %225, i32 %226, i32 %227, i32 32)
  %229 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %230 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %262

234:                                              ; preds = %223
  %235 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %236 = load i32, i32* @NIG_REG_MASK_INTERRUPT_PORT0, align 4
  %237 = load %struct.link_params*, %struct.link_params** %5, align 8
  %238 = getelementptr inbounds %struct.link_params, %struct.link_params* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = mul nsw i32 %239, 4
  %241 = add nsw i32 %236, %240
  %242 = call i32 @REG_RD(%struct.bnx2x* %235, i32 %241)
  %243 = load i32, i32* @NIG_MASK_MI_INT, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %261

246:                                              ; preds = %234
  %247 = load i32, i32* @LINK_FLAGS_INT_DISABLED, align 4
  %248 = load %struct.link_params*, %struct.link_params** %5, align 8
  %249 = getelementptr inbounds %struct.link_params, %struct.link_params* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 8
  %252 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %253 = load i32, i32* @NIG_REG_MASK_INTERRUPT_PORT0, align 4
  %254 = load %struct.link_params*, %struct.link_params** %5, align 8
  %255 = getelementptr inbounds %struct.link_params, %struct.link_params* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = mul nsw i32 %256, 4
  %258 = add nsw i32 %253, %257
  %259 = load i32, i32* @NIG_MASK_MI_INT, align 4
  %260 = call i32 @bnx2x_bits_dis(%struct.bnx2x* %252, i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %246, %234
  br label %262

262:                                              ; preds = %261, %223
  %263 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %264 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84858, align 4
  %267 = icmp eq i32 %265, %266
  br i1 %267, label %268, label %289

268:                                              ; preds = %262
  %269 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %270 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %271 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %272 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL, align 4
  %273 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %269, %struct.bnx2x_phy* %270, i32 %271, i32 %272, i32* %8)
  %274 = load i32, i32* %8, align 4
  %275 = and i32 %274, -449
  store i32 %275, i32* %8, align 4
  %276 = load i32, i32* %8, align 4
  %277 = or i32 %276, 128
  store i32 %277, i32* %8, align 4
  %278 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %279 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %280 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %281 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL, align 4
  %282 = load i32, i32* %8, align 4
  %283 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %278, %struct.bnx2x_phy* %279, i32 %280, i32 %281, i32 %282)
  %284 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %285 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %286 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %287 = load i32, i32* @MDIO_PMA_REG_8481_LED3_MASK, align 4
  %288 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %284, %struct.bnx2x_phy* %285, i32 %286, i32 %287, i32 32)
  br label %295

289:                                              ; preds = %262
  %290 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %291 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %292 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %293 = load i32, i32* @MDIO_PMA_REG_8481_SIGNAL_MASK, align 4
  %294 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %290, %struct.bnx2x_phy* %291, i32 %292, i32 %293, i32 32)
  br label %295

295:                                              ; preds = %289, %268
  br label %296

296:                                              ; preds = %295, %187
  br label %426

297:                                              ; preds = %23
  %298 = load i32, i32* @NETIF_MSG_LINK, align 4
  %299 = load i32, i32* %9, align 4
  %300 = call i32 (i32, i8*, ...) @DP(i32 %298, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %299)
  %301 = load %struct.link_params*, %struct.link_params** %5, align 8
  %302 = getelementptr inbounds %struct.link_params, %struct.link_params* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @SHARED_HW_CFG_LED_MODE_SHIFT, align 4
  %305 = shl i32 %303, %304
  %306 = load i32, i32* @SHARED_HW_CFG_LED_EXTPHY1, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %349

308:                                              ; preds = %297
  %309 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %310 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %311 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %312 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL, align 4
  %313 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %309, %struct.bnx2x_phy* %310, i32 %311, i32 %312, i32* %8)
  %314 = load i32, i32* %8, align 4
  %315 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL_LED4_ENABLE_MASK, align 4
  %316 = and i32 %314, %315
  %317 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL_LED4_ENABLE_SHIFT, align 4
  %318 = ashr i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %328, label %320

320:                                              ; preds = %308
  %321 = load i32, i32* @NETIF_MSG_LINK, align 4
  %322 = call i32 (i32, i8*, ...) @DP(i32 %321, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %323 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %324 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %325 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %326 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL, align 4
  %327 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %323, %struct.bnx2x_phy* %324, i32 %325, i32 %326, i32 42130)
  br label %328

328:                                              ; preds = %320, %308
  %329 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %330 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %331 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %332 = load i32, i32* @MDIO_PMA_REG_8481_LED1_MASK, align 4
  %333 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %329, %struct.bnx2x_phy* %330, i32 %331, i32 %332, i32 16)
  %334 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %335 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %336 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %337 = load i32, i32* @MDIO_PMA_REG_8481_LED2_MASK, align 4
  %338 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %334, %struct.bnx2x_phy* %335, i32 %336, i32 %337, i32 128)
  %339 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %340 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %341 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %342 = load i32, i32* @MDIO_PMA_REG_8481_LED3_MASK, align 4
  %343 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %339, %struct.bnx2x_phy* %340, i32 %341, i32 %342, i32 152)
  %344 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %345 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %346 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %347 = load i32, i32* @MDIO_PMA_REG_8481_LED5_MASK, align 4
  %348 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %344, %struct.bnx2x_phy* %345, i32 %346, i32 %347, i32 64)
  br label %425

349:                                              ; preds = %297
  %350 = load %struct.link_params*, %struct.link_params** %5, align 8
  %351 = getelementptr inbounds %struct.link_params, %struct.link_params* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @SHARED_HW_CFG_LED_MODE_SHIFT, align 4
  %354 = shl i32 %352, %353
  %355 = load i32, i32* @SHARED_HW_CFG_LED_EXTPHY2, align 4
  %356 = icmp eq i32 %354, %355
  %357 = zext i1 %356 to i64
  %358 = select i1 %356, i32 152, i32 128
  store i32 %358, i32* %8, align 4
  %359 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %360 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %361 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %362 = load i32, i32* @MDIO_PMA_REG_8481_LED1_MASK, align 4
  %363 = load i32, i32* %8, align 4
  %364 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %359, %struct.bnx2x_phy* %360, i32 %361, i32 %362, i32 %363)
  %365 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %366 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %367 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %368 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL, align 4
  %369 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %365, %struct.bnx2x_phy* %366, i32 %367, i32 %368, i32* %8)
  %370 = load i32, i32* %8, align 4
  %371 = and i32 %370, -449
  store i32 %371, i32* %8, align 4
  %372 = load i32, i32* %8, align 4
  %373 = or i32 %372, 64
  store i32 %373, i32* %8, align 4
  %374 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %375 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %376 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %377 = load i32, i32* @MDIO_PMA_REG_8481_LINK_SIGNAL, align 4
  %378 = load i32, i32* %8, align 4
  %379 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %374, %struct.bnx2x_phy* %375, i32 %376, i32 %377, i32 %378)
  %380 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %381 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84858, align 4
  %384 = icmp eq i32 %382, %383
  br i1 %384, label %385, label %396

385:                                              ; preds = %349
  %386 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %387 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %388 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %389 = load i32, i32* @MDIO_PMA_REG_8481_LED2_MASK, align 4
  %390 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %386, %struct.bnx2x_phy* %387, i32 %388, i32 %389, i32 24)
  %391 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %392 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %393 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %394 = load i32, i32* @MDIO_PMA_REG_8481_LED3_MASK, align 4
  %395 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %391, %struct.bnx2x_phy* %392, i32 %393, i32 %394, i32 6)
  br label %396

396:                                              ; preds = %385, %349
  %397 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %398 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834, align 4
  %401 = icmp eq i32 %399, %400
  br i1 %401, label %402, label %424

402:                                              ; preds = %396
  %403 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %404 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %405 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %406 = load i32, i32* @MDIO_PMA_REG_8481_SIGNAL_MASK, align 4
  %407 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %403, %struct.bnx2x_phy* %404, i32 %405, i32 %406, i32 64)
  %408 = load %struct.link_params*, %struct.link_params** %5, align 8
  %409 = getelementptr inbounds %struct.link_params, %struct.link_params* %408, i32 0, i32 2
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @LINK_FLAGS_INT_DISABLED, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %423

414:                                              ; preds = %402
  %415 = load %struct.link_params*, %struct.link_params** %5, align 8
  %416 = call i32 @bnx2x_link_int_enable(%struct.link_params* %415)
  %417 = load i32, i32* @LINK_FLAGS_INT_DISABLED, align 4
  %418 = xor i32 %417, -1
  %419 = load %struct.link_params*, %struct.link_params** %5, align 8
  %420 = getelementptr inbounds %struct.link_params, %struct.link_params* %419, i32 0, i32 2
  %421 = load i32, i32* %420, align 8
  %422 = and i32 %421, %418
  store i32 %422, i32* %420, align 8
  br label %423

423:                                              ; preds = %414, %402
  br label %424

424:                                              ; preds = %423, %396
  br label %425

425:                                              ; preds = %424, %328
  br label %426

426:                                              ; preds = %23, %425, %296, %175, %80
  %427 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %428 = call i64 @CHIP_IS_E3(%struct.bnx2x* %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %436

430:                                              ; preds = %426
  %431 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %432 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %433 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %434 = load i32, i32* @MDIO_WC_REG_GP2_STATUS_GP_2_1, align 4
  %435 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %431, %struct.bnx2x_phy* %432, i32 %433, i32 %434, i32* %8)
  br label %436

436:                                              ; preds = %430, %426
  ret void
}

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @BP_PATH(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_bits_dis(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_link_int_enable(%struct.link_params*) #1

declare dso_local i64 @CHIP_IS_E3(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
