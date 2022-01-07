; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8073_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8073_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i64 }
%struct.link_params = type { i32, i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i64, i32, i32 }

@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_STAT = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"8703 LASI status 0x%x\0A\00", align 1
@MDIO_PCS_DEVAD = common dso_local global i32 0, align 4
@MDIO_PCS_REG_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"807x PCS status 0x%x->0x%x\0A\00", align 1
@MDIO_PMA_REG_M8051_MSGOUT_REG = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_RXSTAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"KR 0x9003 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"KR PCS status 0x%x\0A\00", align 1
@MDIO_PMA_REG_STATUS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"PMA_REG_STATUS=0x%x\0A\00", align 1
@SPEED_10000 = common dso_local global i64 0, align 8
@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_AN_REG_LINK_STATUS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"KR PMA status 0x%x->0x%x,an_link_status=0x%x\0A\00", align 1
@MDIO_PMA_REG_PLL_BANDWIDTH = common dso_local global i32 0, align 4
@MDIO_PMA_REG_CDR_BANDWIDTH = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8073_SPEED_LINK_STATUS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"port %x: External link up in 10G\0A\00", align 1
@SPEED_2500 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"port %x: External link up in 2.5G\0A\00", align 1
@SPEED_1000 = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [33 x i8] c"port %x: External link up in 1G\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"port %x: External link is down\0A\00", align 1
@PORT_HW_CFG_SWAP_PHY_POLARITY_ENABLED = common dso_local global i32 0, align 4
@MDIO_XS_DEVAD = common dso_local global i32 0, align 4
@MDIO_XS_REG_8073_RX_CTRL_PCIE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"Swapping 1G polarity forthe 8073\0A\00", align 1
@DUPLEX_FULL = common dso_local global i32 0, align 4
@LINK_STATUS_AUTO_NEGOTIATE_COMPLETE = common dso_local global i32 0, align 4
@MDIO_AN_REG_LP_AUTO_NEG2 = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* @bnx2x_8073_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_8073_read_status(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x_phy*, align 8
  %6 = alloca %struct.link_params*, align 8
  %7 = alloca %struct.link_vars*, align 8
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %5, align 8
  store %struct.link_params* %1, %struct.link_params** %6, align 8
  store %struct.link_vars* %2, %struct.link_vars** %7, align 8
  %14 = load %struct.link_params*, %struct.link_params** %6, align 8
  %15 = getelementptr inbounds %struct.link_params, %struct.link_params* %14, i32 0, i32 2
  %16 = load %struct.bnx2x*, %struct.bnx2x** %15, align 8
  store %struct.bnx2x* %16, %struct.bnx2x** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %18 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %19 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %20 = load i32, i32* @MDIO_PMA_LASI_STAT, align 4
  %21 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %17, %struct.bnx2x_phy* %18, i32 %19, i32 %20, i32* %10)
  %22 = load i32, i32* @NETIF_MSG_LINK, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 (i32, i8*, ...) @DP(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %26 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %27 = load i32, i32* @MDIO_PCS_DEVAD, align 4
  %28 = load i32, i32* @MDIO_PCS_REG_STATUS, align 4
  %29 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %25, %struct.bnx2x_phy* %26, i32 %27, i32 %28, i32* %11)
  %30 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %31 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %32 = load i32, i32* @MDIO_PCS_DEVAD, align 4
  %33 = load i32, i32* @MDIO_PCS_REG_STATUS, align 4
  %34 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %30, %struct.bnx2x_phy* %31, i32 %32, i32 %33, i32* %10)
  %35 = load i32, i32* @NETIF_MSG_LINK, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (i32, i8*, ...) @DP(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %40 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %41 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %42 = load i32, i32* @MDIO_PMA_REG_M8051_MSGOUT_REG, align 4
  %43 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %39, %struct.bnx2x_phy* %40, i32 %41, i32 %42, i32* %10)
  %44 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %45 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %46 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %47 = load i32, i32* @MDIO_PMA_LASI_RXSTAT, align 4
  %48 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %44, %struct.bnx2x_phy* %45, i32 %46, i32 %47, i32* %11)
  %49 = load i32, i32* @NETIF_MSG_LINK, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 (i32, i8*, ...) @DP(i32 %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %53 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %54 = load i32, i32* @MDIO_PCS_DEVAD, align 4
  %55 = load i32, i32* @MDIO_PCS_REG_STATUS, align 4
  %56 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %52, %struct.bnx2x_phy* %53, i32 %54, i32 %55, i32* %11)
  %57 = load i32, i32* @NETIF_MSG_LINK, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 (i32, i8*, ...) @DP(i32 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %61 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %62 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %63 = load i32, i32* @MDIO_PMA_REG_STATUS, align 4
  %64 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %60, %struct.bnx2x_phy* %61, i32 %62, i32 %63, i32* %11)
  %65 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %66 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %67 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %68 = load i32, i32* @MDIO_PMA_REG_STATUS, align 4
  %69 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %65, %struct.bnx2x_phy* %66, i32 %67, i32 %68, i32* %10)
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, 4
  %72 = icmp eq i32 %71, 4
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* @NETIF_MSG_LINK, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 (i32, i8*, ...) @DP(i32 %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %3
  %80 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %81 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SPEED_10000, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %87 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %88 = call i64 @bnx2x_8073_xaui_wa(%struct.bnx2x* %86, %struct.bnx2x_phy* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %293

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91, %79, %3
  %93 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %94 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %95 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %96 = load i32, i32* @MDIO_AN_REG_LINK_STATUS, align 4
  %97 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %93, %struct.bnx2x_phy* %94, i32 %95, i32 %96, i32* %13)
  %98 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %99 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %100 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %101 = load i32, i32* @MDIO_AN_REG_LINK_STATUS, align 4
  %102 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %98, %struct.bnx2x_phy* %99, i32 %100, i32 %101, i32* %13)
  %103 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %104 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %105 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %106 = load i32, i32* @MDIO_PMA_REG_STATUS, align 4
  %107 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %103, %struct.bnx2x_phy* %104, i32 %105, i32 %106, i32* %11)
  %108 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %109 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %110 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %111 = load i32, i32* @MDIO_PMA_REG_STATUS, align 4
  %112 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %108, %struct.bnx2x_phy* %109, i32 %110, i32 %111, i32* %10)
  %113 = load i32, i32* @NETIF_MSG_LINK, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %13, align 4
  %117 = call i32 (i32, i8*, ...) @DP(i32 %113, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %114, i32 %115, i32 %116)
  %118 = load i32, i32* %10, align 4
  %119 = and i32 %118, 4
  %120 = icmp eq i32 %119, 4
  br i1 %120, label %125, label %121

121:                                              ; preds = %92
  %122 = load i32, i32* %13, align 4
  %123 = and i32 %122, 2
  %124 = icmp ne i32 %123, 0
  br label %125

125:                                              ; preds = %121, %92
  %126 = phi i1 [ true, %92 ], [ %124, %121 ]
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %146

130:                                              ; preds = %125
  %131 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %132 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %133 = call i64 @bnx2x_8073_is_snr_needed(%struct.bnx2x* %131, %struct.bnx2x_phy* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %130
  %136 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %137 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %138 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %139 = load i32, i32* @MDIO_PMA_REG_PLL_BANDWIDTH, align 4
  %140 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %136, %struct.bnx2x_phy* %137, i32 %138, i32 %139, i32 9916)
  %141 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %142 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %143 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %144 = load i32, i32* @MDIO_PMA_REG_CDR_BANDWIDTH, align 4
  %145 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %141, %struct.bnx2x_phy* %142, i32 %143, i32 %144, i32 819)
  br label %146

146:                                              ; preds = %135, %130, %125
  %147 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %148 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %149 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %150 = load i32, i32* @MDIO_PMA_REG_8073_SPEED_LINK_STATUS, align 4
  %151 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %147, %struct.bnx2x_phy* %148, i32 %149, i32 %150, i32* %12)
  %152 = load i32, i32* %12, align 4
  %153 = and i32 %152, 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %168

155:                                              ; preds = %146
  %156 = load i32, i32* %12, align 4
  %157 = and i32 %156, 32768
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %168, label %159

159:                                              ; preds = %155
  store i32 1, i32* %9, align 4
  %160 = load i64, i64* @SPEED_10000, align 8
  %161 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %162 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load i32, i32* @NETIF_MSG_LINK, align 4
  %164 = load %struct.link_params*, %struct.link_params** %6, align 8
  %165 = getelementptr inbounds %struct.link_params, %struct.link_params* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i32, i8*, ...) @DP(i32 %163, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %166)
  br label %210

168:                                              ; preds = %155, %146
  %169 = load i32, i32* %12, align 4
  %170 = and i32 %169, 2
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %168
  %173 = load i32, i32* %12, align 4
  %174 = and i32 %173, 16384
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %185, label %176

176:                                              ; preds = %172
  store i32 1, i32* %9, align 4
  %177 = load i64, i64* @SPEED_2500, align 8
  %178 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %179 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  %180 = load i32, i32* @NETIF_MSG_LINK, align 4
  %181 = load %struct.link_params*, %struct.link_params** %6, align 8
  %182 = getelementptr inbounds %struct.link_params, %struct.link_params* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i32, i8*, ...) @DP(i32 %180, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %183)
  br label %209

185:                                              ; preds = %172, %168
  %186 = load i32, i32* %12, align 4
  %187 = and i32 %186, 1
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %202

189:                                              ; preds = %185
  %190 = load i32, i32* %12, align 4
  %191 = and i32 %190, 8192
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %202, label %193

193:                                              ; preds = %189
  store i32 1, i32* %9, align 4
  %194 = load i64, i64* @SPEED_1000, align 8
  %195 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %196 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  %197 = load i32, i32* @NETIF_MSG_LINK, align 4
  %198 = load %struct.link_params*, %struct.link_params** %6, align 8
  %199 = getelementptr inbounds %struct.link_params, %struct.link_params* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i32, i8*, ...) @DP(i32 %197, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %200)
  br label %208

202:                                              ; preds = %189, %185
  store i32 0, i32* %9, align 4
  %203 = load i32, i32* @NETIF_MSG_LINK, align 4
  %204 = load %struct.link_params*, %struct.link_params** %6, align 8
  %205 = getelementptr inbounds %struct.link_params, %struct.link_params* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i32, i8*, ...) @DP(i32 %203, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %202, %193
  br label %209

209:                                              ; preds = %208, %176
  br label %210

210:                                              ; preds = %209, %159
  %211 = load i32, i32* %9, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %258

213:                                              ; preds = %210
  %214 = load %struct.link_params*, %struct.link_params** %6, align 8
  %215 = getelementptr inbounds %struct.link_params, %struct.link_params* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @PORT_HW_CFG_SWAP_PHY_POLARITY_ENABLED, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %246

220:                                              ; preds = %213
  %221 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %222 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %223 = load i32, i32* @MDIO_XS_DEVAD, align 4
  %224 = load i32, i32* @MDIO_XS_REG_8073_RX_CTRL_PCIE, align 4
  %225 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %221, %struct.bnx2x_phy* %222, i32 %223, i32 %224, i32* %10)
  %226 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %227 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @SPEED_1000, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %220
  %232 = load i32, i32* @NETIF_MSG_LINK, align 4
  %233 = call i32 (i32, i8*, ...) @DP(i32 %232, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %234 = load i32, i32* %10, align 4
  %235 = or i32 %234, 8
  store i32 %235, i32* %10, align 4
  br label %239

236:                                              ; preds = %220
  %237 = load i32, i32* %10, align 4
  %238 = and i32 %237, -9
  store i32 %238, i32* %10, align 4
  br label %239

239:                                              ; preds = %236, %231
  %240 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %241 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %242 = load i32, i32* @MDIO_XS_DEVAD, align 4
  %243 = load i32, i32* @MDIO_XS_REG_8073_RX_CTRL_PCIE, align 4
  %244 = load i32, i32* %10, align 4
  %245 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %240, %struct.bnx2x_phy* %241, i32 %242, i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %239, %213
  %247 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %248 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %249 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %250 = call i32 @bnx2x_ext_phy_10G_an_resolve(%struct.bnx2x* %247, %struct.bnx2x_phy* %248, %struct.link_vars* %249)
  %251 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %252 = load %struct.link_params*, %struct.link_params** %6, align 8
  %253 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %254 = call i32 @bnx2x_8073_resolve_fc(%struct.bnx2x_phy* %251, %struct.link_params* %252, %struct.link_vars* %253)
  %255 = load i32, i32* @DUPLEX_FULL, align 4
  %256 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %257 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %256, i32 0, i32 2
  store i32 %255, i32* %257, align 4
  br label %258

258:                                              ; preds = %246, %210
  %259 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %260 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @LINK_STATUS_AUTO_NEGOTIATE_COMPLETE, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %291

265:                                              ; preds = %258
  %266 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %267 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %268 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %269 = load i32, i32* @MDIO_AN_REG_LP_AUTO_NEG2, align 4
  %270 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %266, %struct.bnx2x_phy* %267, i32 %268, i32 %269, i32* %10)
  %271 = load i32, i32* %10, align 4
  %272 = and i32 %271, 32
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %265
  %275 = load i32, i32* @LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE, align 4
  %276 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %277 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = or i32 %278, %275
  store i32 %279, i32* %277, align 8
  br label %280

280:                                              ; preds = %274, %265
  %281 = load i32, i32* %10, align 4
  %282 = and i32 %281, 128
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %280
  %285 = load i32, i32* @LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE, align 4
  %286 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %287 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 8
  br label %290

290:                                              ; preds = %284, %280
  br label %291

291:                                              ; preds = %290, %258
  %292 = load i32, i32* %9, align 4
  store i32 %292, i32* %4, align 4
  br label %293

293:                                              ; preds = %291, %90
  %294 = load i32, i32* %4, align 4
  ret i32 %294
}

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i64 @bnx2x_8073_xaui_wa(%struct.bnx2x*, %struct.bnx2x_phy*) #1

declare dso_local i64 @bnx2x_8073_is_snr_needed(%struct.bnx2x*, %struct.bnx2x_phy*) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_ext_phy_10G_an_resolve(%struct.bnx2x*, %struct.bnx2x_phy*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_8073_resolve_fc(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
