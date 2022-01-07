; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_memac.c_memac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_memac.c_memac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_mac = type { i64, %struct.memac_cfg*, i32, i32, i8*, i8*, %struct.TYPE_9__*, i64, %struct.TYPE_10__*, %struct.TYPE_7__, i32, i32, i32 }
%struct.memac_cfg = type { i32, %struct.fixed_phy_status*, i64 }
%struct.fixed_phy_status = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"mEMAC reset failed\0A\00", align 1
@CMD_CFG_CRC_FWD = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_QSGMII = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"settings Mac max frame length is FAILED\0A\00", align 1
@HASH_TABLE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"allocation hash table is FAILED\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FMAN_MOD_MAC = common dso_local global i32 0, align 4
@FMAN_INTR_TYPE_ERR = common dso_local global i32 0, align 4
@memac_err_exception = common dso_local global i32 0, align 4
@FMAN_INTR_TYPE_NORMAL = common dso_local global i32 0, align 4
@memac_exception = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memac_init(%struct.fman_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fman_mac*, align 8
  %4 = alloca %struct.memac_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fixed_phy_status*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fman_mac* %0, %struct.fman_mac** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %14 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %13, i32 0, i32 1
  %15 = load %struct.memac_cfg*, %struct.memac_cfg** %14, align 8
  %16 = call i64 @is_init_done(%struct.memac_cfg* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %267

21:                                               ; preds = %1
  %22 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %23 = call i32 @check_init_parameters(%struct.fman_mac* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %2, align 4
  br label %267

28:                                               ; preds = %21
  %29 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %30 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %29, i32 0, i32 1
  %31 = load %struct.memac_cfg*, %struct.memac_cfg** %30, align 8
  store %struct.memac_cfg* %31, %struct.memac_cfg** %4, align 8
  %32 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %33 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %32, i32 0, i32 9
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 6
  br i1 %36, label %37, label %44

37:                                               ; preds = %28
  %38 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %39 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %38, i32 0, i32 9
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 4
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 1, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %37, %28
  %45 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  %46 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %51 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %50, i32 0, i32 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = call i32 @reset(%struct.TYPE_10__* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %2, align 4
  br label %267

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %44
  %61 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %62 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %61, i32 0, i32 12
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @MAKE_ENET_ADDR_FROM_UINT64(i32 %63, i64 %64)
  %66 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %67 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %66, i32 0, i32 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = load i64, i64* %6, align 8
  %70 = inttoptr i64 %69 to i32*
  %71 = call i32 @add_addr_in_paddr(%struct.TYPE_10__* %68, i32* %70, i32 0)
  %72 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  %73 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %72, i32 0, i32 1
  %74 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %73, align 8
  store %struct.fixed_phy_status* %74, %struct.fixed_phy_status** %8, align 8
  %75 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %76 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %75, i32 0, i32 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %79 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %78, i32 0, i32 1
  %80 = load %struct.memac_cfg*, %struct.memac_cfg** %79, align 8
  %81 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %82 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %85 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %84, i32 0, i32 11
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %89 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @init(%struct.TYPE_10__* %77, %struct.memac_cfg* %80, i64 %83, i32 %86, i32 %87, i32 %90)
  %92 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %93 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %92, i32 0, i32 9
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 6
  br i1 %96, label %97, label %125

97:                                               ; preds = %60
  %98 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %99 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %98, i32 0, i32 9
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %105 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %104, i32 0, i32 9
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 3
  br i1 %108, label %109, label %125

109:                                              ; preds = %103, %97
  %110 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %111 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %110, i32 0, i32 8
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = call i32 @ioread32be(i32* %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* @CMD_CFG_CRC_FWD, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %10, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %121 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %120, i32 0, i32 8
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = call i32 @iowrite32be(i32 %119, i32* %123)
  br label %125

125:                                              ; preds = %109, %103, %60
  %126 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %127 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %144

131:                                              ; preds = %125
  %132 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %133 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %132, i32 0, i32 7
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %138 = call i32 @setup_sgmii_internal_phy_base_x(%struct.fman_mac* %137)
  br label %143

139:                                              ; preds = %131
  %140 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %141 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %8, align 8
  %142 = call i32 @setup_sgmii_internal_phy(%struct.fman_mac* %140, %struct.fixed_phy_status* %141)
  br label %143

143:                                              ; preds = %139, %136
  br label %194

144:                                              ; preds = %125
  %145 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %146 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @PHY_INTERFACE_MODE_QSGMII, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %193

150:                                              ; preds = %144
  store i32 0, i32* %5, align 4
  br label %151

151:                                              ; preds = %189, %150
  %152 = load i32, i32* %5, align 4
  %153 = icmp slt i32 %152, 4
  br i1 %153, label %154, label %192

154:                                              ; preds = %151
  %155 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %156 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %155, i32 0, i32 6
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %12, align 4
  %161 = load i32, i32* %12, align 4
  %162 = shl i32 %161, 2
  %163 = load i32, i32* %5, align 4
  %164 = or i32 %162, %163
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %167 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %166, i32 0, i32 6
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  store i32 %165, i32* %170, align 4
  %171 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %172 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %171, i32 0, i32 7
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %154
  %176 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %177 = call i32 @setup_sgmii_internal_phy_base_x(%struct.fman_mac* %176)
  br label %182

178:                                              ; preds = %154
  %179 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %180 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %8, align 8
  %181 = call i32 @setup_sgmii_internal_phy(%struct.fman_mac* %179, %struct.fixed_phy_status* %180)
  br label %182

182:                                              ; preds = %178, %175
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %185 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %184, i32 0, i32 6
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  store i32 %183, i32* %188, align 4
  br label %189

189:                                              ; preds = %182
  %190 = load i32, i32* %5, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %5, align 4
  br label %151

192:                                              ; preds = %151
  br label %193

193:                                              ; preds = %192, %144
  br label %194

194:                                              ; preds = %193, %143
  %195 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %196 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %199 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  %202 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @fman_set_mac_max_frame(i32 %197, i32 %200, i32 %203)
  store i32 %204, i32* %9, align 4
  %205 = load i32, i32* %9, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %194
  %208 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %209 = load i32, i32* %9, align 4
  store i32 %209, i32* %2, align 4
  br label %267

210:                                              ; preds = %194
  %211 = load i32, i32* @HASH_TABLE_SIZE, align 4
  %212 = call i8* @alloc_hash_table(i32 %211)
  %213 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %214 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %213, i32 0, i32 5
  store i8* %212, i8** %214, align 8
  %215 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %216 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %215, i32 0, i32 5
  %217 = load i8*, i8** %216, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %225, label %219

219:                                              ; preds = %210
  %220 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %221 = call i32 @free_init_resources(%struct.fman_mac* %220)
  %222 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %223 = load i32, i32* @ENOMEM, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %2, align 4
  br label %267

225:                                              ; preds = %210
  %226 = load i32, i32* @HASH_TABLE_SIZE, align 4
  %227 = call i8* @alloc_hash_table(i32 %226)
  %228 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %229 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %228, i32 0, i32 4
  store i8* %227, i8** %229, align 8
  %230 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %231 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %230, i32 0, i32 4
  %232 = load i8*, i8** %231, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %240, label %234

234:                                              ; preds = %225
  %235 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %236 = call i32 @free_init_resources(%struct.fman_mac* %235)
  %237 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %238 = load i32, i32* @ENOMEM, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %2, align 4
  br label %267

240:                                              ; preds = %225
  %241 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %242 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @FMAN_MOD_MAC, align 4
  %245 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %246 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @FMAN_INTR_TYPE_ERR, align 4
  %249 = load i32, i32* @memac_err_exception, align 4
  %250 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %251 = call i32 @fman_register_intr(i32 %243, i32 %244, i32 %247, i32 %248, i32 %249, %struct.fman_mac* %250)
  %252 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %253 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @FMAN_MOD_MAC, align 4
  %256 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %257 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = load i32, i32* @FMAN_INTR_TYPE_NORMAL, align 4
  %260 = load i32, i32* @memac_exception, align 4
  %261 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %262 = call i32 @fman_register_intr(i32 %254, i32 %255, i32 %258, i32 %259, i32 %260, %struct.fman_mac* %261)
  %263 = load %struct.memac_cfg*, %struct.memac_cfg** %4, align 8
  %264 = call i32 @kfree(%struct.memac_cfg* %263)
  %265 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %266 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %265, i32 0, i32 1
  store %struct.memac_cfg* null, %struct.memac_cfg** %266, align 8
  store i32 0, i32* %2, align 4
  br label %267

267:                                              ; preds = %240, %234, %219, %207, %56, %26, %18
  %268 = load i32, i32* %2, align 4
  ret i32 %268
}

declare dso_local i64 @is_init_done(%struct.memac_cfg*) #1

declare dso_local i32 @check_init_parameters(%struct.fman_mac*) #1

declare dso_local i32 @reset(%struct.TYPE_10__*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @MAKE_ENET_ADDR_FROM_UINT64(i32, i64) #1

declare dso_local i32 @add_addr_in_paddr(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @init(%struct.TYPE_10__*, %struct.memac_cfg*, i64, i32, i32, i32) #1

declare dso_local i32 @ioread32be(i32*) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @setup_sgmii_internal_phy_base_x(%struct.fman_mac*) #1

declare dso_local i32 @setup_sgmii_internal_phy(%struct.fman_mac*, %struct.fixed_phy_status*) #1

declare dso_local i32 @fman_set_mac_max_frame(i32, i32, i32) #1

declare dso_local i8* @alloc_hash_table(i32) #1

declare dso_local i32 @free_init_resources(%struct.fman_mac*) #1

declare dso_local i32 @fman_register_intr(i32, i32, i32, i32, i32, %struct.fman_mac*) #1

declare dso_local i32 @kfree(%struct.memac_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
