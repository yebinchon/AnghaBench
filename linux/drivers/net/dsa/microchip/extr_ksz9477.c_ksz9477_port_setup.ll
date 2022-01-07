; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_port_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_port_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.ksz_port* }
%struct.ksz_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i8* }

@REG_PORT_CTRL_0 = common dso_local global i32 0, align 4
@PORT_TAIL_TAG_ENABLE = common dso_local global i32 0, align 4
@PORT_MAC_LOOPBACK = common dso_local global i32 0, align 4
@REG_PORT_MAC_CTRL_1 = common dso_local global i32 0, align 4
@PORT_BACK_PRESSURE = common dso_local global i32 0, align 4
@P_BCAST_STORM_CTRL = common dso_local global i32 0, align 4
@PORT_BROADCAST_STORM = common dso_local global i32 0, align 4
@P_PRIO_CTRL = common dso_local global i32 0, align 4
@PORT_DIFFSERV_PRIO_ENABLE = common dso_local global i32 0, align 4
@REG_PORT_MRI_MAC_CTRL = common dso_local global i32 0, align 4
@PORT_USER_PRIO_CEILING = common dso_local global i32 0, align 4
@REG_PORT_MTI_QUEUE_CTRL_0__4 = common dso_local global i32 0, align 4
@MTI_PVID_REPLACE = common dso_local global i32 0, align 4
@PORT_802_1P_PRIO_ENABLE = common dso_local global i32 0, align 4
@PORT_FORCE_TX_FLOW_CTRL = common dso_local global i32 0, align 4
@PORT_FORCE_RX_FLOW_CTRL = common dso_local global i32 0, align 4
@REG_PORT_XMII_CTRL_1 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i8* null, align 8
@SPEED_1000 = common dso_local global i8* null, align 8
@PORT_RGMII_ID_IG_ENABLE = common dso_local global i32 0, align 4
@PORT_RGMII_ID_EG_ENABLE = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_ID = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_RXID = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_TXID = common dso_local global i32 0, align 4
@REG_PORT_PHY_INT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_device*, i32, i32)* @ksz9477_port_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz9477_port_setup(%struct.ksz_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ksz_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ksz_port*, align 8
  store %struct.ksz_device* %0, %struct.ksz_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %12 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %11, i32 0, i32 8
  %13 = load %struct.ksz_port*, %struct.ksz_port** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %13, i64 %15
  store %struct.ksz_port* %16, %struct.ksz_port** %10, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @REG_PORT_CTRL_0, align 4
  %23 = load i32, i32* @PORT_TAIL_TAG_ENABLE, align 4
  %24 = call i32 @ksz_port_cfg(%struct.ksz_device* %20, i32 %21, i32 %22, i32 %23, i32 1)
  br label %25

25:                                               ; preds = %19, %3
  %26 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @REG_PORT_CTRL_0, align 4
  %29 = load i32, i32* @PORT_MAC_LOOPBACK, align 4
  %30 = call i32 @ksz_port_cfg(%struct.ksz_device* %26, i32 %27, i32 %28, i32 %29, i32 0)
  %31 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @REG_PORT_MAC_CTRL_1, align 4
  %34 = load i32, i32* @PORT_BACK_PRESSURE, align 4
  %35 = call i32 @ksz_port_cfg(%struct.ksz_device* %31, i32 %32, i32 %33, i32 %34, i32 1)
  %36 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @P_BCAST_STORM_CTRL, align 4
  %39 = load i32, i32* @PORT_BROADCAST_STORM, align 4
  %40 = call i32 @ksz_port_cfg(%struct.ksz_device* %36, i32 %37, i32 %38, i32 %39, i32 1)
  %41 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @P_PRIO_CTRL, align 4
  %44 = load i32, i32* @PORT_DIFFSERV_PRIO_ENABLE, align 4
  %45 = call i32 @ksz_port_cfg(%struct.ksz_device* %41, i32 %42, i32 %43, i32 %44, i32 0)
  %46 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @REG_PORT_MRI_MAC_CTRL, align 4
  %49 = load i32, i32* @PORT_USER_PRIO_CEILING, align 4
  %50 = call i32 @ksz_port_cfg(%struct.ksz_device* %46, i32 %47, i32 %48, i32 %49, i32 0)
  %51 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @REG_PORT_MTI_QUEUE_CTRL_0__4, align 4
  %54 = load i32, i32* @MTI_PVID_REPLACE, align 4
  %55 = call i32 @ksz9477_port_cfg32(%struct.ksz_device* %51, i32 %52, i32 %53, i32 %54, i32 0)
  %56 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @P_PRIO_CTRL, align 4
  %59 = load i32, i32* @PORT_802_1P_PRIO_ENABLE, align 4
  %60 = call i32 @ksz_port_cfg(%struct.ksz_device* %56, i32 %57, i32 %58, i32 %59, i32 1)
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %63 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %25
  %67 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @REG_PORT_CTRL_0, align 4
  %70 = load i32, i32* @PORT_FORCE_TX_FLOW_CTRL, align 4
  %71 = load i32, i32* @PORT_FORCE_RX_FLOW_CTRL, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @ksz_port_cfg(%struct.ksz_device* %67, i32 %68, i32 %69, i32 %72, i32 0)
  %74 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %75 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %66
  %79 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @ksz9477_phy_errata_setup(%struct.ksz_device* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %66
  br label %183

83:                                               ; preds = %25
  %84 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @REG_PORT_CTRL_0, align 4
  %87 = load i32, i32* @PORT_FORCE_TX_FLOW_CTRL, align 4
  %88 = load i32, i32* @PORT_FORCE_RX_FLOW_CTRL, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @ksz_port_cfg(%struct.ksz_device* %84, i32 %85, i32 %86, i32 %89, i32 1)
  %91 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @REG_PORT_XMII_CTRL_1, align 4
  %94 = call i32 @ksz_pread8(%struct.ksz_device* %91, i32 %92, i32 %93, i32* %7)
  %95 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %96 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %125 [
    i32 129, label %98
    i32 128, label %107
    i32 130, label %116
  ]

98:                                               ; preds = %83
  %99 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %100 = call i32 @ksz9477_set_xmii(%struct.ksz_device* %99, i32 0, i32* %7)
  %101 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %102 = call i32 @ksz9477_set_gbit(%struct.ksz_device* %101, i32 0, i32* %7)
  %103 = load i8*, i8** @SPEED_100, align 8
  %104 = load %struct.ksz_port*, %struct.ksz_port** %10, align 8
  %105 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  store i8* %103, i8** %106, align 8
  br label %174

107:                                              ; preds = %83
  %108 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %109 = call i32 @ksz9477_set_xmii(%struct.ksz_device* %108, i32 1, i32* %7)
  %110 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %111 = call i32 @ksz9477_set_gbit(%struct.ksz_device* %110, i32 0, i32* %7)
  %112 = load i8*, i8** @SPEED_100, align 8
  %113 = load %struct.ksz_port*, %struct.ksz_port** %10, align 8
  %114 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  store i8* %112, i8** %115, align 8
  br label %174

116:                                              ; preds = %83
  %117 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %118 = call i32 @ksz9477_set_xmii(%struct.ksz_device* %117, i32 2, i32* %7)
  %119 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %120 = call i32 @ksz9477_set_gbit(%struct.ksz_device* %119, i32 1, i32* %7)
  %121 = load i8*, i8** @SPEED_1000, align 8
  %122 = load %struct.ksz_port*, %struct.ksz_port** %10, align 8
  %123 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  store i8* %121, i8** %124, align 8
  br label %174

125:                                              ; preds = %83
  %126 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %127 = call i32 @ksz9477_set_xmii(%struct.ksz_device* %126, i32 3, i32* %7)
  %128 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %129 = call i32 @ksz9477_set_gbit(%struct.ksz_device* %128, i32 1, i32* %7)
  %130 = load i32, i32* @PORT_RGMII_ID_IG_ENABLE, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %7, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* @PORT_RGMII_ID_EG_ENABLE, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %7, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %7, align 4
  %138 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %139 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @PHY_INTERFACE_MODE_RGMII_ID, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %149, label %143

143:                                              ; preds = %125
  %144 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %145 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @PHY_INTERFACE_MODE_RGMII_RXID, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %143, %125
  %150 = load i32, i32* @PORT_RGMII_ID_IG_ENABLE, align 4
  %151 = load i32, i32* %7, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %149, %143
  %154 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %155 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @PHY_INTERFACE_MODE_RGMII_ID, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %165, label %159

159:                                              ; preds = %153
  %160 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %161 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @PHY_INTERFACE_MODE_RGMII_TXID, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %159, %153
  %166 = load i32, i32* @PORT_RGMII_ID_EG_ENABLE, align 4
  %167 = load i32, i32* %7, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %7, align 4
  br label %169

169:                                              ; preds = %165, %159
  %170 = load i8*, i8** @SPEED_1000, align 8
  %171 = load %struct.ksz_port*, %struct.ksz_port** %10, align 8
  %172 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 2
  store i8* %170, i8** %173, align 8
  br label %174

174:                                              ; preds = %169, %116, %107, %98
  %175 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %176 = load i32, i32* %5, align 4
  %177 = load i32, i32* @REG_PORT_XMII_CTRL_1, align 4
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @ksz_pwrite8(%struct.ksz_device* %175, i32 %176, i32 %177, i32 %178)
  %180 = load %struct.ksz_port*, %struct.ksz_port** %10, align 8
  %181 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  store i32 1, i32* %182, align 8
  br label %183

183:                                              ; preds = %174, %82
  %184 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %185 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %184, i32 0, i32 6
  %186 = call i32 @mutex_lock(i32* %185)
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %183
  %190 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %191 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  store i32 %192, i32* %8, align 4
  %193 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %194 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %197 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %196, i32 0, i32 3
  store i32 %195, i32* %197, align 4
  %198 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %199 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %202 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %201, i32 0, i32 5
  store i32 %200, i32* %202, align 4
  br label %230

203:                                              ; preds = %183
  %204 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %205 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.ksz_port*, %struct.ksz_port** %10, align 8
  %208 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = or i32 %206, %209
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* %5, align 4
  %212 = shl i32 1, %211
  %213 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %214 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 4
  %217 = load %struct.ksz_port*, %struct.ksz_port** %10, align 8
  %218 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %203
  %223 = load i32, i32* %5, align 4
  %224 = shl i32 1, %223
  %225 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %226 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %224
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %222, %203
  br label %230

230:                                              ; preds = %229, %189
  %231 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %232 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %231, i32 0, i32 6
  %233 = call i32 @mutex_unlock(i32* %232)
  %234 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %235 = load i32, i32* %5, align 4
  %236 = load i32, i32* %8, align 4
  %237 = call i32 @ksz9477_cfg_port_member(%struct.ksz_device* %234, i32 %235, i32 %236)
  %238 = load i32, i32* %5, align 4
  %239 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %240 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp slt i32 %238, %241
  br i1 %242, label %243, label %248

243:                                              ; preds = %230
  %244 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %245 = load i32, i32* %5, align 4
  %246 = load i32, i32* @REG_PORT_PHY_INT_ENABLE, align 4
  %247 = call i32 @ksz_pread16(%struct.ksz_device* %244, i32 %245, i32 %246, i32* %9)
  br label %248

248:                                              ; preds = %243, %230
  ret void
}

declare dso_local i32 @ksz_port_cfg(%struct.ksz_device*, i32, i32, i32, i32) #1

declare dso_local i32 @ksz9477_port_cfg32(%struct.ksz_device*, i32, i32, i32, i32) #1

declare dso_local i32 @ksz9477_phy_errata_setup(%struct.ksz_device*, i32) #1

declare dso_local i32 @ksz_pread8(%struct.ksz_device*, i32, i32, i32*) #1

declare dso_local i32 @ksz9477_set_xmii(%struct.ksz_device*, i32, i32*) #1

declare dso_local i32 @ksz9477_set_gbit(%struct.ksz_device*, i32, i32*) #1

declare dso_local i32 @ksz_pwrite8(%struct.ksz_device*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ksz9477_cfg_port_member(%struct.ksz_device*, i32, i32) #1

declare dso_local i32 @ksz_pread16(%struct.ksz_device*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
