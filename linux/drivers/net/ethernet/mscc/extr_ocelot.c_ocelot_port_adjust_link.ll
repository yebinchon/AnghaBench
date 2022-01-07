; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_port_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_port_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ocelot_port = type { i32, %struct.ocelot* }
%struct.ocelot = type { i32 }

@OCELOT_SPEED_10 = common dso_local global i32 0, align 4
@OCELOT_SPEED_100 = common dso_local global i32 0, align 4
@OCELOT_SPEED_1000 = common dso_local global i32 0, align 4
@DEV_MAC_MODE_CFG_GIGA_MODE_ENA = common dso_local global i32 0, align 4
@OCELOT_SPEED_2500 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unsupported PHY speed: %d\0A\00", align 1
@DEV_MAC_MODE_CFG_FDX_ENA = common dso_local global i32 0, align 4
@DEV_MAC_MODE_CFG = common dso_local global i32 0, align 4
@DEV_MAC_IFG_CFG = common dso_local global i32 0, align 4
@DEV_MAC_HDX_CFG_SEED_LOAD = common dso_local global i32 0, align 4
@DEV_MAC_HDX_CFG = common dso_local global i32 0, align 4
@DEV_PORT_MISC_HDX_FAST_DIS = common dso_local global i32 0, align 4
@DEV_PORT_MISC = common dso_local global i32 0, align 4
@PCS1G_MODE_CFG_SGMII_MODE_ENA = common dso_local global i32 0, align 4
@PCS1G_MODE_CFG = common dso_local global i32 0, align 4
@PCS1G_SD_CFG_SD_SEL = common dso_local global i32 0, align 4
@PCS1G_SD_CFG = common dso_local global i32 0, align 4
@PCS1G_CFG_PCS_ENA = common dso_local global i32 0, align 4
@PCS1G_CFG = common dso_local global i32 0, align 4
@PCS1G_ANEG_CFG = common dso_local global i32 0, align 4
@PCS1G_LB_CFG = common dso_local global i32 0, align 4
@VLAN_ETH_FRAME_LEN = common dso_local global i32 0, align 4
@DEV_MAC_MAXLEN_CFG = common dso_local global i32 0, align 4
@ETH_P_8021AD = common dso_local global i32 0, align 4
@DEV_MAC_TAGS_CFG_VLAN_AWR_ENA = common dso_local global i32 0, align 4
@DEV_MAC_TAGS_CFG_VLAN_LEN_AWR_ENA = common dso_local global i32 0, align 4
@DEV_MAC_TAGS_CFG = common dso_local global i32 0, align 4
@DEV_MAC_ENA_CFG_RX_ENA = common dso_local global i32 0, align 4
@DEV_MAC_ENA_CFG_TX_ENA = common dso_local global i32 0, align 4
@DEV_MAC_ENA_CFG = common dso_local global i32 0, align 4
@DEV_CLOCK_CFG = common dso_local global i32 0, align 4
@DEV_MAC_FC_MAC_HIGH_CFG = common dso_local global i32 0, align 4
@DEV_MAC_FC_MAC_LOW_CFG = common dso_local global i32 0, align 4
@ANA_PFC_PFC_CFG = common dso_local global i32 0, align 4
@SYS_PAUSE_CFG_PAUSE_ENA = common dso_local global i32 0, align 4
@SYS_PAUSE_CFG = common dso_local global i32 0, align 4
@QSYS_SWITCH_PORT_MODE_INGRESS_DROP_MODE = common dso_local global i32 0, align 4
@QSYS_SWITCH_PORT_MODE_PORT_ENA = common dso_local global i32 0, align 4
@QSYS_SWITCH_PORT_MODE = common dso_local global i32 0, align 4
@SYS_MAC_FC_CFG_RX_FC_ENA = common dso_local global i32 0, align 4
@SYS_MAC_FC_CFG_TX_FC_ENA = common dso_local global i32 0, align 4
@SYS_MAC_FC_CFG_ZERO_PAUSE_ENA = common dso_local global i32 0, align 4
@SYS_MAC_FC_CFG = common dso_local global i32 0, align 4
@ANA_POL_FLOWC = common dso_local global i32 0, align 4
@OCELOT_BUFFER_CELL_SZ = common dso_local global i32 0, align 4
@SYS_ATOP = common dso_local global i32 0, align 4
@SYS_ATOP_TOT_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ocelot_port_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocelot_port_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ocelot_port*, align 8
  %4 = alloca %struct.ocelot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.ocelot_port* @netdev_priv(%struct.net_device* %9)
  store %struct.ocelot_port* %10, %struct.ocelot_port** %3, align 8
  %11 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %12 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %11, i32 0, i32 1
  %13 = load %struct.ocelot*, %struct.ocelot** %12, align 8
  store %struct.ocelot* %13, %struct.ocelot** %4, align 8
  %14 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %15 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %32 [
    i32 131, label %22
    i32 130, label %24
    i32 129, label %26
    i32 128, label %29
  ]

22:                                               ; preds = %1
  %23 = load i32, i32* @OCELOT_SPEED_10, align 4
  store i32 %23, i32* %6, align 4
  br label %40

24:                                               ; preds = %1
  %25 = load i32, i32* @OCELOT_SPEED_100, align 4
  store i32 %25, i32* %6, align 4
  br label %40

26:                                               ; preds = %1
  %27 = load i32, i32* @OCELOT_SPEED_1000, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @DEV_MAC_MODE_CFG_GIGA_MODE_ENA, align 4
  store i32 %28, i32* %8, align 4
  br label %40

29:                                               ; preds = %1
  %30 = load i32, i32* @OCELOT_SPEED_2500, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @DEV_MAC_MODE_CFG_GIGA_MODE_ENA, align 4
  store i32 %31, i32* %8, align 4
  br label %40

32:                                               ; preds = %1
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @netdev_err(%struct.net_device* %33, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %190

40:                                               ; preds = %29, %26, %24, %22
  %41 = load %struct.net_device*, %struct.net_device** %2, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = call i32 @phy_print_status(%struct.TYPE_2__* %43)
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %40
  br label %190

52:                                               ; preds = %40
  %53 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %54 = load i32, i32* @DEV_MAC_MODE_CFG_FDX_ENA, align 4
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @DEV_MAC_MODE_CFG, align 4
  %58 = call i32 @ocelot_port_writel(%struct.ocelot_port* %53, i32 %56, i32 %57)
  %59 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %60 = call i32 @DEV_MAC_IFG_CFG_TX_IFG(i32 5)
  %61 = load i32, i32* @DEV_MAC_IFG_CFG, align 4
  %62 = call i32 @ocelot_port_writel(%struct.ocelot_port* %59, i32 %60, i32 %61)
  %63 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %64 = call i32 @DEV_MAC_HDX_CFG_LATE_COL_POS(i32 67)
  %65 = load i32, i32* @DEV_MAC_HDX_CFG_SEED_LOAD, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @DEV_MAC_HDX_CFG, align 4
  %68 = call i32 @ocelot_port_writel(%struct.ocelot_port* %63, i32 %66, i32 %67)
  %69 = call i32 @mdelay(i32 1)
  %70 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %71 = call i32 @DEV_MAC_HDX_CFG_LATE_COL_POS(i32 67)
  %72 = load i32, i32* @DEV_MAC_HDX_CFG, align 4
  %73 = call i32 @ocelot_port_writel(%struct.ocelot_port* %70, i32 %71, i32 %72)
  %74 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %75 = load i32, i32* @DEV_PORT_MISC_HDX_FAST_DIS, align 4
  %76 = load i32, i32* @DEV_PORT_MISC, align 4
  %77 = call i32 @ocelot_port_writel(%struct.ocelot_port* %74, i32 %75, i32 %76)
  %78 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %79 = load i32, i32* @PCS1G_MODE_CFG_SGMII_MODE_ENA, align 4
  %80 = load i32, i32* @PCS1G_MODE_CFG, align 4
  %81 = call i32 @ocelot_port_writel(%struct.ocelot_port* %78, i32 %79, i32 %80)
  %82 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %83 = load i32, i32* @PCS1G_SD_CFG_SD_SEL, align 4
  %84 = load i32, i32* @PCS1G_SD_CFG, align 4
  %85 = call i32 @ocelot_port_writel(%struct.ocelot_port* %82, i32 %83, i32 %84)
  %86 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %87 = load i32, i32* @PCS1G_CFG_PCS_ENA, align 4
  %88 = load i32, i32* @PCS1G_CFG, align 4
  %89 = call i32 @ocelot_port_writel(%struct.ocelot_port* %86, i32 %87, i32 %88)
  %90 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %91 = load i32, i32* @PCS1G_ANEG_CFG, align 4
  %92 = call i32 @ocelot_port_writel(%struct.ocelot_port* %90, i32 0, i32 %91)
  %93 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %94 = load i32, i32* @PCS1G_LB_CFG, align 4
  %95 = call i32 @ocelot_port_writel(%struct.ocelot_port* %93, i32 0, i32 %94)
  %96 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %97 = load i32, i32* @VLAN_ETH_FRAME_LEN, align 4
  %98 = load i32, i32* @DEV_MAC_MAXLEN_CFG, align 4
  %99 = call i32 @ocelot_port_writel(%struct.ocelot_port* %96, i32 %97, i32 %98)
  %100 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %101 = load i32, i32* @ETH_P_8021AD, align 4
  %102 = call i32 @DEV_MAC_TAGS_CFG_TAG_ID(i32 %101)
  %103 = load i32, i32* @DEV_MAC_TAGS_CFG_VLAN_AWR_ENA, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @DEV_MAC_TAGS_CFG_VLAN_LEN_AWR_ENA, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @DEV_MAC_TAGS_CFG, align 4
  %108 = call i32 @ocelot_port_writel(%struct.ocelot_port* %100, i32 %106, i32 %107)
  %109 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %110 = load i32, i32* @DEV_MAC_ENA_CFG_RX_ENA, align 4
  %111 = load i32, i32* @DEV_MAC_ENA_CFG_TX_ENA, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @DEV_MAC_ENA_CFG, align 4
  %114 = call i32 @ocelot_port_writel(%struct.ocelot_port* %109, i32 %112, i32 %113)
  %115 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @DEV_CLOCK_CFG_LINK_SPEED(i32 %116)
  %118 = load i32, i32* @DEV_CLOCK_CFG, align 4
  %119 = call i32 @ocelot_port_writel(%struct.ocelot_port* %115, i32 %117, i32 %118)
  %120 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %121 = load i32, i32* @DEV_MAC_FC_MAC_HIGH_CFG, align 4
  %122 = call i32 @ocelot_port_writel(%struct.ocelot_port* %120, i32 0, i32 %121)
  %123 = load %struct.ocelot_port*, %struct.ocelot_port** %3, align 8
  %124 = load i32, i32* @DEV_MAC_FC_MAC_LOW_CFG, align 4
  %125 = call i32 @ocelot_port_writel(%struct.ocelot_port* %123, i32 0, i32 %124)
  %126 = load %struct.ocelot*, %struct.ocelot** %4, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @ANA_PFC_PFC_CFG_FC_LINK_SPEED(i32 %127)
  %129 = load i32, i32* @ANA_PFC_PFC_CFG, align 4
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @ocelot_write_gix(%struct.ocelot* %126, i32 %128, i32 %129, i32 %130)
  %132 = load %struct.ocelot*, %struct.ocelot** %4, align 8
  %133 = load i32, i32* @SYS_PAUSE_CFG_PAUSE_ENA, align 4
  %134 = call i32 @SYS_PAUSE_CFG_PAUSE_STOP(i32 101)
  %135 = or i32 %133, %134
  %136 = call i32 @SYS_PAUSE_CFG_PAUSE_START(i32 152)
  %137 = or i32 %135, %136
  %138 = load i32, i32* @SYS_PAUSE_CFG, align 4
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @ocelot_write_rix(%struct.ocelot* %132, i32 %137, i32 %138, i32 %139)
  %141 = load %struct.ocelot*, %struct.ocelot** %4, align 8
  %142 = load i32, i32* @QSYS_SWITCH_PORT_MODE_INGRESS_DROP_MODE, align 4
  %143 = call i32 @QSYS_SWITCH_PORT_MODE_SCH_NEXT_CFG(i32 1)
  %144 = or i32 %142, %143
  %145 = load i32, i32* @QSYS_SWITCH_PORT_MODE_PORT_ENA, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @QSYS_SWITCH_PORT_MODE, align 4
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @ocelot_write_rix(%struct.ocelot* %141, i32 %146, i32 %147, i32 %148)
  %150 = load %struct.ocelot*, %struct.ocelot** %4, align 8
  %151 = call i32 @SYS_MAC_FC_CFG_PAUSE_VAL_CFG(i32 65535)
  %152 = load i32, i32* @SYS_MAC_FC_CFG_RX_FC_ENA, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @SYS_MAC_FC_CFG_TX_FC_ENA, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @SYS_MAC_FC_CFG_ZERO_PAUSE_ENA, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @SYS_MAC_FC_CFG_FC_LATENCY_CFG(i32 7)
  %159 = or i32 %157, %158
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @SYS_MAC_FC_CFG_FC_LINK_SPEED(i32 %160)
  %162 = or i32 %159, %161
  %163 = load i32, i32* @SYS_MAC_FC_CFG, align 4
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @ocelot_write_rix(%struct.ocelot* %150, i32 %162, i32 %163, i32 %164)
  %166 = load %struct.ocelot*, %struct.ocelot** %4, align 8
  %167 = load i32, i32* @ANA_POL_FLOWC, align 4
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @ocelot_write_rix(%struct.ocelot* %166, i32 0, i32 %167, i32 %168)
  %170 = load %struct.ocelot*, %struct.ocelot** %4, align 8
  %171 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @VLAN_ETH_FRAME_LEN, align 4
  %174 = mul nsw i32 9, %173
  %175 = sub nsw i32 %172, %174
  %176 = load i32, i32* @OCELOT_BUFFER_CELL_SZ, align 4
  %177 = sdiv i32 %175, %176
  store i32 %177, i32* %7, align 4
  %178 = load %struct.ocelot*, %struct.ocelot** %4, align 8
  %179 = load i32, i32* @VLAN_ETH_FRAME_LEN, align 4
  %180 = mul nsw i32 9, %179
  %181 = call i32 @ocelot_wm_enc(i32 %180)
  %182 = load i32, i32* @SYS_ATOP, align 4
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @ocelot_write_rix(%struct.ocelot* %178, i32 %181, i32 %182, i32 %183)
  %185 = load %struct.ocelot*, %struct.ocelot** %4, align 8
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @ocelot_wm_enc(i32 %186)
  %188 = load i32, i32* @SYS_ATOP_TOT_CFG, align 4
  %189 = call i32 @ocelot_write(%struct.ocelot* %185, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %52, %51, %32
  ret void
}

declare dso_local %struct.ocelot_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @phy_print_status(%struct.TYPE_2__*) #1

declare dso_local i32 @ocelot_port_writel(%struct.ocelot_port*, i32, i32) #1

declare dso_local i32 @DEV_MAC_IFG_CFG_TX_IFG(i32) #1

declare dso_local i32 @DEV_MAC_HDX_CFG_LATE_COL_POS(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @DEV_MAC_TAGS_CFG_TAG_ID(i32) #1

declare dso_local i32 @DEV_CLOCK_CFG_LINK_SPEED(i32) #1

declare dso_local i32 @ocelot_write_gix(%struct.ocelot*, i32, i32, i32) #1

declare dso_local i32 @ANA_PFC_PFC_CFG_FC_LINK_SPEED(i32) #1

declare dso_local i32 @ocelot_write_rix(%struct.ocelot*, i32, i32, i32) #1

declare dso_local i32 @SYS_PAUSE_CFG_PAUSE_STOP(i32) #1

declare dso_local i32 @SYS_PAUSE_CFG_PAUSE_START(i32) #1

declare dso_local i32 @QSYS_SWITCH_PORT_MODE_SCH_NEXT_CFG(i32) #1

declare dso_local i32 @SYS_MAC_FC_CFG_PAUSE_VAL_CFG(i32) #1

declare dso_local i32 @SYS_MAC_FC_CFG_FC_LATENCY_CFG(i32) #1

declare dso_local i32 @SYS_MAC_FC_CFG_FC_LINK_SPEED(i32) #1

declare dso_local i32 @ocelot_wm_enc(i32) #1

declare dso_local i32 @ocelot_write(%struct.ocelot*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
