; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_finish_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_finish_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32 }
%struct.tlan_priv = type { i64, i32, i32, %struct.TYPE_4__, i64, %struct.TYPE_3__*, i64, i32* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@TLAN_NET_CMD_NRESET = common dso_local global i32 0, align 4
@TLAN_NET_CMD_NWRAP = common dso_local global i32 0, align 4
@TLAN_NET_CMD_DUPLEX = common dso_local global i32 0, align 4
@TLAN_NET_CMD = common dso_local global i32 0, align 4
@TLAN_NET_MASK_MASK4 = common dso_local global i32 0, align 4
@TLAN_NET_MASK_MASK5 = common dso_local global i32 0, align 4
@TLAN_NET_MASK_MASK7 = common dso_local global i32 0, align 4
@TLAN_NET_MASK = common dso_local global i32 0, align 4
@TLAN_MAX_RX = common dso_local global i32 0, align 4
@MII_GEN_ID_HI = common dso_local global i32 0, align 4
@MII_GEN_ID_LO = common dso_local global i32 0, align 4
@TLAN_ADAPTER_UNMANAGED_PHY = common dso_local global i32 0, align 4
@MII_GS_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Link forced\0A\00", align 1
@MII_GEN_STS = common dso_local global i32 0, align 4
@NAT_SEM_ID1 = common dso_local global i32 0, align 4
@NAT_SEM_ID2 = common dso_local global i32 0, align 4
@MII_AN_LPA = common dso_local global i32 0, align 4
@TLAN_TLPHY_PAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Link active, %s %uMbps %s-Duplex\0A\00", align 1
@TLAN_PHY_AN_EN_STAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"forced\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Autonegotiation enabled,\00", align 1
@TLAN_PHY_SPEED_100 = common dso_local global i32 0, align 4
@TLAN_PHY_DUPLEX_FULL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Partner capability:\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@media = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Link active\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@TLAN_TLPHY_CTL = common dso_local global i32 0, align 4
@TLAN_TC_INTEN = common dso_local global i32 0, align 4
@TLAN_NET_SIO = common dso_local global i32 0, align 4
@TLAN_NET_SIO_MINTEN = common dso_local global i32 0, align 4
@TLAN_HC_INT_ON = common dso_local global i32 0, align 4
@TLAN_HOST_CMD = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@TLAN_DEBUG_PROBE = common dso_local global i32 0, align 4
@TLAN_HC_REQ_INT = common dso_local global i32 0, align 4
@TLAN_CH_PARM = common dso_local global i64 0, align 8
@TLAN_HC_GO = common dso_local global i32 0, align 4
@TLAN_HC_RT = common dso_local global i32 0, align 4
@TLAN_LED_REG = common dso_local global i32 0, align 4
@TLAN_LED_LINK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [41 x i8] c"Link inactive, will retry in 10 secs...\0A\00", align 1
@TLAN_TIMER_FINISH_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tlan_finish_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlan_finish_reset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tlan_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call %struct.tlan_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.tlan_priv* %15, %struct.tlan_priv** %3, align 8
  %16 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %17 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %16, i32 0, i32 7
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %20 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @TLAN_NET_CMD_NRESET, align 4
  %25 = load i32, i32* @TLAN_NET_CMD_NWRAP, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %4, align 4
  %27 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %28 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %1
  %32 = load i32, i32* @TLAN_NET_CMD_DUPLEX, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %1
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @TLAN_NET_CMD, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @tlan_dio_write8(i64 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @TLAN_NET_MASK_MASK4, align 4
  %43 = load i32, i32* @TLAN_NET_MASK_MASK5, align 4
  %44 = or i32 %42, %43
  store i32 %44, i32* %4, align 4
  %45 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %46 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %35
  %50 = load i32, i32* @TLAN_NET_MASK_MASK7, align 4
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %35
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @TLAN_NET_MASK, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @tlan_dio_write8(i64 %56, i32 %57, i32 %58)
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @TLAN_MAX_RX, align 4
  %64 = call i32 @tlan_dio_write16(i64 %62, i32 %63, i32 1536)
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @MII_GEN_ID_HI, align 4
  %68 = call i32 @tlan_mii_read_reg(%struct.net_device* %65, i32 %66, i32 %67, i32* %11)
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @MII_GEN_ID_LO, align 4
  %72 = call i32 @tlan_mii_read_reg(%struct.net_device* %69, i32 %70, i32 %71, i32* %12)
  %73 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %74 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %73, i32 0, i32 5
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @TLAN_ADAPTER_UNMANAGED_PHY, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %53
  %82 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %83 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81, %53
  %87 = load i32, i32* @MII_GS_LINK, align 4
  store i32 %87, i32* %7, align 4
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %188

90:                                               ; preds = %81
  %91 = load %struct.net_device*, %struct.net_device** %2, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @MII_GEN_STS, align 4
  %94 = call i32 @tlan_mii_read_reg(%struct.net_device* %91, i32 %92, i32 %93, i32* %7)
  %95 = call i32 @udelay(i32 1000)
  %96 = load %struct.net_device*, %struct.net_device** %2, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @MII_GEN_STS, align 4
  %99 = call i32 @tlan_mii_read_reg(%struct.net_device* %96, i32 %97, i32 %98, i32* %7)
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @MII_GS_LINK, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %187

104:                                              ; preds = %90
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @NAT_SEM_ID1, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %173

108:                                              ; preds = %104
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @NAT_SEM_ID2, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %173

112:                                              ; preds = %108
  %113 = load %struct.net_device*, %struct.net_device** %2, align 8
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @MII_AN_LPA, align 4
  %116 = call i32 @tlan_mii_read_reg(%struct.net_device* %113, i32 %114, i32 %115, i32* %8)
  %117 = load %struct.net_device*, %struct.net_device** %2, align 8
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @TLAN_TLPHY_PAR, align 4
  %120 = call i32 @tlan_mii_read_reg(%struct.net_device* %117, i32 %118, i32 %119, i32* %10)
  %121 = load %struct.net_device*, %struct.net_device** %2, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @TLAN_PHY_AN_EN_STAT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @TLAN_PHY_SPEED_100, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i32 100, i32 10
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @TLAN_PHY_DUPLEX_FULL, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %141 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %121, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %128, i32 %134, i8* %140)
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @TLAN_PHY_AN_EN_STAT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %172

146:                                              ; preds = %112
  %147 = load %struct.net_device*, %struct.net_device** %2, align 8
  %148 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %147, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  store i32 5, i32* %13, align 4
  br label %149

149:                                              ; preds = %167, %146
  %150 = load i32, i32* %13, align 4
  %151 = icmp slt i32 %150, 10
  br i1 %151, label %152, label %170

152:                                              ; preds = %149
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %13, align 4
  %155 = shl i32 1, %154
  %156 = and i32 %153, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %152
  %159 = load i32*, i32** @media, align 8
  %160 = load i32, i32* %13, align 4
  %161 = sub nsw i32 %160, 5
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %158, %152
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %13, align 4
  br label %149

170:                                              ; preds = %149
  %171 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %112
  br label %176

173:                                              ; preds = %108, %104
  %174 = load %struct.net_device*, %struct.net_device** %2, align 8
  %175 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %174, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %172
  %177 = load i64, i64* @jiffies, align 8
  %178 = load i32, i32* @HZ, align 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %177, %179
  %181 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %182 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  store i64 %180, i64* %183, align 8
  %184 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %185 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %184, i32 0, i32 3
  %186 = call i32 @add_timer(%struct.TYPE_4__* %185)
  br label %187

187:                                              ; preds = %176, %90
  br label %188

188:                                              ; preds = %187, %86
  %189 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %190 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %220

193:                                              ; preds = %188
  %194 = load %struct.net_device*, %struct.net_device** %2, align 8
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @TLAN_TLPHY_CTL, align 4
  %197 = call i32 @tlan_mii_read_reg(%struct.net_device* %194, i32 %195, i32 %196, i32* %9)
  %198 = load i32, i32* @TLAN_TC_INTEN, align 4
  %199 = load i32, i32* %9, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %9, align 4
  %201 = load %struct.net_device*, %struct.net_device** %2, align 8
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* @TLAN_TLPHY_CTL, align 4
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @tlan_mii_write_reg(%struct.net_device* %201, i32 %202, i32 %203, i32 %204)
  %206 = load %struct.net_device*, %struct.net_device** %2, align 8
  %207 = getelementptr inbounds %struct.net_device, %struct.net_device* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i32, i32* @TLAN_NET_SIO, align 4
  %210 = call i32 @tlan_dio_read8(i64 %208, i32 %209)
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* @TLAN_NET_SIO_MINTEN, align 4
  %212 = load i32, i32* %6, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %6, align 4
  %214 = load %struct.net_device*, %struct.net_device** %2, align 8
  %215 = getelementptr inbounds %struct.net_device, %struct.net_device* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i32, i32* @TLAN_NET_SIO, align 4
  %218 = load i32, i32* %6, align 4
  %219 = call i32 @tlan_dio_write8(i64 %216, i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %193, %188
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* @MII_GS_LINK, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %285

225:                                              ; preds = %220
  %226 = load %struct.net_device*, %struct.net_device** %2, align 8
  %227 = load %struct.net_device*, %struct.net_device** %2, align 8
  %228 = getelementptr inbounds %struct.net_device, %struct.net_device* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @tlan_set_mac(%struct.net_device* %226, i32 0, i32 %229)
  %231 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %232 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %231, i32 0, i32 1
  store i32 1, i32* %232, align 8
  %233 = load i32, i32* @TLAN_HC_INT_ON, align 4
  %234 = ashr i32 %233, 8
  %235 = load %struct.net_device*, %struct.net_device** %2, align 8
  %236 = getelementptr inbounds %struct.net_device, %struct.net_device* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @TLAN_HOST_CMD, align 8
  %239 = add nsw i64 %237, %238
  %240 = add nsw i64 %239, 1
  %241 = call i32 @outb(i32 %234, i64 %240)
  %242 = load i32, i32* @debug, align 4
  %243 = icmp sge i32 %242, 1
  br i1 %243, label %244, label %258

244:                                              ; preds = %225
  %245 = load i32, i32* @debug, align 4
  %246 = load i32, i32* @TLAN_DEBUG_PROBE, align 4
  %247 = icmp ne i32 %245, %246
  br i1 %247, label %248, label %258

248:                                              ; preds = %244
  %249 = load i32, i32* @TLAN_HC_REQ_INT, align 4
  %250 = ashr i32 %249, 8
  %251 = load %struct.net_device*, %struct.net_device** %2, align 8
  %252 = getelementptr inbounds %struct.net_device, %struct.net_device* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @TLAN_HOST_CMD, align 8
  %255 = add nsw i64 %253, %254
  %256 = add nsw i64 %255, 1
  %257 = call i32 @outb(i32 %250, i64 %256)
  br label %258

258:                                              ; preds = %248, %244, %225
  %259 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %260 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.net_device*, %struct.net_device** %2, align 8
  %263 = getelementptr inbounds %struct.net_device, %struct.net_device* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @TLAN_CH_PARM, align 8
  %266 = add nsw i64 %264, %265
  %267 = call i32 @outl(i32 %261, i64 %266)
  %268 = load i32, i32* @TLAN_HC_GO, align 4
  %269 = load i32, i32* @TLAN_HC_RT, align 4
  %270 = or i32 %268, %269
  %271 = load %struct.net_device*, %struct.net_device** %2, align 8
  %272 = getelementptr inbounds %struct.net_device, %struct.net_device* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @TLAN_HOST_CMD, align 8
  %275 = add nsw i64 %273, %274
  %276 = call i32 @outl(i32 %270, i64 %275)
  %277 = load %struct.net_device*, %struct.net_device** %2, align 8
  %278 = getelementptr inbounds %struct.net_device, %struct.net_device* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = load i32, i32* @TLAN_LED_REG, align 4
  %281 = load i32, i32* @TLAN_LED_LINK, align 4
  %282 = call i32 @tlan_dio_write8(i64 %279, i32 %280, i32 %281)
  %283 = load %struct.net_device*, %struct.net_device** %2, align 8
  %284 = call i32 @netif_carrier_on(%struct.net_device* %283)
  br label %293

285:                                              ; preds = %220
  %286 = load %struct.net_device*, %struct.net_device** %2, align 8
  %287 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %286, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %288 = load %struct.net_device*, %struct.net_device** %2, align 8
  %289 = load i32, i32* @HZ, align 4
  %290 = mul nsw i32 10, %289
  %291 = load i32, i32* @TLAN_TIMER_FINISH_RESET, align 4
  %292 = call i32 @tlan_set_timer(%struct.net_device* %288, i32 %290, i32 %291)
  br label %296

293:                                              ; preds = %258
  %294 = load %struct.net_device*, %struct.net_device** %2, align 8
  %295 = call i32 @tlan_set_multicast_list(%struct.net_device* %294)
  br label %296

296:                                              ; preds = %293, %285
  ret void
}

declare dso_local %struct.tlan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @tlan_dio_write8(i64, i32, i32) #1

declare dso_local i32 @tlan_dio_write16(i64, i32, i32) #1

declare dso_local i32 @tlan_mii_read_reg(%struct.net_device*, i32, i32, i32*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @tlan_mii_write_reg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @tlan_dio_read8(i64, i32) #1

declare dso_local i32 @tlan_set_mac(%struct.net_device*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @tlan_set_timer(%struct.net_device*, i32, i32) #1

declare dso_local i32 @tlan_set_multicast_list(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
