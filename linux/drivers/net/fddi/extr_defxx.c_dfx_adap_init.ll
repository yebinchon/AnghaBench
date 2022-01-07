; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_adap_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_adap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_29__*, %struct.TYPE_28__*, i32, i32, i32, i32, i32, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__, %struct.TYPE_25__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i8*, i64, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i8*, i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"In dfx_adap_init...\0A\00", align 1
@PI_PDQ_K_REG_HOST_INT_ENB = common dso_local global i32 0, align 4
@PI_HOST_INT_K_DISABLE_ALL_INTS = common dso_local global i32 0, align 4
@DFX_K_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: Could not uninitialize/reset adapter!\0A\00", align 1
@DFX_K_FAILURE = common dso_local global i32 0, align 4
@PI_PDQ_K_REG_TYPE_0_STATUS = common dso_local global i32 0, align 4
@PI_HOST_INT_K_ACK_ALL_TYPE_0 = common dso_local global i32 0, align 4
@PI_PCTRL_M_SUB_CMD = common dso_local global i32 0, align 4
@PI_SUB_CMD_K_BURST_SIZE_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"%s: Could not set adapter burst size!\0A\00", align 1
@PI_PCTRL_M_CONS_BLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"%s: Could not set consumer block address!\0A\00", align 1
@PI_PCTRL_M_INIT = common dso_local global i32 0, align 4
@PI_PDATA_A_INIT_M_BSWAP_INIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"%s: Could not set descriptor block address!\0A\00", align 1
@PI_CMD_K_CHARS_SET = common dso_local global i32 0, align 4
@PI_ITEM_K_FLUSH_TIME = common dso_local global i8* null, align 8
@PI_ITEM_K_EOL = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"%s: DMA command request failed!\0A\00", align 1
@PI_CMD_K_SNMP_SET = common dso_local global i32 0, align 4
@PI_ITEM_K_FDX_ENB_DIS = common dso_local global i8* null, align 8
@PI_ITEM_K_MAC_T_REQ = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [32 x i8] c"%s: Adapter CAM update failed!\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"%s: Adapter filters update failed!\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"%s: Receive buffer allocation failed\0A\00", align 1
@PI_CMD_K_START = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"%s: Start command failed\0A\00", align 1
@PI_HOST_INT_K_ENABLE_DEF_INTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32)* @dfx_adap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfx_adap_init(%struct.TYPE_20__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = call i32 @DBG_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %8 = load i32, i32* @PI_PDQ_K_REG_HOST_INT_ENB, align 4
  %9 = load i32, i32* @PI_HOST_INT_K_DISABLE_ALL_INTS, align 4
  %10 = call i32 @dfx_port_write_long(%struct.TYPE_20__* %7, i32 %8, i32 %9)
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @dfx_hw_dma_uninit(%struct.TYPE_20__* %11, i32 %14)
  %16 = load i64, i64* @DFX_K_SUCCESS, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @DFX_K_FAILURE, align 4
  store i32 %25, i32* %3, align 4
  br label %314

26:                                               ; preds = %2
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %28 = load i32, i32* @PI_PDQ_K_REG_TYPE_0_STATUS, align 4
  %29 = load i32, i32* @PI_HOST_INT_K_ACK_ALL_TYPE_0, align 4
  %30 = call i32 @dfx_port_write_long(%struct.TYPE_20__* %27, i32 %28, i32 %29)
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 10
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 9
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @memset(i32 %42, i32 0, i32 4)
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %45 = load i32, i32* @PI_PCTRL_M_SUB_CMD, align 4
  %46 = load i32, i32* @PI_SUB_CMD_K_BURST_SIZE_SET, align 4
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @dfx_hw_port_ctrl_req(%struct.TYPE_20__* %44, i32 %45, i32 %46, i32 %49, i32* null)
  %51 = load i64, i64* @DFX_K_SUCCESS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %26
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_29__*, %struct.TYPE_29__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @DFX_K_FAILURE, align 4
  store i32 %60, i32* %3, align 4
  br label %314

61:                                               ; preds = %26
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %63 = load i32, i32* @PI_PCTRL_M_CONS_BLOCK, align 4
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @dfx_hw_port_ctrl_req(%struct.TYPE_20__* %62, i32 %63, i32 %66, i32 0, i32* null)
  %68 = load i64, i64* @DFX_K_SUCCESS, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %61
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @DFX_K_FAILURE, align 4
  store i32 %77, i32* %3, align 4
  br label %314

78:                                               ; preds = %61
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %80 = load i32, i32* @PI_PCTRL_M_INIT, align 4
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @PI_PDATA_A_INIT_M_BSWAP_INIT, align 4
  %85 = or i32 %83, %84
  %86 = call i64 @dfx_hw_port_ctrl_req(%struct.TYPE_20__* %79, i32 %80, i32 %85, i32 0, i32* null)
  %87 = load i64, i64* @DFX_K_SUCCESS, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %78
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @DFX_K_FAILURE, align 4
  store i32 %96, i32* %3, align 4
  br label %314

97:                                               ; preds = %78
  %98 = load i32, i32* @PI_CMD_K_CHARS_SET, align 4
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 8
  %103 = load i8*, i8** @PI_ITEM_K_FLUSH_TIME, align 8
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i64 0
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 1
  store i8* %103, i8** %111, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 0
  store i32 3, i32* %119, align 8
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 2
  store i64 0, i64* %127, align 8
  %128 = load i8*, i8** @PI_ITEM_K_EOL, align 8
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i64 1
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 1
  store i8* %128, i8** %136, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %138 = call i64 @dfx_hw_dma_cmd_req(%struct.TYPE_20__* %137)
  %139 = load i64, i64* @DFX_K_SUCCESS, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %97
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* @DFX_K_FAILURE, align 4
  store i32 %148, i32* %3, align 4
  br label %314

149:                                              ; preds = %97
  %150 = load i32, i32* @PI_CMD_K_SNMP_SET, align 4
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 0
  store i32 %150, i32* %154, align 8
  %155 = load i8*, i8** @PI_ITEM_K_FDX_ENB_DIS, align 8
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i64 0
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 0
  store i8* %155, i8** %163, align 8
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i64 0
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 2
  store i32 %166, i32* %174, align 8
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_28__*, %struct.TYPE_28__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_26__*, %struct.TYPE_26__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 1
  store i64 0, i64* %182, align 8
  %183 = load i8*, i8** @PI_ITEM_K_MAC_T_REQ, align 8
  %184 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i64 1
  %191 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %190, i32 0, i32 0
  store i8* %183, i8** %191, align 8
  %192 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_28__*, %struct.TYPE_28__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i64 1
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %201, i32 0, i32 2
  store i32 %194, i32* %202, align 8
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 2
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 0
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %208, i64 1
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 1
  store i64 0, i64* %210, align 8
  %211 = load i8*, i8** @PI_ITEM_K_EOL, align 8
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_26__*, %struct.TYPE_26__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %217, i64 2
  %219 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %218, i32 0, i32 0
  store i8* %211, i8** %219, align 8
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %221 = call i64 @dfx_hw_dma_cmd_req(%struct.TYPE_20__* %220)
  %222 = load i64, i64* @DFX_K_SUCCESS, align 8
  %223 = icmp ne i64 %221, %222
  br i1 %223, label %224, label %232

224:                                              ; preds = %149
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_29__*, %struct.TYPE_29__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %229)
  %231 = load i32, i32* @DFX_K_FAILURE, align 4
  store i32 %231, i32* %3, align 4
  br label %314

232:                                              ; preds = %149
  %233 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %234 = call i64 @dfx_ctl_update_cam(%struct.TYPE_20__* %233)
  %235 = load i64, i64* @DFX_K_SUCCESS, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %245

237:                                              ; preds = %232
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_29__*, %struct.TYPE_29__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %242)
  %244 = load i32, i32* @DFX_K_FAILURE, align 4
  store i32 %244, i32* %3, align 4
  br label %314

245:                                              ; preds = %232
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %247 = call i64 @dfx_ctl_update_filters(%struct.TYPE_20__* %246)
  %248 = load i64, i64* @DFX_K_SUCCESS, align 8
  %249 = icmp ne i64 %247, %248
  br i1 %249, label %250, label %258

250:                                              ; preds = %245
  %251 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 1
  %253 = load %struct.TYPE_29__*, %struct.TYPE_29__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %255)
  %257 = load i32, i32* @DFX_K_FAILURE, align 4
  store i32 %257, i32* %3, align 4
  br label %314

258:                                              ; preds = %245
  %259 = load i32, i32* %5, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %263 = call i32 @dfx_rcv_flush(%struct.TYPE_20__* %262)
  br label %264

264:                                              ; preds = %261, %258
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %266 = load i32, i32* %5, align 4
  %267 = call i64 @dfx_rcv_init(%struct.TYPE_20__* %265, i32 %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %283

269:                                              ; preds = %264
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i32 0, i32 1
  %272 = load %struct.TYPE_29__*, %struct.TYPE_29__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32 %274)
  %276 = load i32, i32* %5, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %269
  %279 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %280 = call i32 @dfx_rcv_flush(%struct.TYPE_20__* %279)
  br label %281

281:                                              ; preds = %278, %269
  %282 = load i32, i32* @DFX_K_FAILURE, align 4
  store i32 %282, i32* %3, align 4
  br label %314

283:                                              ; preds = %264
  %284 = load i32, i32* @PI_CMD_K_START, align 4
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 2
  %287 = load %struct.TYPE_28__*, %struct.TYPE_28__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %287, i32 0, i32 0
  store i32 %284, i32* %288, align 8
  %289 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %290 = call i64 @dfx_hw_dma_cmd_req(%struct.TYPE_20__* %289)
  %291 = load i64, i64* @DFX_K_SUCCESS, align 8
  %292 = icmp ne i64 %290, %291
  br i1 %292, label %293, label %307

293:                                              ; preds = %283
  %294 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %294, i32 0, i32 1
  %296 = load %struct.TYPE_29__*, %struct.TYPE_29__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %298)
  %300 = load i32, i32* %5, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %293
  %303 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %304 = call i32 @dfx_rcv_flush(%struct.TYPE_20__* %303)
  br label %305

305:                                              ; preds = %302, %293
  %306 = load i32, i32* @DFX_K_FAILURE, align 4
  store i32 %306, i32* %3, align 4
  br label %314

307:                                              ; preds = %283
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %309 = load i32, i32* @PI_PDQ_K_REG_HOST_INT_ENB, align 4
  %310 = load i32, i32* @PI_HOST_INT_K_ENABLE_DEF_INTS, align 4
  %311 = call i32 @dfx_port_write_long(%struct.TYPE_20__* %308, i32 %309, i32 %310)
  %312 = load i64, i64* @DFX_K_SUCCESS, align 8
  %313 = trunc i64 %312 to i32
  store i32 %313, i32* %3, align 4
  br label %314

314:                                              ; preds = %307, %305, %281, %250, %237, %224, %141, %89, %70, %53, %18
  %315 = load i32, i32* %3, align 4
  ret i32 %315
}

declare dso_local i32 @DBG_printk(i8*) #1

declare dso_local i32 @dfx_port_write_long(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i64 @dfx_hw_dma_uninit(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @dfx_hw_port_ctrl_req(%struct.TYPE_20__*, i32, i32, i32, i32*) #1

declare dso_local i64 @dfx_hw_dma_cmd_req(%struct.TYPE_20__*) #1

declare dso_local i64 @dfx_ctl_update_cam(%struct.TYPE_20__*) #1

declare dso_local i64 @dfx_ctl_update_filters(%struct.TYPE_20__*) #1

declare dso_local i32 @dfx_rcv_flush(%struct.TYPE_20__*) #1

declare dso_local i64 @dfx_rcv_init(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
