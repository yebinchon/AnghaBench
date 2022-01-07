; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_slave_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_slave_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_slave = type { i32, %struct.phy_device*, %struct.TYPE_6__*, i64, i32 }
%struct.phy_device = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.phy_device*, i32, i64 }
%struct.cpsw_priv = type { i32, %struct.TYPE_7__*, %struct.cpsw_common* }
%struct.TYPE_7__ = type { i32 }
%struct.cpsw_common = type { i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }

@CPSW_SL_RX_PRI_MAP = common dso_local global i32 0, align 4
@RX_PRIORITY_MAPPING = common dso_local global i32 0, align 4
@TX_PRIORITY_MAPPING = common dso_local global i32 0, align 4
@CPSW1_TX_PRI_MAP = common dso_local global i32 0, align 4
@CPSW_MAX_BLKS_TX = common dso_local global i32 0, align 4
@CPSW_MAX_BLKS_TX_SHIFT = common dso_local global i32 0, align 4
@CPSW_MAX_BLKS_RX = common dso_local global i32 0, align 4
@CPSW1_MAX_BLKS = common dso_local global i32 0, align 4
@CPSW2_TX_PRI_MAP = common dso_local global i32 0, align 4
@CPSW2_MAX_BLKS = common dso_local global i32 0, align 4
@CPSW_SL_RX_MAXLEN = common dso_local global i32 0, align 4
@ALE_MCAST_FWD_2 = common dso_local global i32 0, align 4
@cpsw_adjust_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"phy \22%pOF\22 not found on slave %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"phy \22%s\22 not found on slave %d, err %ld\0A\00", align 1
@PHY_MODE_ETHERNET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpsw_slave*, %struct.cpsw_priv*)* @cpsw_slave_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_slave_open(%struct.cpsw_slave* %0, %struct.cpsw_priv* %1) #0 {
  %3 = alloca %struct.cpsw_slave*, align 8
  %4 = alloca %struct.cpsw_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca %struct.cpsw_common*, align 8
  store %struct.cpsw_slave* %0, %struct.cpsw_slave** %3, align 8
  store %struct.cpsw_priv* %1, %struct.cpsw_priv** %4, align 8
  %8 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %9 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %8, i32 0, i32 2
  %10 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  store %struct.cpsw_common* %10, %struct.cpsw_common** %7, align 8
  %11 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %12 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @cpsw_sl_reset(i32 %13, i32 100)
  %15 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %16 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @cpsw_sl_ctl_reset(i32 %17)
  %19 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %20 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CPSW_SL_RX_PRI_MAP, align 4
  %23 = load i32, i32* @RX_PRIORITY_MAPPING, align 4
  %24 = call i32 @cpsw_sl_reg_write(i32 %21, i32 %22, i32 %23)
  %25 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %26 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %54 [
    i32 131, label %28
    i32 130, label %41
    i32 129, label %41
    i32 128, label %41
  ]

28:                                               ; preds = %2
  %29 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %30 = load i32, i32* @TX_PRIORITY_MAPPING, align 4
  %31 = load i32, i32* @CPSW1_TX_PRI_MAP, align 4
  %32 = call i32 @slave_write(%struct.cpsw_slave* %29, i32 %30, i32 %31)
  %33 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %34 = load i32, i32* @CPSW_MAX_BLKS_TX, align 4
  %35 = load i32, i32* @CPSW_MAX_BLKS_TX_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* @CPSW_MAX_BLKS_RX, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @CPSW1_MAX_BLKS, align 4
  %40 = call i32 @slave_write(%struct.cpsw_slave* %33, i32 %38, i32 %39)
  br label %54

41:                                               ; preds = %2, %2, %2
  %42 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %43 = load i32, i32* @TX_PRIORITY_MAPPING, align 4
  %44 = load i32, i32* @CPSW2_TX_PRI_MAP, align 4
  %45 = call i32 @slave_write(%struct.cpsw_slave* %42, i32 %43, i32 %44)
  %46 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %47 = load i32, i32* @CPSW_MAX_BLKS_TX, align 4
  %48 = load i32, i32* @CPSW_MAX_BLKS_TX_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* @CPSW_MAX_BLKS_RX, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @CPSW2_MAX_BLKS, align 4
  %53 = call i32 @slave_write(%struct.cpsw_slave* %46, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %2, %41, %28
  %55 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %56 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @CPSW_SL_RX_MAXLEN, align 4
  %59 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %60 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @cpsw_sl_reg_write(i32 %57, i32 %58, i32 %61)
  %63 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %64 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %65 = call i32 @cpsw_set_slave_mac(%struct.cpsw_slave* %63, %struct.cpsw_priv* %64)
  %66 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %67 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %69 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @cpsw_get_slave_port(i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %73 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %54
  %78 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %79 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @cpsw_add_dual_emac_def_ale_entries(%struct.cpsw_priv* %78, %struct.cpsw_slave* %79, i32 %80)
  br label %95

82:                                               ; preds = %54
  %83 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %84 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %87 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %86, i32 0, i32 1
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %5, align 4
  %92 = shl i32 1, %91
  %93 = load i32, i32* @ALE_MCAST_FWD_2, align 4
  %94 = call i32 @cpsw_ale_add_mcast(i32 %85, i32 %90, i32 %92, i32 0, i32 0, i32 %93)
  br label %95

95:                                               ; preds = %82, %77
  %96 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %97 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %96, i32 0, i32 2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %134

102:                                              ; preds = %95
  %103 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %104 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %103, i32 0, i32 1
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %107 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %106, i32 0, i32 2
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %112 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %111, i32 0, i32 2
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call %struct.phy_device* @of_phy_connect(%struct.TYPE_7__* %105, i64 %110, i32* @cpsw_adjust_link, i32 0, i32 %115)
  store %struct.phy_device* %116, %struct.phy_device** %6, align 8
  %117 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %118 = icmp ne %struct.phy_device* %117, null
  br i1 %118, label %133, label %119

119:                                              ; preds = %102
  %120 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %121 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %124 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %123, i32 0, i32 2
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %130 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i32, i8*, i32, i32, ...) @dev_err(i32 %122, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %128, i32 %131)
  br label %213

133:                                              ; preds = %102
  br label %168

134:                                              ; preds = %95
  %135 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %136 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %135, i32 0, i32 1
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %139 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %138, i32 0, i32 2
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %144 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %143, i32 0, i32 2
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call %struct.phy_device* @phy_connect(%struct.TYPE_7__* %137, i32 %142, i32* @cpsw_adjust_link, i32 %147)
  store %struct.phy_device* %148, %struct.phy_device** %6, align 8
  %149 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %150 = call i64 @IS_ERR(%struct.phy_device* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %134
  %153 = load %struct.cpsw_priv*, %struct.cpsw_priv** %4, align 8
  %154 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %157 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %156, i32 0, i32 2
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %162 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %165 = call i32 @PTR_ERR(%struct.phy_device* %164)
  %166 = call i32 (i32, i8*, i32, i32, ...) @dev_err(i32 %155, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %160, i32 %163, i32 %165)
  br label %213

167:                                              ; preds = %134
  br label %168

168:                                              ; preds = %167, %133
  %169 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %170 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %171 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %170, i32 0, i32 1
  store %struct.phy_device* %169, %struct.phy_device** %171, align 8
  %172 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %173 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %172, i32 0, i32 1
  %174 = load %struct.phy_device*, %struct.phy_device** %173, align 8
  %175 = call i32 @phy_attached_info(%struct.phy_device* %174)
  %176 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %177 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %176, i32 0, i32 1
  %178 = load %struct.phy_device*, %struct.phy_device** %177, align 8
  %179 = call i32 @phy_start(%struct.phy_device* %178)
  %180 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %181 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %180, i32 0, i32 2
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  %184 = load %struct.phy_device*, %struct.phy_device** %183, align 8
  %185 = call i64 @IS_ERR(%struct.phy_device* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %200, label %187

187:                                              ; preds = %168
  %188 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %189 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %188, i32 0, i32 2
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load %struct.phy_device*, %struct.phy_device** %191, align 8
  %193 = load i32, i32* @PHY_MODE_ETHERNET, align 4
  %194 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %195 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %194, i32 0, i32 2
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @phy_set_mode_ext(%struct.phy_device* %192, i32 %193, i32 %198)
  br label %213

200:                                              ; preds = %168
  %201 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %202 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %205 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %204, i32 0, i32 1
  %206 = load %struct.phy_device*, %struct.phy_device** %205, align 8
  %207 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.cpsw_slave*, %struct.cpsw_slave** %3, align 8
  %210 = getelementptr inbounds %struct.cpsw_slave, %struct.cpsw_slave* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @cpsw_phy_sel(i32 %203, i32 %208, i32 %211)
  br label %213

213:                                              ; preds = %119, %152, %200, %187
  ret void
}

declare dso_local i32 @cpsw_sl_reset(i32, i32) #1

declare dso_local i32 @cpsw_sl_ctl_reset(i32) #1

declare dso_local i32 @cpsw_sl_reg_write(i32, i32, i32) #1

declare dso_local i32 @slave_write(%struct.cpsw_slave*, i32, i32) #1

declare dso_local i32 @cpsw_set_slave_mac(%struct.cpsw_slave*, %struct.cpsw_priv*) #1

declare dso_local i32 @cpsw_get_slave_port(i32) #1

declare dso_local i32 @cpsw_add_dual_emac_def_ale_entries(%struct.cpsw_priv*, %struct.cpsw_slave*, i32) #1

declare dso_local i32 @cpsw_ale_add_mcast(i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.phy_device* @of_phy_connect(%struct.TYPE_7__*, i64, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, ...) #1

declare dso_local %struct.phy_device* @phy_connect(%struct.TYPE_7__*, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

declare dso_local i32 @phy_attached_info(%struct.phy_device*) #1

declare dso_local i32 @phy_start(%struct.phy_device*) #1

declare dso_local i32 @phy_set_mode_ext(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @cpsw_phy_sel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
