; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_check_invariants.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_check_invariants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i64, i32, i32, i32, i32, i64, i32, %struct.pci_dev* }
%struct.pci_dev = type { i64, i64 }

@PCI_VENDOR_ID_APPLE = common dso_local global i64 0, align 8
@phy_mii_mdio0 = common dso_local global i64 0, align 8
@TXDMA_FSZ = common dso_local global i64 0, align 8
@RXDMA_FSZ = common dso_local global i64 0, align 8
@MIF_CFG = common dso_local global i64 0, align 8
@MIF_CFG_PSELECT = common dso_local global i32 0, align 4
@MIF_CFG_POLL = common dso_local global i32 0, align 4
@MIF_CFG_BBMODE = common dso_local global i32 0, align 4
@MIF_CFG_MDI1 = common dso_local global i32 0, align 4
@MIF_CFG_MDI0 = common dso_local global i32 0, align 4
@PCS_DMODE_MGM = common dso_local global i32 0, align 4
@PCS_DMODE = common dso_local global i64 0, align 8
@MAC_XIFCFG_OE = common dso_local global i32 0, align 4
@MAC_XIFCFG = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_APPLE_K2_GMAC = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_SUN = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_SUN_RIO_GEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"RIO GEM lacks MII phy, mif_cfg[%08x]\0A\00", align 1
@phy_mii_mdio1 = common dso_local global i64 0, align 8
@phy_serialink = common dso_local global i64 0, align 8
@MII_BMCR = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_SUN_GEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"RIO MII phy will not respond\0A\00", align 1
@phy_serdes = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"GEM has bogus fifo sizes tx(%d) rx(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"RIO GEM has bogus fifo sizes tx(%d) rx(%d)\0A\00", align 1
@GREG_SWRST_CACHE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gem*)* @gem_check_invariants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_check_invariants(%struct.gem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gem*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gem* %0, %struct.gem** %3, align 8
  %7 = load %struct.gem*, %struct.gem** %3, align 8
  %8 = getelementptr inbounds %struct.gem, %struct.gem* %7, i32 0, i32 7
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PCI_VENDOR_ID_APPLE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %93

15:                                               ; preds = %1
  %16 = load i64, i64* @phy_mii_mdio0, align 8
  %17 = load %struct.gem*, %struct.gem** %3, align 8
  %18 = getelementptr inbounds %struct.gem, %struct.gem* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.gem*, %struct.gem** %3, align 8
  %20 = getelementptr inbounds %struct.gem, %struct.gem* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @TXDMA_FSZ, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  %25 = mul nsw i32 %24, 64
  %26 = load %struct.gem*, %struct.gem** %3, align 8
  %27 = getelementptr inbounds %struct.gem, %struct.gem* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.gem*, %struct.gem** %3, align 8
  %29 = getelementptr inbounds %struct.gem, %struct.gem* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RXDMA_FSZ, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl(i64 %32)
  %34 = mul nsw i32 %33, 64
  %35 = load %struct.gem*, %struct.gem** %3, align 8
  %36 = getelementptr inbounds %struct.gem, %struct.gem* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.gem*, %struct.gem** %3, align 8
  %38 = getelementptr inbounds %struct.gem, %struct.gem* %37, i32 0, i32 3
  store i32 0, i32* %38, align 8
  %39 = load %struct.gem*, %struct.gem** %3, align 8
  %40 = getelementptr inbounds %struct.gem, %struct.gem* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MIF_CFG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl(i64 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @MIF_CFG_PSELECT, align 4
  %46 = load i32, i32* @MIF_CFG_POLL, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @MIF_CFG_BBMODE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @MIF_CFG_MDI1, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @MIF_CFG_MDI0, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.gem*, %struct.gem** %3, align 8
  %60 = getelementptr inbounds %struct.gem, %struct.gem* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MIF_CFG, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  %65 = load i32, i32* @PCS_DMODE_MGM, align 4
  %66 = load %struct.gem*, %struct.gem** %3, align 8
  %67 = getelementptr inbounds %struct.gem, %struct.gem* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PCS_DMODE, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
  %72 = load i32, i32* @MAC_XIFCFG_OE, align 4
  %73 = load %struct.gem*, %struct.gem** %3, align 8
  %74 = getelementptr inbounds %struct.gem, %struct.gem* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MAC_XIFCFG, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 %72, i64 %77)
  %79 = load %struct.gem*, %struct.gem** %3, align 8
  %80 = getelementptr inbounds %struct.gem, %struct.gem* %79, i32 0, i32 7
  %81 = load %struct.pci_dev*, %struct.pci_dev** %80, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PCI_DEVICE_ID_APPLE_K2_GMAC, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %15
  %87 = load %struct.gem*, %struct.gem** %3, align 8
  %88 = getelementptr inbounds %struct.gem, %struct.gem* %87, i32 0, i32 4
  store i32 1, i32* %88, align 4
  br label %92

89:                                               ; preds = %15
  %90 = load %struct.gem*, %struct.gem** %3, align 8
  %91 = getelementptr inbounds %struct.gem, %struct.gem* %90, i32 0, i32 4
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %86
  store i32 0, i32* %2, align 4
  br label %288

93:                                               ; preds = %1
  %94 = load %struct.gem*, %struct.gem** %3, align 8
  %95 = getelementptr inbounds %struct.gem, %struct.gem* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @MIF_CFG, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @readl(i64 %98)
  store i32 %99, i32* %5, align 4
  %100 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %101 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @PCI_VENDOR_ID_SUN, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %122

105:                                              ; preds = %93
  %106 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %107 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @PCI_DEVICE_ID_SUN_RIO_GEM, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @MIF_CFG_MDI0, align 4
  %114 = load i32, i32* @MIF_CFG_MDI1, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %112, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i32, i32* %5, align 4
  %120 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %119)
  store i32 -1, i32* %2, align 4
  br label %288

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %105, %93
  %123 = load i32, i32* %5, align 4
  %124 = load i32, i32* @MIF_CFG_MDI1, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %122
  %128 = load i64, i64* @phy_mii_mdio1, align 8
  %129 = load %struct.gem*, %struct.gem** %3, align 8
  %130 = getelementptr inbounds %struct.gem, %struct.gem* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  %131 = load i32, i32* @MIF_CFG_PSELECT, align 4
  %132 = load i32, i32* %5, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load %struct.gem*, %struct.gem** %3, align 8
  %136 = getelementptr inbounds %struct.gem, %struct.gem* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @MIF_CFG, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @writel(i32 %134, i64 %139)
  br label %166

141:                                              ; preds = %122
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @MIF_CFG_MDI0, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %161

146:                                              ; preds = %141
  %147 = load i64, i64* @phy_mii_mdio0, align 8
  %148 = load %struct.gem*, %struct.gem** %3, align 8
  %149 = getelementptr inbounds %struct.gem, %struct.gem* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load i32, i32* @MIF_CFG_PSELECT, align 4
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %5, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = load %struct.gem*, %struct.gem** %3, align 8
  %156 = getelementptr inbounds %struct.gem, %struct.gem* %155, i32 0, i32 5
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @MIF_CFG, align 8
  %159 = add nsw i64 %157, %158
  %160 = call i32 @writel(i32 %154, i64 %159)
  br label %165

161:                                              ; preds = %141
  %162 = load i64, i64* @phy_serialink, align 8
  %163 = load %struct.gem*, %struct.gem** %3, align 8
  %164 = getelementptr inbounds %struct.gem, %struct.gem* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  br label %165

165:                                              ; preds = %161, %146
  br label %166

166:                                              ; preds = %165, %127
  %167 = load %struct.gem*, %struct.gem** %3, align 8
  %168 = getelementptr inbounds %struct.gem, %struct.gem* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @phy_mii_mdio1, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %178, label %172

172:                                              ; preds = %166
  %173 = load %struct.gem*, %struct.gem** %3, align 8
  %174 = getelementptr inbounds %struct.gem, %struct.gem* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @phy_mii_mdio0, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %212

178:                                              ; preds = %172, %166
  store i32 0, i32* %6, align 4
  br label %179

179:                                              ; preds = %192, %178
  %180 = load i32, i32* %6, align 4
  %181 = icmp slt i32 %180, 32
  br i1 %181, label %182, label %195

182:                                              ; preds = %179
  %183 = load i32, i32* %6, align 4
  %184 = load %struct.gem*, %struct.gem** %3, align 8
  %185 = getelementptr inbounds %struct.gem, %struct.gem* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 4
  %186 = load %struct.gem*, %struct.gem** %3, align 8
  %187 = load i32, i32* @MII_BMCR, align 4
  %188 = call i32 @sungem_phy_read(%struct.gem* %186, i32 %187)
  %189 = icmp ne i32 %188, 65535
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  br label %195

191:                                              ; preds = %182
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  br label %179

195:                                              ; preds = %190, %179
  %196 = load i32, i32* %6, align 4
  %197 = icmp eq i32 %196, 32
  br i1 %197, label %198, label %211

198:                                              ; preds = %195
  %199 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %200 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @PCI_DEVICE_ID_SUN_GEM, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %198
  %205 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %288

206:                                              ; preds = %198
  %207 = load i8*, i8** @phy_serdes, align 8
  %208 = ptrtoint i8* %207 to i64
  %209 = load %struct.gem*, %struct.gem** %3, align 8
  %210 = getelementptr inbounds %struct.gem, %struct.gem* %209, i32 0, i32 0
  store i64 %208, i64* %210, align 8
  br label %211

211:                                              ; preds = %206, %195
  br label %212

212:                                              ; preds = %211, %172
  %213 = load %struct.gem*, %struct.gem** %3, align 8
  %214 = getelementptr inbounds %struct.gem, %struct.gem* %213, i32 0, i32 5
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @TXDMA_FSZ, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 @readl(i64 %217)
  %219 = mul nsw i32 %218, 64
  %220 = load %struct.gem*, %struct.gem** %3, align 8
  %221 = getelementptr inbounds %struct.gem, %struct.gem* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 8
  %222 = load %struct.gem*, %struct.gem** %3, align 8
  %223 = getelementptr inbounds %struct.gem, %struct.gem* %222, i32 0, i32 5
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @RXDMA_FSZ, align 8
  %226 = add nsw i64 %224, %225
  %227 = call i32 @readl(i64 %226)
  %228 = mul nsw i32 %227, 64
  %229 = load %struct.gem*, %struct.gem** %3, align 8
  %230 = getelementptr inbounds %struct.gem, %struct.gem* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 4
  %231 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %232 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @PCI_VENDOR_ID_SUN, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %287

236:                                              ; preds = %212
  %237 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %238 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @PCI_DEVICE_ID_SUN_GEM, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %263

242:                                              ; preds = %236
  %243 = load %struct.gem*, %struct.gem** %3, align 8
  %244 = getelementptr inbounds %struct.gem, %struct.gem* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 9216
  br i1 %246, label %252, label %247

247:                                              ; preds = %242
  %248 = load %struct.gem*, %struct.gem** %3, align 8
  %249 = getelementptr inbounds %struct.gem, %struct.gem* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = icmp ne i32 %250, 20480
  br i1 %251, label %252, label %260

252:                                              ; preds = %247, %242
  %253 = load %struct.gem*, %struct.gem** %3, align 8
  %254 = getelementptr inbounds %struct.gem, %struct.gem* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.gem*, %struct.gem** %3, align 8
  %257 = getelementptr inbounds %struct.gem, %struct.gem* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %255, i32 %258)
  store i32 -1, i32* %2, align 4
  br label %288

260:                                              ; preds = %247
  %261 = load %struct.gem*, %struct.gem** %3, align 8
  %262 = getelementptr inbounds %struct.gem, %struct.gem* %261, i32 0, i32 3
  store i32 0, i32* %262, align 8
  br label %286

263:                                              ; preds = %236
  %264 = load %struct.gem*, %struct.gem** %3, align 8
  %265 = getelementptr inbounds %struct.gem, %struct.gem* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 2048
  br i1 %267, label %273, label %268

268:                                              ; preds = %263
  %269 = load %struct.gem*, %struct.gem** %3, align 8
  %270 = getelementptr inbounds %struct.gem, %struct.gem* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %271, 2048
  br i1 %272, label %273, label %281

273:                                              ; preds = %268, %263
  %274 = load %struct.gem*, %struct.gem** %3, align 8
  %275 = getelementptr inbounds %struct.gem, %struct.gem* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.gem*, %struct.gem** %3, align 8
  %278 = getelementptr inbounds %struct.gem, %struct.gem* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %276, i32 %279)
  store i32 -1, i32* %2, align 4
  br label %288

281:                                              ; preds = %268
  %282 = load i32, i32* @GREG_SWRST_CACHE_SHIFT, align 4
  %283 = shl i32 16, %282
  %284 = load %struct.gem*, %struct.gem** %3, align 8
  %285 = getelementptr inbounds %struct.gem, %struct.gem* %284, i32 0, i32 3
  store i32 %283, i32* %285, align 8
  br label %286

286:                                              ; preds = %281, %260
  br label %287

287:                                              ; preds = %286, %212
  store i32 0, i32* %2, align 4
  br label %288

288:                                              ; preds = %287, %273, %252, %204, %118, %92
  %289 = load i32, i32* %2, align 4
  ret i32 %289
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @sungem_phy_read(%struct.gem*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
