; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc8584_config_pre_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc8584_config_pre_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_val = type { i32, i32, i32, i32 }
%struct.phy_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i64 }

@__const.vsc8584_config_pre_init.pre_init1 = private unnamed_addr constant [22 x %struct.reg_val] [%struct.reg_val { i32 2042, i32 5246991, i32 0, i32 0 }, %struct.reg_val { i32 5768, i32 302977, i32 0, i32 0 }, %struct.reg_val { i32 3984, i32 6850944, i32 0, i32 0 }, %struct.reg_val { i32 932, i32 55536, i32 0, i32 0 }, %struct.reg_val { i32 4032, i32 1024, i32 0, i32 0 }, %struct.reg_val { i32 3970, i32 1224706, i32 0, i32 0 }, %struct.reg_val { i32 5766, i32 4, i32 0, i32 0 }, %struct.reg_val { i32 5772, i32 13812847, i32 0, i32 0 }, %struct.reg_val { i32 6050, i32 1568, i32 0, i32 0 }, %struct.reg_val { i32 5792, i32 15663069, i32 0, i32 0 }, %struct.reg_val { i32 5798, i32 463944, i32 0, i32 0 }, %struct.reg_val { i32 5796, i32 1250095, i32 0, i32 0 }, %struct.reg_val { i32 5800, i32 0, i32 0, i32 0 }, %struct.reg_val { i32 4092, i32 12623912, i32 0, i32 0 }, %struct.reg_val { i32 4072, i32 9547884, i32 0, i32 0 }, %struct.reg_val { i32 4074, i32 267776, i32 0, i32 0 }, %struct.reg_val { i32 3968, i32 16775935, i32 0, i32 0 }, %struct.reg_val { i32 4076, i32 9443337, i32 0, i32 0 }, %struct.reg_val { i32 4094, i32 11538439, i32 0, i32 0 }, %struct.reg_val { i32 5808, i32 15662848, i32 0, i32 0 }, %struct.reg_val { i32 5810, i32 28672, i32 0, i32 0 }, %struct.reg_val { i32 5812, i32 2068, i32 0, i32 0 }], align 16
@MSCC_EXT_PAGE_ACCESS = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_STANDARD = common dso_local global i32 0, align 4
@MSCC_PHY_EXT_CNTL_STATUS = common dso_local global i32 0, align 4
@SMI_BROADCAST_WR_EN = common dso_local global i32 0, align 4
@MII_VSC85XX_INT_MASK = common dso_local global i32 0, align 4
@MSCC_PHY_BYPASS_CONTROL = common dso_local global i32 0, align 4
@PARALLEL_DET_IGNORE_ADVERTISED = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_EXTENDED_3 = common dso_local global i32 0, align 4
@MSCC_PHY_SERDES_TX_CRC_ERR_CNT = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_TEST = common dso_local global i32 0, align 4
@MSCC_PHY_TEST_PAGE_5 = common dso_local global i32 0, align 4
@MSCC_PHY_TEST_PAGE_8 = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_TR = common dso_local global i32 0, align 4
@MSCC_PHY_TR_CNTL = common dso_local global i32 0, align 4
@TR_WRITE = common dso_local global i32 0, align 4
@MSCC_PHY_TR_MSB = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_EXTENDED_2 = common dso_local global i32 0, align 4
@MSCC_PHY_CU_PMD_TX_CNTL = common dso_local global i32 0, align 4
@MSCC_VSC8584_REVB_INT8051_FW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to load firmware %s, ret: %d\0A\00", align 1
@MSCC_VSC8584_REVB_INT8051_FW_START_ADDR = common dso_local global i32 0, align 4
@MSCC_VSC8584_REVB_INT8051_FW_CRC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"FW CRC is not the expected one, patching FW\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"failed to patch FW, expect non-optimal device\0A\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"FW CRC after patching is not the expected one, expect non-optimal device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @vsc8584_config_pre_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc8584_config_pre_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca [22 x %struct.reg_val], align 16
  %5 = alloca [3 x %struct.reg_val], align 16
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %12 = bitcast [22 x %struct.reg_val]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([22 x %struct.reg_val]* @__const.vsc8584_config_pre_init.pre_init1 to i8*), i64 352, i1 false)
  %13 = bitcast [3 x %struct.reg_val]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 48, i1 false)
  %14 = bitcast i8* %13 to [3 x %struct.reg_val]*
  %15 = getelementptr inbounds [3 x %struct.reg_val], [3 x %struct.reg_val]* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %15, i32 0, i32 0
  store i32 1158, i32* %16, align 16
  %17 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %15, i32 0, i32 1
  store i32 566552, i32* %17, align 4
  %18 = getelementptr inbounds [3 x %struct.reg_val], [3 x %struct.reg_val]* %14, i32 0, i32 1
  %19 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %18, i32 0, i32 0
  store i32 1160, i32* %19, align 16
  %20 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %18, i32 0, i32 1
  store i32 7194262, i32* %20, align 4
  %21 = getelementptr inbounds [3 x %struct.reg_val], [3 x %struct.reg_val]* %14, i32 0, i32 2
  %22 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %21, i32 0, i32 0
  store i32 1162, i32* %22, align 16
  %23 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %21, i32 0, i32 1
  store i32 2322, i32* %23, align 4
  %24 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %25 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.device* %26, %struct.device** %7, align 8
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %29 = load i32, i32* @MSCC_PHY_PAGE_STANDARD, align 4
  %30 = call i32 @phy_base_write(%struct.phy_device* %27, i32 %28, i32 %29)
  %31 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %32 = load i32, i32* @MSCC_PHY_EXT_CNTL_STATUS, align 4
  %33 = call i32 @phy_base_read(%struct.phy_device* %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* @SMI_BROADCAST_WR_EN, align 4
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %38 = load i32, i32* @MSCC_PHY_EXT_CNTL_STATUS, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @phy_base_write(%struct.phy_device* %37, i32 %38, i32 %39)
  %41 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %42 = load i32, i32* @MII_VSC85XX_INT_MASK, align 4
  %43 = call i32 @phy_base_write(%struct.phy_device* %41, i32 %42, i32 0)
  %44 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %45 = load i32, i32* @MSCC_PHY_BYPASS_CONTROL, align 4
  %46 = call i32 @phy_base_read(%struct.phy_device* %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @PARALLEL_DET_IGNORE_ADVERTISED, align 4
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %51 = load i32, i32* @MSCC_PHY_BYPASS_CONTROL, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @phy_base_write(%struct.phy_device* %50, i32 %51, i32 %52)
  %54 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %55 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %56 = load i32, i32* @MSCC_PHY_PAGE_EXTENDED_3, align 4
  %57 = call i32 @phy_base_write(%struct.phy_device* %54, i32 %55, i32 %56)
  %58 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %59 = load i32, i32* @MSCC_PHY_SERDES_TX_CRC_ERR_CNT, align 4
  %60 = call i32 @phy_base_write(%struct.phy_device* %58, i32 %59, i32 8192)
  %61 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %62 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %63 = load i32, i32* @MSCC_PHY_PAGE_TEST, align 4
  %64 = call i32 @phy_base_write(%struct.phy_device* %61, i32 %62, i32 %63)
  %65 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %66 = load i32, i32* @MSCC_PHY_TEST_PAGE_5, align 4
  %67 = call i32 @phy_base_write(%struct.phy_device* %65, i32 %66, i32 7968)
  %68 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %69 = load i32, i32* @MSCC_PHY_TEST_PAGE_8, align 4
  %70 = call i32 @phy_base_read(%struct.phy_device* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, 32768
  store i32 %72, i32* %10, align 4
  %73 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %74 = load i32, i32* @MSCC_PHY_TEST_PAGE_8, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @phy_base_write(%struct.phy_device* %73, i32 %74, i32 %75)
  %77 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %78 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %79 = load i32, i32* @MSCC_PHY_PAGE_TR, align 4
  %80 = call i32 @phy_base_write(%struct.phy_device* %77, i32 %78, i32 %79)
  %81 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %82 = load i32, i32* @MSCC_PHY_TR_CNTL, align 4
  %83 = load i32, i32* @TR_WRITE, align 4
  %84 = call i32 @TR_ADDR(i32 12196)
  %85 = or i32 %83, %84
  %86 = call i32 @phy_base_write(%struct.phy_device* %81, i32 %82, i32 %85)
  %87 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %88 = load i32, i32* @MSCC_PHY_TR_MSB, align 4
  %89 = call i32 @phy_base_read(%struct.phy_device* %87, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = and i32 %90, -128
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, 25
  store i32 %93, i32* %10, align 4
  %94 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %95 = load i32, i32* @MSCC_PHY_TR_MSB, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @phy_base_write(%struct.phy_device* %94, i32 %95, i32 %96)
  %98 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %99 = load i32, i32* @MSCC_PHY_TR_CNTL, align 4
  %100 = load i32, i32* @TR_WRITE, align 4
  %101 = call i32 @TR_ADDR(i32 4004)
  %102 = or i32 %100, %101
  %103 = call i32 @phy_base_write(%struct.phy_device* %98, i32 %99, i32 %102)
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %122, %1
  %105 = load i32, i32* %8, align 4
  %106 = getelementptr inbounds [22 x %struct.reg_val], [22 x %struct.reg_val]* %4, i64 0, i64 0
  %107 = call i32 @ARRAY_SIZE(%struct.reg_val* %106)
  %108 = icmp ult i32 %105, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %104
  %110 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds [22 x %struct.reg_val], [22 x %struct.reg_val]* %4, i64 0, i64 %112
  %114 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %8, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [22 x %struct.reg_val], [22 x %struct.reg_val]* %4, i64 0, i64 %117
  %119 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @vsc8584_csr_write(%struct.phy_device* %110, i32 %115, i32 %120)
  br label %122

122:                                              ; preds = %109
  %123 = load i32, i32* %8, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %8, align 4
  br label %104

125:                                              ; preds = %104
  %126 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %127 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %128 = load i32, i32* @MSCC_PHY_PAGE_EXTENDED_2, align 4
  %129 = call i32 @phy_base_write(%struct.phy_device* %126, i32 %127, i32 %128)
  %130 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %131 = load i32, i32* @MSCC_PHY_CU_PMD_TX_CNTL, align 4
  %132 = call i32 @phy_base_write(%struct.phy_device* %130, i32 %131, i32 654)
  %133 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %134 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %135 = load i32, i32* @MSCC_PHY_PAGE_TR, align 4
  %136 = call i32 @phy_base_write(%struct.phy_device* %133, i32 %134, i32 %135)
  store i32 0, i32* %8, align 4
  br label %137

137:                                              ; preds = %155, %125
  %138 = load i32, i32* %8, align 4
  %139 = getelementptr inbounds [3 x %struct.reg_val], [3 x %struct.reg_val]* %5, i64 0, i64 0
  %140 = call i32 @ARRAY_SIZE(%struct.reg_val* %139)
  %141 = icmp ult i32 %138, %140
  br i1 %141, label %142, label %158

142:                                              ; preds = %137
  %143 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %144 = load i32, i32* %8, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds [3 x %struct.reg_val], [3 x %struct.reg_val]* %5, i64 0, i64 %145
  %147 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %8, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds [3 x %struct.reg_val], [3 x %struct.reg_val]* %5, i64 0, i64 %150
  %152 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @vsc8584_csr_write(%struct.phy_device* %143, i32 %148, i32 %153)
  br label %155

155:                                              ; preds = %142
  %156 = load i32, i32* %8, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %8, align 4
  br label %137

158:                                              ; preds = %137
  %159 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %160 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %161 = load i32, i32* @MSCC_PHY_PAGE_TEST, align 4
  %162 = call i32 @phy_base_write(%struct.phy_device* %159, i32 %160, i32 %161)
  %163 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %164 = load i32, i32* @MSCC_PHY_TEST_PAGE_8, align 4
  %165 = call i32 @phy_base_read(%struct.phy_device* %163, i32 %164)
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = and i32 %166, -32769
  store i32 %167, i32* %10, align 4
  %168 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %169 = load i32, i32* @MSCC_PHY_TEST_PAGE_8, align 4
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @phy_base_write(%struct.phy_device* %168, i32 %169, i32 %170)
  %172 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %173 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %174 = load i32, i32* @MSCC_PHY_PAGE_STANDARD, align 4
  %175 = call i32 @phy_base_write(%struct.phy_device* %172, i32 %173, i32 %174)
  %176 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %177 = load i32, i32* @MSCC_PHY_EXT_CNTL_STATUS, align 4
  %178 = call i32 @phy_base_read(%struct.phy_device* %176, i32 %177)
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* @SMI_BROADCAST_WR_EN, align 4
  %180 = xor i32 %179, -1
  %181 = load i32, i32* %10, align 4
  %182 = and i32 %181, %180
  store i32 %182, i32* %10, align 4
  %183 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %184 = load i32, i32* @MSCC_PHY_EXT_CNTL_STATUS, align 4
  %185 = load i32, i32* %10, align 4
  %186 = call i32 @phy_base_write(%struct.phy_device* %183, i32 %184, i32 %185)
  %187 = load i32, i32* @MSCC_VSC8584_REVB_INT8051_FW, align 4
  %188 = load %struct.device*, %struct.device** %7, align 8
  %189 = call i32 @request_firmware(%struct.firmware** %6, i32 %187, %struct.device* %188)
  store i32 %189, i32* %11, align 4
  %190 = load i32, i32* %11, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %158
  %193 = load %struct.device*, %struct.device** %7, align 8
  %194 = load i32, i32* @MSCC_VSC8584_REVB_INT8051_FW, align 4
  %195 = load i32, i32* %11, align 4
  %196 = call i32 @dev_err(%struct.device* %193, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %194, i32 %195)
  %197 = load i32, i32* %11, align 4
  store i32 %197, i32* %2, align 4
  br label %261

198:                                              ; preds = %158
  %199 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %200 = load i32, i32* @MSCC_VSC8584_REVB_INT8051_FW_START_ADDR, align 4
  %201 = load %struct.firmware*, %struct.firmware** %6, align 8
  %202 = getelementptr inbounds %struct.firmware, %struct.firmware* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = add nsw i64 %203, 1
  %205 = call i32 @vsc8584_get_fw_crc(%struct.phy_device* %199, i32 %200, i64 %204, i32* %9)
  store i32 %205, i32* %11, align 4
  %206 = load i32, i32* %11, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %198
  br label %253

209:                                              ; preds = %198
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* @MSCC_VSC8584_REVB_INT8051_FW_CRC, align 4
  %212 = icmp ne i32 %210, %211
  br i1 %212, label %213, label %224

213:                                              ; preds = %209
  %214 = load %struct.device*, %struct.device** %7, align 8
  %215 = call i32 @dev_dbg(%struct.device* %214, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %216 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %217 = load %struct.firmware*, %struct.firmware** %6, align 8
  %218 = call i64 @vsc8584_patch_fw(%struct.phy_device* %216, %struct.firmware* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %213
  %221 = load %struct.device*, %struct.device** %7, align 8
  %222 = call i32 @dev_warn(%struct.device* %221, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %223

223:                                              ; preds = %220, %213
  br label %224

224:                                              ; preds = %223, %209
  %225 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %226 = call i32 @vsc8584_micro_deassert_reset(%struct.phy_device* %225, i32 0)
  %227 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %228 = load i32, i32* @MSCC_VSC8584_REVB_INT8051_FW_START_ADDR, align 4
  %229 = load %struct.firmware*, %struct.firmware** %6, align 8
  %230 = getelementptr inbounds %struct.firmware, %struct.firmware* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = add nsw i64 %231, 1
  %233 = call i32 @vsc8584_get_fw_crc(%struct.phy_device* %227, i32 %228, i64 %232, i32* %9)
  store i32 %233, i32* %11, align 4
  %234 = load i32, i32* %11, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %224
  br label %253

237:                                              ; preds = %224
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* @MSCC_VSC8584_REVB_INT8051_FW_CRC, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = load %struct.device*, %struct.device** %7, align 8
  %243 = call i32 @dev_warn(%struct.device* %242, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.3, i64 0, i64 0))
  br label %244

244:                                              ; preds = %241, %237
  %245 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %246 = call i32 @vsc8584_micro_assert_reset(%struct.phy_device* %245)
  store i32 %246, i32* %11, align 4
  %247 = load i32, i32* %11, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  br label %253

250:                                              ; preds = %244
  %251 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %252 = call i32 @vsc8584_micro_deassert_reset(%struct.phy_device* %251, i32 1)
  br label %253

253:                                              ; preds = %250, %249, %236, %208
  %254 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %255 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %256 = load i32, i32* @MSCC_PHY_PAGE_STANDARD, align 4
  %257 = call i32 @phy_base_write(%struct.phy_device* %254, i32 %255, i32 %256)
  %258 = load %struct.firmware*, %struct.firmware** %6, align 8
  %259 = call i32 @release_firmware(%struct.firmware* %258)
  %260 = load i32, i32* %11, align 4
  store i32 %260, i32* %2, align 4
  br label %261

261:                                              ; preds = %253, %192
  %262 = load i32, i32* %2, align 4
  ret i32 %262
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @phy_base_write(%struct.phy_device*, i32, i32) #2

declare dso_local i32 @phy_base_read(%struct.phy_device*, i32) #2

declare dso_local i32 @TR_ADDR(i32) #2

declare dso_local i32 @ARRAY_SIZE(%struct.reg_val*) #2

declare dso_local i32 @vsc8584_csr_write(%struct.phy_device*, i32, i32) #2

declare dso_local i32 @request_firmware(%struct.firmware**, i32, %struct.device*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #2

declare dso_local i32 @vsc8584_get_fw_crc(%struct.phy_device*, i32, i64, i32*) #2

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #2

declare dso_local i64 @vsc8584_patch_fw(%struct.phy_device*, %struct.firmware*) #2

declare dso_local i32 @dev_warn(%struct.device*, i8*) #2

declare dso_local i32 @vsc8584_micro_deassert_reset(%struct.phy_device*, i32) #2

declare dso_local i32 @vsc8584_micro_assert_reset(%struct.phy_device*) #2

declare dso_local i32 @release_firmware(%struct.firmware*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
