; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_smc_nand_prepare_smcconf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_smc_nand_prepare_smcconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_nand = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nand_data_interface = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atmel_smc_cs_conf = type { i32, i32 }
%struct.atmel_nand_controller = type { i32 }

@NAND_SDR_IFACE = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@ATMEL_SMC_NWE_SHIFT = common dso_local global i32 0, align 4
@ATMEL_SMC_NCS_WR_SHIFT = common dso_local global i32 0, align 4
@ATMEL_SMC_MODE_TDF_MAX = common dso_local global i32 0, align 4
@ATMEL_SMC_MODE_TDF_MIN = common dso_local global i32 0, align 4
@ATMEL_SMC_MODE_TDFMODE_OPTIMIZED = common dso_local global i32 0, align 4
@ATMEL_SMC_NRD_SHIFT = common dso_local global i32 0, align 4
@ATMEL_SMC_NCS_RD_SHIFT = common dso_local global i32 0, align 4
@ATMEL_HSMC_TIMINGS_TCLR_SHIFT = common dso_local global i32 0, align 4
@ATMEL_HSMC_TIMINGS_TADL_SHIFT = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ATMEL_HSMC_TIMINGS_TAR_SHIFT = common dso_local global i32 0, align 4
@ATMEL_HSMC_TIMINGS_TRR_SHIFT = common dso_local global i32 0, align 4
@ATMEL_HSMC_TIMINGS_TWB_SHIFT = common dso_local global i32 0, align 4
@ATMEL_HSMC_TIMINGS_NFSEL = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@ATMEL_SMC_MODE_DBW_16 = common dso_local global i32 0, align 4
@ATMEL_SMC_MODE_READMODE_NRD = common dso_local global i32 0, align 4
@ATMEL_SMC_MODE_WRITEMODE_NWE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_nand*, %struct.nand_data_interface*, %struct.atmel_smc_cs_conf*)* @atmel_smc_nand_prepare_smcconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_smc_nand_prepare_smcconf(%struct.atmel_nand* %0, %struct.nand_data_interface* %1, %struct.atmel_smc_cs_conf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_nand*, align 8
  %6 = alloca %struct.nand_data_interface*, align 8
  %7 = alloca %struct.atmel_smc_cs_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.atmel_nand_controller*, align 8
  %13 = alloca i32, align 4
  store %struct.atmel_nand* %0, %struct.atmel_nand** %5, align 8
  store %struct.nand_data_interface* %1, %struct.nand_data_interface** %6, align 8
  store %struct.atmel_smc_cs_conf* %2, %struct.atmel_smc_cs_conf** %7, align 8
  %14 = load %struct.atmel_nand*, %struct.atmel_nand** %5, align 8
  %15 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.atmel_nand_controller* @to_nand_controller(i32 %17)
  store %struct.atmel_nand_controller* %18, %struct.atmel_nand_controller** %12, align 8
  %19 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %20 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NAND_SDR_IFACE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %379

27:                                               ; preds = %3
  %28 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %29 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 30000
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %379

37:                                               ; preds = %27
  %38 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %7, align 8
  %39 = call i32 @atmel_smc_cs_conf_init(%struct.atmel_smc_cs_conf* %38)
  %40 = load i32, i32* @NSEC_PER_SEC, align 4
  %41 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %12, align 8
  %42 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clk_get_rate(i32 %43)
  %45 = sdiv i32 %40, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = mul nsw i32 %46, 1000
  store i32 %47, i32* %11, align 4
  %48 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %49 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @DIV_ROUND_UP(i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %9, align 4
  %56 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %7, align 8
  %57 = load i32, i32* @ATMEL_SMC_NWE_SHIFT, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @atmel_smc_cs_conf_set_pulse(%struct.atmel_smc_cs_conf* %56, i32 %57, i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %37
  %63 = load i32, i32* %13, align 4
  store i32 %63, i32* %4, align 4
  br label %379

64:                                               ; preds = %37
  %65 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %66 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %71 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 20
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %76 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 19
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @max3(i32 %69, i32 %74, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %83 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @max(i32 %81, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @DIV_ROUND_UP(i32 %88, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %64
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sub nsw i32 %95, %96
  br label %99

98:                                               ; preds = %64
  br label %99

99:                                               ; preds = %98, %94
  %100 = phi i32 [ %97, %94 ], [ 0, %98 ]
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %9, align 4
  %104 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %7, align 8
  %105 = load i32, i32* @ATMEL_SMC_NWE_SHIFT, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @atmel_smc_cs_conf_set_setup(%struct.atmel_smc_cs_conf* %104, i32 %105, i32 %106)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %99
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %4, align 4
  br label %379

112:                                              ; preds = %99
  %113 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %114 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %119 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 18
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %124 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 17
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @max3(i32 %117, i32 %122, i32 %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %131 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 16
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %136 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 15
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @max3(i32 %129, i32 %134, i32 %139)
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @DIV_ROUND_UP(i32 %141, i32 %142)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %9, align 4
  %147 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %148 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @DIV_ROUND_UP(i32 %151, i32 %152)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @max(i32 %154, i32 %155)
  store i32 %156, i32* %8, align 4
  %157 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %7, align 8
  %158 = load i32, i32* @ATMEL_SMC_NWE_SHIFT, align 4
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @atmel_smc_cs_conf_set_cycle(%struct.atmel_smc_cs_conf* %157, i32 %158, i32 %159)
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %13, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %112
  %164 = load i32, i32* %13, align 4
  store i32 %164, i32* %4, align 4
  br label %379

165:                                              ; preds = %112
  %166 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %7, align 8
  %167 = load i32, i32* @ATMEL_SMC_NCS_WR_SHIFT, align 4
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @atmel_smc_cs_conf_set_pulse(%struct.atmel_smc_cs_conf* %166, i32 %167, i32 %168)
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %165
  %173 = load i32, i32* %13, align 4
  store i32 %173, i32* %4, align 4
  br label %379

174:                                              ; preds = %165
  %175 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %176 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %181 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 7
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @max(i32 %179, i32 %184)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %11, align 4
  %188 = call i32 @DIV_ROUND_UP(i32 %186, i32 %187)
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %8, align 4
  store i32 %189, i32* %9, align 4
  %190 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %191 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %11, align 4
  %196 = call i32 @DIV_ROUND_UP(i32 %194, i32 %195)
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %8, align 4
  %199 = sub nsw i32 %198, %197
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* @ATMEL_SMC_MODE_TDF_MAX, align 4
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %174
  %204 = load i32, i32* @ATMEL_SMC_MODE_TDF_MAX, align 4
  store i32 %204, i32* %8, align 4
  br label %212

205:                                              ; preds = %174
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* @ATMEL_SMC_MODE_TDF_MIN, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = load i32, i32* @ATMEL_SMC_MODE_TDF_MIN, align 4
  store i32 %210, i32* %8, align 4
  br label %211

211:                                              ; preds = %209, %205
  br label %212

212:                                              ; preds = %211, %203
  %213 = load i32, i32* %8, align 4
  %214 = call i32 @ATMEL_SMC_MODE_TDF(i32 %213)
  %215 = load i32, i32* @ATMEL_SMC_MODE_TDFMODE_OPTIMIZED, align 4
  %216 = or i32 %214, %215
  %217 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %7, align 8
  %218 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 4
  %221 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %222 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 9
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* %11, align 4
  %227 = call i32 @DIV_ROUND_UP(i32 %225, i32 %226)
  store i32 %227, i32* %8, align 4
  %228 = load i32, i32* %8, align 4
  %229 = load i32, i32* %9, align 4
  %230 = add nsw i32 %229, %228
  store i32 %230, i32* %9, align 4
  %231 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %7, align 8
  %232 = load i32, i32* @ATMEL_SMC_NRD_SHIFT, align 4
  %233 = load i32, i32* %8, align 4
  %234 = call i32 @atmel_smc_cs_conf_set_pulse(%struct.atmel_smc_cs_conf* %231, i32 %232, i32 %233)
  store i32 %234, i32* %13, align 4
  %235 = load i32, i32* %13, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %239

237:                                              ; preds = %212
  %238 = load i32, i32* %13, align 4
  store i32 %238, i32* %4, align 4
  br label %379

239:                                              ; preds = %212
  %240 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %241 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* %11, align 4
  %246 = call i32 @DIV_ROUND_UP(i32 %244, i32 %245)
  store i32 %246, i32* %8, align 4
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* %8, align 4
  %249 = call i32 @max(i32 %247, i32 %248)
  store i32 %249, i32* %8, align 4
  %250 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %7, align 8
  %251 = load i32, i32* @ATMEL_SMC_NRD_SHIFT, align 4
  %252 = load i32, i32* %8, align 4
  %253 = call i32 @atmel_smc_cs_conf_set_cycle(%struct.atmel_smc_cs_conf* %250, i32 %251, i32 %252)
  store i32 %253, i32* %13, align 4
  %254 = load i32, i32* %13, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %239
  %257 = load i32, i32* %13, align 4
  store i32 %257, i32* %4, align 4
  br label %379

258:                                              ; preds = %239
  %259 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %7, align 8
  %260 = load i32, i32* @ATMEL_SMC_NCS_RD_SHIFT, align 4
  %261 = load i32, i32* %8, align 4
  %262 = call i32 @atmel_smc_cs_conf_set_pulse(%struct.atmel_smc_cs_conf* %259, i32 %260, i32 %261)
  store i32 %262, i32* %13, align 4
  %263 = load i32, i32* %13, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %258
  %266 = load i32, i32* %13, align 4
  store i32 %266, i32* %4, align 4
  br label %379

267:                                              ; preds = %258
  %268 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %269 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 10
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %11, align 4
  %274 = call i32 @DIV_ROUND_UP(i32 %272, i32 %273)
  store i32 %274, i32* %8, align 4
  %275 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %7, align 8
  %276 = load i32, i32* @ATMEL_HSMC_TIMINGS_TCLR_SHIFT, align 4
  %277 = load i32, i32* %8, align 4
  %278 = call i32 @atmel_smc_cs_conf_set_timing(%struct.atmel_smc_cs_conf* %275, i32 %276, i32 %277)
  store i32 %278, i32* %13, align 4
  %279 = load i32, i32* %13, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %283

281:                                              ; preds = %267
  %282 = load i32, i32* %13, align 4
  store i32 %282, i32* %4, align 4
  br label %379

283:                                              ; preds = %267
  %284 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %285 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i32 0, i32 11
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %11, align 4
  %290 = call i32 @DIV_ROUND_UP(i32 %288, i32 %289)
  store i32 %290, i32* %8, align 4
  %291 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %7, align 8
  %292 = load i32, i32* @ATMEL_HSMC_TIMINGS_TADL_SHIFT, align 4
  %293 = load i32, i32* %8, align 4
  %294 = call i32 @atmel_smc_cs_conf_set_timing(%struct.atmel_smc_cs_conf* %291, i32 %292, i32 %293)
  store i32 %294, i32* %13, align 4
  %295 = load i32, i32* %13, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %304

297:                                              ; preds = %283
  %298 = load i32, i32* %13, align 4
  %299 = load i32, i32* @ERANGE, align 4
  %300 = sub nsw i32 0, %299
  %301 = icmp ne i32 %298, %300
  br i1 %301, label %302, label %304

302:                                              ; preds = %297
  %303 = load i32, i32* %13, align 4
  store i32 %303, i32* %4, align 4
  br label %379

304:                                              ; preds = %297, %283
  %305 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %306 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 12
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* %11, align 4
  %311 = call i32 @DIV_ROUND_UP(i32 %309, i32 %310)
  store i32 %311, i32* %8, align 4
  %312 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %7, align 8
  %313 = load i32, i32* @ATMEL_HSMC_TIMINGS_TAR_SHIFT, align 4
  %314 = load i32, i32* %8, align 4
  %315 = call i32 @atmel_smc_cs_conf_set_timing(%struct.atmel_smc_cs_conf* %312, i32 %313, i32 %314)
  store i32 %315, i32* %13, align 4
  %316 = load i32, i32* %13, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %304
  %319 = load i32, i32* %13, align 4
  store i32 %319, i32* %4, align 4
  br label %379

320:                                              ; preds = %304
  %321 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %322 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 13
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* %11, align 4
  %327 = call i32 @DIV_ROUND_UP(i32 %325, i32 %326)
  store i32 %327, i32* %8, align 4
  %328 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %7, align 8
  %329 = load i32, i32* @ATMEL_HSMC_TIMINGS_TRR_SHIFT, align 4
  %330 = load i32, i32* %8, align 4
  %331 = call i32 @atmel_smc_cs_conf_set_timing(%struct.atmel_smc_cs_conf* %328, i32 %329, i32 %330)
  store i32 %331, i32* %13, align 4
  %332 = load i32, i32* %13, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %336

334:                                              ; preds = %320
  %335 = load i32, i32* %13, align 4
  store i32 %335, i32* %4, align 4
  br label %379

336:                                              ; preds = %320
  %337 = load %struct.nand_data_interface*, %struct.nand_data_interface** %6, align 8
  %338 = getelementptr inbounds %struct.nand_data_interface, %struct.nand_data_interface* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 14
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* %11, align 4
  %343 = call i32 @DIV_ROUND_UP(i32 %341, i32 %342)
  store i32 %343, i32* %8, align 4
  %344 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %7, align 8
  %345 = load i32, i32* @ATMEL_HSMC_TIMINGS_TWB_SHIFT, align 4
  %346 = load i32, i32* %8, align 4
  %347 = call i32 @atmel_smc_cs_conf_set_timing(%struct.atmel_smc_cs_conf* %344, i32 %345, i32 %346)
  store i32 %347, i32* %13, align 4
  %348 = load i32, i32* %13, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %336
  %351 = load i32, i32* %13, align 4
  store i32 %351, i32* %4, align 4
  br label %379

352:                                              ; preds = %336
  %353 = load i32, i32* @ATMEL_HSMC_TIMINGS_NFSEL, align 4
  %354 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %7, align 8
  %355 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = or i32 %356, %353
  store i32 %357, i32* %355, align 4
  %358 = load %struct.atmel_nand*, %struct.atmel_nand** %5, align 8
  %359 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %371

365:                                              ; preds = %352
  %366 = load i32, i32* @ATMEL_SMC_MODE_DBW_16, align 4
  %367 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %7, align 8
  %368 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 4
  %370 = or i32 %369, %366
  store i32 %370, i32* %368, align 4
  br label %371

371:                                              ; preds = %365, %352
  %372 = load i32, i32* @ATMEL_SMC_MODE_READMODE_NRD, align 4
  %373 = load i32, i32* @ATMEL_SMC_MODE_WRITEMODE_NWE, align 4
  %374 = or i32 %372, %373
  %375 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %7, align 8
  %376 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = or i32 %377, %374
  store i32 %378, i32* %376, align 4
  store i32 0, i32* %4, align 4
  br label %379

379:                                              ; preds = %371, %350, %334, %318, %302, %281, %265, %256, %237, %172, %163, %110, %62, %34, %24
  %380 = load i32, i32* %4, align 4
  ret i32 %380
}

declare dso_local %struct.atmel_nand_controller* @to_nand_controller(i32) #1

declare dso_local i32 @atmel_smc_cs_conf_init(%struct.atmel_smc_cs_conf*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @atmel_smc_cs_conf_set_pulse(%struct.atmel_smc_cs_conf*, i32, i32) #1

declare dso_local i32 @max3(i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @atmel_smc_cs_conf_set_setup(%struct.atmel_smc_cs_conf*, i32, i32) #1

declare dso_local i32 @atmel_smc_cs_conf_set_cycle(%struct.atmel_smc_cs_conf*, i32, i32) #1

declare dso_local i32 @ATMEL_SMC_MODE_TDF(i32) #1

declare dso_local i32 @atmel_smc_cs_conf_set_timing(%struct.atmel_smc_cs_conf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
