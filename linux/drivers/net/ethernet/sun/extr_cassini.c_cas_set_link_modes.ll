; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_set_link_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_set_link_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@CAS_BMCR_SPEED1000 = common dso_local global i32 0, align 4
@CAS_FLAG_1000MB_CAP = common dso_local global i32 0, align 4
@REG_PCS_MII_CTRL = common dso_local global i64 0, align 8
@PCS_MII_AUTONEG_EN = common dso_local global i32 0, align 4
@PCS_MII_CTRL_DUPLEX = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Link up at %d Mbps, %s-duplex\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@MAC_XIF_TX_MII_OUTPUT_EN = common dso_local global i32 0, align 4
@MAC_XIF_LINK_LED = common dso_local global i32 0, align 4
@MAC_XIF_MII_BUFFER_OUTPUT_EN = common dso_local global i32 0, align 4
@MAC_XIF_DISABLE_ECHO = common dso_local global i32 0, align 4
@MAC_XIF_FDPLX_LED = common dso_local global i32 0, align 4
@MAC_XIF_GMII_MODE = common dso_local global i32 0, align 4
@REG_MAC_XIF_CFG = common dso_local global i64 0, align 8
@MAC_TX_CFG_IPG_EN = common dso_local global i32 0, align 4
@MAC_TX_CFG_IGNORE_CARRIER = common dso_local global i32 0, align 4
@MAC_TX_CFG_IGNORE_COLL = common dso_local global i32 0, align 4
@MAC_TX_CFG_NEVER_GIVE_UP_EN = common dso_local global i32 0, align 4
@MAC_TX_CFG_NEVER_GIVE_UP_LIM = common dso_local global i32 0, align 4
@MAC_TX_CFG_CARRIER_EXTEND = common dso_local global i32 0, align 4
@REG_MAC_TX_CFG = common dso_local global i64 0, align 8
@REG_MAC_RX_CFG = common dso_local global i64 0, align 8
@MAC_RX_CFG_STRIP_FCS = common dso_local global i32 0, align 4
@MAC_RX_CFG_CARRIER_EXTEND = common dso_local global i32 0, align 4
@REG_MAC_SLOT_TIME = common dso_local global i64 0, align 8
@CAS_1000MB_MIN_FRAME = common dso_local global i32 0, align 4
@CAS_MIN_MTU = common dso_local global i32 0, align 4
@CAS_MIN_FRAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Pause is enabled (rxfifo: %d off: %d on: %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"TX pause enabled\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Pause is disabled\0A\00", align 1
@REG_MAC_CTRL_CFG = common dso_local global i64 0, align 8
@MAC_CTRL_CFG_SEND_PAUSE_EN = common dso_local global i32 0, align 4
@MAC_CTRL_CFG_RECV_PAUSE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*)* @cas_set_link_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_set_link_modes(%struct.cas* %0) #0 {
  %2 = alloca %struct.cas*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 10, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.cas*, %struct.cas** %2, align 8
  %8 = getelementptr inbounds %struct.cas, %struct.cas* %7, i32 0, i32 8
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @CAS_PHY_MII(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %56

12:                                               ; preds = %1
  %13 = load %struct.cas*, %struct.cas** %2, align 8
  %14 = call i32 @cas_mif_poll(%struct.cas* %13, i32 0)
  %15 = load %struct.cas*, %struct.cas** %2, align 8
  %16 = load i32, i32* @MII_BMCR, align 4
  %17 = call i32 @cas_phy_read(%struct.cas* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @BMCR_ANENABLE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load %struct.cas*, %struct.cas** %2, align 8
  %24 = call i32 @cas_read_mii_link_mode(%struct.cas* %23, i32* %4, i32* %5, i32* %6)
  br label %53

25:                                               ; preds = %12
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @BMCR_FULLDPLX, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @BMCR_SPEED100, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 100, i32* %5, align 4
  br label %52

37:                                               ; preds = %31
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @CAS_BMCR_SPEED1000, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.cas*, %struct.cas** %2, align 8
  %44 = getelementptr inbounds %struct.cas, %struct.cas* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CAS_FLAG_1000MB_CAP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1000, i32 100
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %42, %37
  br label %52

52:                                               ; preds = %51, %36
  br label %53

53:                                               ; preds = %52, %22
  %54 = load %struct.cas*, %struct.cas** %2, align 8
  %55 = call i32 @cas_mif_poll(%struct.cas* %54, i32 1)
  br label %77

56:                                               ; preds = %1
  %57 = load %struct.cas*, %struct.cas** %2, align 8
  %58 = getelementptr inbounds %struct.cas, %struct.cas* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @REG_PCS_MII_CTRL, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @readl(i64 %61)
  store i32 %62, i32* %3, align 4
  %63 = load %struct.cas*, %struct.cas** %2, align 8
  %64 = call i32 @cas_read_pcs_link_mode(%struct.cas* %63, i32* %4, i32* %5, i32* %6)
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @PCS_MII_AUTONEG_EN, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %56
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @PCS_MII_CTRL_DUPLEX, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store i32 1, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %69
  br label %76

76:                                               ; preds = %75, %56
  br label %77

77:                                               ; preds = %76, %53
  %78 = load %struct.cas*, %struct.cas** %2, align 8
  %79 = load i32, i32* @link, align 4
  %80 = load %struct.cas*, %struct.cas** %2, align 8
  %81 = getelementptr inbounds %struct.cas, %struct.cas* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %88 = call i32 @netif_info(%struct.cas* %78, i32 %79, i32 %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %83, i8* %87)
  %89 = load i32, i32* @MAC_XIF_TX_MII_OUTPUT_EN, align 4
  %90 = load i32, i32* @MAC_XIF_LINK_LED, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %3, align 4
  %92 = load %struct.cas*, %struct.cas** %2, align 8
  %93 = getelementptr inbounds %struct.cas, %struct.cas* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @CAS_PHY_MII(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %77
  %98 = load i32, i32* @MAC_XIF_MII_BUFFER_OUTPUT_EN, align 4
  %99 = load i32, i32* %3, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %97
  %104 = load i32, i32* @MAC_XIF_DISABLE_ECHO, align 4
  %105 = load i32, i32* %3, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %103, %97
  br label %108

108:                                              ; preds = %107, %77
  %109 = load i32, i32* %4, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i32, i32* @MAC_XIF_FDPLX_LED, align 4
  %113 = load i32, i32* %3, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %111, %108
  %116 = load i32, i32* %5, align 4
  %117 = icmp eq i32 %116, 1000
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i32, i32* @MAC_XIF_GMII_MODE, align 4
  %120 = load i32, i32* %3, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %118, %115
  %123 = load i32, i32* %3, align 4
  %124 = load %struct.cas*, %struct.cas** %2, align 8
  %125 = getelementptr inbounds %struct.cas, %struct.cas* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @REG_MAC_XIF_CFG, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @writel(i32 %123, i64 %128)
  %130 = load i32, i32* @MAC_TX_CFG_IPG_EN, align 4
  store i32 %130, i32* %3, align 4
  %131 = load i32, i32* %4, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %122
  %134 = load i32, i32* @MAC_TX_CFG_IGNORE_CARRIER, align 4
  %135 = load i32, i32* %3, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %3, align 4
  %137 = load i32, i32* @MAC_TX_CFG_IGNORE_COLL, align 4
  %138 = load i32, i32* %3, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %3, align 4
  br label %147

140:                                              ; preds = %122
  %141 = load i32, i32* @MAC_TX_CFG_NEVER_GIVE_UP_EN, align 4
  %142 = load i32, i32* %3, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %3, align 4
  %144 = load i32, i32* @MAC_TX_CFG_NEVER_GIVE_UP_LIM, align 4
  %145 = load i32, i32* %3, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %140, %133
  %148 = load i32, i32* %5, align 4
  %149 = icmp eq i32 %148, 1000
  br i1 %149, label %150, label %193

150:                                              ; preds = %147
  %151 = load i32, i32* %4, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %193, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* @MAC_TX_CFG_CARRIER_EXTEND, align 4
  %156 = or i32 %154, %155
  %157 = load %struct.cas*, %struct.cas** %2, align 8
  %158 = getelementptr inbounds %struct.cas, %struct.cas* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @REG_MAC_TX_CFG, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @writel(i32 %156, i64 %161)
  %163 = load %struct.cas*, %struct.cas** %2, align 8
  %164 = getelementptr inbounds %struct.cas, %struct.cas* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @REG_MAC_RX_CFG, align 8
  %167 = add nsw i64 %165, %166
  %168 = call i32 @readl(i64 %167)
  store i32 %168, i32* %3, align 4
  %169 = load i32, i32* @MAC_RX_CFG_STRIP_FCS, align 4
  %170 = xor i32 %169, -1
  %171 = load i32, i32* %3, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %3, align 4
  %173 = load i32, i32* %3, align 4
  %174 = load i32, i32* @MAC_RX_CFG_CARRIER_EXTEND, align 4
  %175 = or i32 %173, %174
  %176 = load %struct.cas*, %struct.cas** %2, align 8
  %177 = getelementptr inbounds %struct.cas, %struct.cas* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @REG_MAC_RX_CFG, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @writel(i32 %175, i64 %180)
  %182 = load %struct.cas*, %struct.cas** %2, align 8
  %183 = getelementptr inbounds %struct.cas, %struct.cas* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @REG_MAC_SLOT_TIME, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @writel(i32 512, i64 %186)
  %188 = load %struct.cas*, %struct.cas** %2, align 8
  %189 = getelementptr inbounds %struct.cas, %struct.cas* %188, i32 0, i32 1
  store i32 4, i32* %189, align 4
  %190 = load i32, i32* @CAS_1000MB_MIN_FRAME, align 4
  %191 = load %struct.cas*, %struct.cas** %2, align 8
  %192 = getelementptr inbounds %struct.cas, %struct.cas* %191, i32 0, i32 7
  store i32 %190, i32* %192, align 8
  br label %245

193:                                              ; preds = %150, %147
  %194 = load i32, i32* %3, align 4
  %195 = load %struct.cas*, %struct.cas** %2, align 8
  %196 = getelementptr inbounds %struct.cas, %struct.cas* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @REG_MAC_TX_CFG, align 8
  %199 = add nsw i64 %197, %198
  %200 = call i32 @writel(i32 %194, i64 %199)
  %201 = load %struct.cas*, %struct.cas** %2, align 8
  %202 = getelementptr inbounds %struct.cas, %struct.cas* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @REG_MAC_RX_CFG, align 8
  %205 = add nsw i64 %203, %204
  %206 = call i32 @readl(i64 %205)
  store i32 %206, i32* %3, align 4
  %207 = load i32, i32* %4, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %193
  %210 = load i32, i32* @MAC_RX_CFG_STRIP_FCS, align 4
  %211 = load i32, i32* %3, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %3, align 4
  %213 = load %struct.cas*, %struct.cas** %2, align 8
  %214 = getelementptr inbounds %struct.cas, %struct.cas* %213, i32 0, i32 1
  store i32 0, i32* %214, align 4
  %215 = load i32, i32* @CAS_MIN_MTU, align 4
  %216 = load %struct.cas*, %struct.cas** %2, align 8
  %217 = getelementptr inbounds %struct.cas, %struct.cas* %216, i32 0, i32 7
  store i32 %215, i32* %217, align 8
  br label %228

218:                                              ; preds = %193
  %219 = load i32, i32* @MAC_RX_CFG_STRIP_FCS, align 4
  %220 = xor i32 %219, -1
  %221 = load i32, i32* %3, align 4
  %222 = and i32 %221, %220
  store i32 %222, i32* %3, align 4
  %223 = load %struct.cas*, %struct.cas** %2, align 8
  %224 = getelementptr inbounds %struct.cas, %struct.cas* %223, i32 0, i32 1
  store i32 4, i32* %224, align 4
  %225 = load i32, i32* @CAS_MIN_FRAME, align 4
  %226 = load %struct.cas*, %struct.cas** %2, align 8
  %227 = getelementptr inbounds %struct.cas, %struct.cas* %226, i32 0, i32 7
  store i32 %225, i32* %227, align 8
  br label %228

228:                                              ; preds = %218, %209
  %229 = load i32, i32* %3, align 4
  %230 = load i32, i32* @MAC_RX_CFG_CARRIER_EXTEND, align 4
  %231 = xor i32 %230, -1
  %232 = and i32 %229, %231
  %233 = load %struct.cas*, %struct.cas** %2, align 8
  %234 = getelementptr inbounds %struct.cas, %struct.cas* %233, i32 0, i32 2
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @REG_MAC_RX_CFG, align 8
  %237 = add nsw i64 %235, %236
  %238 = call i32 @writel(i32 %232, i64 %237)
  %239 = load %struct.cas*, %struct.cas** %2, align 8
  %240 = getelementptr inbounds %struct.cas, %struct.cas* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @REG_MAC_SLOT_TIME, align 8
  %243 = add nsw i64 %241, %242
  %244 = call i32 @writel(i32 64, i64 %243)
  br label %245

245:                                              ; preds = %228, %153
  %246 = load %struct.cas*, %struct.cas** %2, align 8
  %247 = call i64 @netif_msg_link(%struct.cas* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %283

249:                                              ; preds = %245
  %250 = load i32, i32* %6, align 4
  %251 = and i32 %250, 1
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %267

253:                                              ; preds = %249
  %254 = load %struct.cas*, %struct.cas** %2, align 8
  %255 = getelementptr inbounds %struct.cas, %struct.cas* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.cas*, %struct.cas** %2, align 8
  %258 = getelementptr inbounds %struct.cas, %struct.cas* %257, i32 0, i32 6
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.cas*, %struct.cas** %2, align 8
  %261 = getelementptr inbounds %struct.cas, %struct.cas* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.cas*, %struct.cas** %2, align 8
  %264 = getelementptr inbounds %struct.cas, %struct.cas* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 4
  %266 = call i32 (i32, i8*, ...) @netdev_info(i32 %256, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %259, i32 %262, i32 %265)
  br label %282

267:                                              ; preds = %249
  %268 = load i32, i32* %6, align 4
  %269 = and i32 %268, 16
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %267
  %272 = load %struct.cas*, %struct.cas** %2, align 8
  %273 = getelementptr inbounds %struct.cas, %struct.cas* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  %275 = call i32 (i32, i8*, ...) @netdev_info(i32 %274, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %281

276:                                              ; preds = %267
  %277 = load %struct.cas*, %struct.cas** %2, align 8
  %278 = getelementptr inbounds %struct.cas, %struct.cas* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 8
  %280 = call i32 (i32, i8*, ...) @netdev_info(i32 %279, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %281

281:                                              ; preds = %276, %271
  br label %282

282:                                              ; preds = %281, %253
  br label %283

283:                                              ; preds = %282, %245
  %284 = load %struct.cas*, %struct.cas** %2, align 8
  %285 = getelementptr inbounds %struct.cas, %struct.cas* %284, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = load i64, i64* @REG_MAC_CTRL_CFG, align 8
  %288 = add nsw i64 %286, %287
  %289 = call i32 @readl(i64 %288)
  store i32 %289, i32* %3, align 4
  %290 = load i32, i32* @MAC_CTRL_CFG_SEND_PAUSE_EN, align 4
  %291 = load i32, i32* @MAC_CTRL_CFG_RECV_PAUSE_EN, align 4
  %292 = or i32 %290, %291
  %293 = xor i32 %292, -1
  %294 = load i32, i32* %3, align 4
  %295 = and i32 %294, %293
  store i32 %295, i32* %3, align 4
  %296 = load i32, i32* %6, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %310

298:                                              ; preds = %283
  %299 = load i32, i32* @MAC_CTRL_CFG_SEND_PAUSE_EN, align 4
  %300 = load i32, i32* %3, align 4
  %301 = or i32 %300, %299
  store i32 %301, i32* %3, align 4
  %302 = load i32, i32* %6, align 4
  %303 = and i32 %302, 1
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %298
  %306 = load i32, i32* @MAC_CTRL_CFG_RECV_PAUSE_EN, align 4
  %307 = load i32, i32* %3, align 4
  %308 = or i32 %307, %306
  store i32 %308, i32* %3, align 4
  br label %309

309:                                              ; preds = %305, %298
  br label %310

310:                                              ; preds = %309, %283
  %311 = load i32, i32* %3, align 4
  %312 = load %struct.cas*, %struct.cas** %2, align 8
  %313 = getelementptr inbounds %struct.cas, %struct.cas* %312, i32 0, i32 2
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @REG_MAC_CTRL_CFG, align 8
  %316 = add nsw i64 %314, %315
  %317 = call i32 @writel(i32 %311, i64 %316)
  %318 = load %struct.cas*, %struct.cas** %2, align 8
  %319 = call i32 @cas_start_dma(%struct.cas* %318)
  ret void
}

declare dso_local i64 @CAS_PHY_MII(i32) #1

declare dso_local i32 @cas_mif_poll(%struct.cas*, i32) #1

declare dso_local i32 @cas_phy_read(%struct.cas*, i32) #1

declare dso_local i32 @cas_read_mii_link_mode(%struct.cas*, i32*, i32*, i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cas_read_pcs_link_mode(%struct.cas*, i32*, i32*, i32*) #1

declare dso_local i32 @netif_info(%struct.cas*, i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @netif_msg_link(%struct.cas*) #1

declare dso_local i32 @netdev_info(i32, i8*, ...) #1

declare dso_local i32 @cas_start_dma(%struct.cas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
