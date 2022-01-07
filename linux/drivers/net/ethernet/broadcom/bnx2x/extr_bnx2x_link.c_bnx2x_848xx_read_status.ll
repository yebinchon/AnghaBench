; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_848xx_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_848xx_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32, i64, i32 }

@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8481_PMD_SIGNAL = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"BCM848xx: PMD_SIGNAL 1.a811 = 0x%x\0A\00", align 1
@SPEED_10000 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@MDIO_AN_REG_8481_EXPANSION_REG_ACCESS = common dso_local global i32 0, align 4
@MDIO_AN_REG_8481_EXPANSION_REG_RD_RW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Legacy speed status = 0x%x\0A\00", align 1
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Link is up in %dMbps, is_duplex_full= %d\0A\00", align 1
@MDIO_AN_REG_8481_LEGACY_MII_STATUS = common dso_local global i32 0, align 4
@LINK_STATUS_AUTO_NEGOTIATE_COMPLETE = common dso_local global i32 0, align 4
@MDIO_AN_REG_8481_LEGACY_AN_EXPANSION = common dso_local global i32 0, align 4
@LINK_STATUS_PARALLEL_DETECTION_USED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"BCM848x3: link speed is %d\0A\00", align 1
@MDIO_AN_REG_CL37_FC_LP = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_10THD_CAPABLE = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_10TFD_CAPABLE = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_100TXHD_CAPABLE = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_100TXFD_CAPABLE = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_100T4_CAPABLE = common dso_local global i32 0, align 4
@MDIO_AN_REG_1000T_STATUS = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_1000THD_CAPABLE = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE = common dso_local global i32 0, align 4
@MDIO_AN_REG_MASTER_STATUS = common dso_local global i32 0, align 4
@LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* @bnx2x_848xx_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_848xx_read_status(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca %struct.link_vars*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store %struct.link_vars* %2, %struct.link_vars** %6, align 8
  %14 = load %struct.link_params*, %struct.link_params** %5, align 8
  %15 = getelementptr inbounds %struct.link_params, %struct.link_params* %14, i32 0, i32 0
  %16 = load %struct.bnx2x*, %struct.bnx2x** %15, align 8
  store %struct.bnx2x* %16, %struct.bnx2x** %7, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %18 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %19 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %20 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %17, %struct.bnx2x_phy* %18, i32 %19, i32 65530, i32* %9)
  %21 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %22 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %23 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %24 = load i32, i32* @MDIO_PMA_REG_8481_PMD_SIGNAL, align 4
  %25 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %21, %struct.bnx2x_phy* %22, i32 %23, i32 %24, i32* %10)
  %26 = load i32, i32* @NETIF_MSG_LINK, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (i32, i8*, i32, ...) @DP(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, 2048
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %3
  %33 = load i32, i32* @SPEED_10000, align 4
  %34 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %35 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* @DUPLEX_FULL, align 8
  %37 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %38 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  store i32 1, i32* %11, align 4
  %39 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %40 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %41 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %42 = call i32 @bnx2x_ext_phy_10G_an_resolve(%struct.bnx2x* %39, %struct.bnx2x_phy* %40, %struct.link_vars* %41)
  br label %146

43:                                               ; preds = %3
  %44 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %45 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %46 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %47 = load i32, i32* @MDIO_AN_REG_8481_EXPANSION_REG_ACCESS, align 4
  %48 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %44, %struct.bnx2x_phy* %45, i32 %46, i32 %47, i32 3906)
  %49 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %50 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %51 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %52 = load i32, i32* @MDIO_AN_REG_8481_EXPANSION_REG_RD_RW, align 4
  %53 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %49, %struct.bnx2x_phy* %50, i32 %51, i32 %52, i32* %12)
  %54 = load i32, i32* @NETIF_MSG_LINK, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 (i32, i8*, i32, ...) @DP(i32 %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = and i32 %57, 2048
  %59 = icmp eq i32 %58, 2048
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = and i32 %61, 1536
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %43
  %66 = load i32, i32* @SPEED_10, align 4
  %67 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %68 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  br label %88

69:                                               ; preds = %43
  %70 = load i32, i32* %13, align 4
  %71 = icmp eq i32 %70, 512
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* @SPEED_100, align 4
  %74 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %75 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %87

76:                                               ; preds = %69
  %77 = load i32, i32* %13, align 4
  %78 = icmp eq i32 %77, 1024
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* @SPEED_1000, align 4
  %81 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %82 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %86

83:                                               ; preds = %76
  %84 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %85 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %83, %79
  br label %87

87:                                               ; preds = %86, %72
  br label %88

88:                                               ; preds = %87, %65
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %145

91:                                               ; preds = %88
  %92 = load i32, i32* %12, align 4
  %93 = and i32 %92, 256
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i64, i64* @DUPLEX_FULL, align 8
  %97 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %98 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  br label %103

99:                                               ; preds = %91
  %100 = load i64, i64* @DUPLEX_HALF, align 8
  %101 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %102 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %99, %95
  %104 = load i32, i32* @NETIF_MSG_LINK, align 4
  %105 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %106 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %109 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @DUPLEX_FULL, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 (i32, i8*, i32, ...) @DP(i32 %104, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %107, i32 %113)
  %115 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %116 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %117 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %118 = load i32, i32* @MDIO_AN_REG_8481_LEGACY_MII_STATUS, align 4
  %119 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %115, %struct.bnx2x_phy* %116, i32 %117, i32 %118, i32* %8)
  %120 = load i32, i32* %8, align 4
  %121 = and i32 %120, 32
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %103
  %124 = load i32, i32* @LINK_STATUS_AUTO_NEGOTIATE_COMPLETE, align 4
  %125 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %126 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %123, %103
  %130 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %131 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %132 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %133 = load i32, i32* @MDIO_AN_REG_8481_LEGACY_AN_EXPANSION, align 4
  %134 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %130, %struct.bnx2x_phy* %131, i32 %132, i32 %133, i32* %8)
  %135 = load i32, i32* %8, align 4
  %136 = and i32 %135, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %129
  %139 = load i32, i32* @LINK_STATUS_PARALLEL_DETECTION_USED, align 4
  %140 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %141 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %138, %129
  br label %145

145:                                              ; preds = %144, %88
  br label %146

146:                                              ; preds = %145, %32
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %263

149:                                              ; preds = %146
  %150 = load i32, i32* @NETIF_MSG_LINK, align 4
  %151 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %152 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i32, i8*, i32, ...) @DP(i32 %150, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %153)
  %155 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %156 = load %struct.link_params*, %struct.link_params** %5, align 8
  %157 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %158 = call i32 @bnx2x_ext_phy_resolve_fc(%struct.bnx2x_phy* %155, %struct.link_params* %156, %struct.link_vars* %157)
  %159 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %160 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %161 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %162 = load i32, i32* @MDIO_AN_REG_CL37_FC_LP, align 4
  %163 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %159, %struct.bnx2x_phy* %160, i32 %161, i32 %162, i32* %8)
  %164 = load i32, i32* %8, align 4
  %165 = and i32 %164, 32
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %149
  %168 = load i32, i32* @LINK_STATUS_LINK_PARTNER_10THD_CAPABLE, align 4
  %169 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %170 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 8
  br label %173

173:                                              ; preds = %167, %149
  %174 = load i32, i32* %8, align 4
  %175 = and i32 %174, 64
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load i32, i32* @LINK_STATUS_LINK_PARTNER_10TFD_CAPABLE, align 4
  %179 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %180 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  br label %183

183:                                              ; preds = %177, %173
  %184 = load i32, i32* %8, align 4
  %185 = and i32 %184, 128
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %183
  %188 = load i32, i32* @LINK_STATUS_LINK_PARTNER_100TXHD_CAPABLE, align 4
  %189 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %190 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 8
  br label %193

193:                                              ; preds = %187, %183
  %194 = load i32, i32* %8, align 4
  %195 = and i32 %194, 256
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %193
  %198 = load i32, i32* @LINK_STATUS_LINK_PARTNER_100TXFD_CAPABLE, align 4
  %199 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %200 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  br label %203

203:                                              ; preds = %197, %193
  %204 = load i32, i32* %8, align 4
  %205 = and i32 %204, 512
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %203
  %208 = load i32, i32* @LINK_STATUS_LINK_PARTNER_100T4_CAPABLE, align 4
  %209 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %210 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = or i32 %211, %208
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %207, %203
  %214 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %215 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %216 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %217 = load i32, i32* @MDIO_AN_REG_1000T_STATUS, align 4
  %218 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %214, %struct.bnx2x_phy* %215, i32 %216, i32 %217, i32* %8)
  %219 = load i32, i32* %8, align 4
  %220 = and i32 %219, 1024
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %213
  %223 = load i32, i32* @LINK_STATUS_LINK_PARTNER_1000THD_CAPABLE, align 4
  %224 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %225 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 8
  br label %228

228:                                              ; preds = %222, %213
  %229 = load i32, i32* %8, align 4
  %230 = and i32 %229, 2048
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %228
  %233 = load i32, i32* @LINK_STATUS_LINK_PARTNER_1000TFD_CAPABLE, align 4
  %234 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %235 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 8
  br label %238

238:                                              ; preds = %232, %228
  %239 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %240 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %241 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %242 = load i32, i32* @MDIO_AN_REG_MASTER_STATUS, align 4
  %243 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %239, %struct.bnx2x_phy* %240, i32 %241, i32 %242, i32* %8)
  %244 = load i32, i32* %8, align 4
  %245 = and i32 %244, 2048
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %238
  %248 = load i32, i32* @LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE, align 4
  %249 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %250 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 8
  br label %253

253:                                              ; preds = %247, %238
  %254 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %255 = call i64 @bnx2x_is_8483x_8485x(%struct.bnx2x_phy* %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %253
  %258 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %259 = load %struct.link_params*, %struct.link_params** %5, align 8
  %260 = load %struct.link_vars*, %struct.link_vars** %6, align 8
  %261 = call i32 @bnx2x_eee_an_resolve(%struct.bnx2x_phy* %258, %struct.link_params* %259, %struct.link_vars* %260)
  br label %262

262:                                              ; preds = %257, %253
  br label %263

263:                                              ; preds = %262, %146
  %264 = load i32, i32* %11, align 4
  ret i32 %264
}

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @DP(i32, i8*, i32, ...) #1

declare dso_local i32 @bnx2x_ext_phy_10G_an_resolve(%struct.bnx2x*, %struct.bnx2x_phy*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_ext_phy_resolve_fc(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*) #1

declare dso_local i64 @bnx2x_is_8483x_8485x(%struct.bnx2x_phy*) #1

declare dso_local i32 @bnx2x_eee_an_resolve(%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
