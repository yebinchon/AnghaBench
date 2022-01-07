; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_driver_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_driver_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32 }
%struct.TYPE_7__ = type { i32, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, %struct.device*, i32*, i32, i32 }
%struct.device = type { i32 }

@DFX_MMIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"In dfx_driver_init...\0A\00", align 1
@PI_SNMP_K_FALSE = common dso_local global i32 0, align 4
@PI_PDATA_B_DMA_BURST_SIZE_DEF = common dso_local global i32 0, align 4
@RCV_BUFS_DEF = common dso_local global i32 0, align 4
@PI_PDQ_K_REG_HOST_INT_ENB = common dso_local global i32 0, align 4
@PI_HOST_INT_K_DISABLE_ALL_INTS = common dso_local global i32 0, align 4
@PI_PDATA_A_RESET_M_SKIP_ST = common dso_local global i32 0, align 4
@PI_PCTRL_M_MLA = common dso_local global i32 0, align 4
@PI_PDATA_A_MLA_K_LO = common dso_local global i32 0, align 4
@DFX_K_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"%s: Could not read adapter factory MAC address!\0A\00", align 1
@DFX_K_FAILURE = common dso_local global i32 0, align 4
@PI_PDATA_A_MLA_K_HI = common dso_local global i32 0, align 4
@FDDI_K_ALEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"DEFTA\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"DEFEA\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"DEFPA\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"%s: %s at %s addr = 0x%llx, IRQ = %d, Hardware addr = %pMF\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"MMIO\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"I/O\00", align 1
@PI_CMD_REQ_K_SIZE_MAX = common dso_local global i32 0, align 4
@PI_CMD_RSP_K_SIZE_MAX = common dso_local global i32 0, align 4
@PI_RCV_DATA_K_SIZE_MAX = common dso_local global i32 0, align 4
@PI_ALIGN_K_DESC_BLK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"%s: Descriptor block virt = %p, phys = %pad\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"%s: Command Request buffer virt = %p, phys = %pad\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"%s: Command Response buffer virt = %p, phys = %pad\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"%s: Receive buffer block virt = %p, phys = %pad\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"%s: Consumer block virt = %p, phys = %pad\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*, i64)* @dfx_driver_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfx_driver_init(%struct.net_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call %struct.TYPE_7__* @netdev_priv(%struct.net_device* %22)
  store %struct.TYPE_7__* %23, %struct.TYPE_7__** %8, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 14
  %26 = load %struct.device*, %struct.device** %25, align 8
  store %struct.device* %26, %struct.device** %9, align 8
  %27 = load %struct.device*, %struct.device** %9, align 8
  %28 = call i32 @dev_is_pci(%struct.device* %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.device*, %struct.device** %9, align 8
  %30 = call i32 @DFX_BUS_EISA(%struct.device* %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.device*, %struct.device** %9, align 8
  %32 = call i32 @DFX_BUS_TC(%struct.device* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i64, i64* @DFX_MMIO, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %3
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %35, %3
  %39 = phi i1 [ true, %3 ], [ %37, %35 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %13, align 4
  store i8* null, i8** %21, align 8
  %41 = call i32 (i8*, ...) @DBG_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = call i32 @dfx_bus_init(%struct.net_device* %42)
  %44 = load i32, i32* @PI_SNMP_K_FALSE, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 17
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 100000, i32* %48, align 8
  %49 = load i32, i32* @PI_PDATA_B_DMA_BURST_SIZE_DEF, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 16
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @RCV_BUFS_DEF, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = call i32 @dfx_bus_config_check(%struct.TYPE_7__* %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = load i32, i32* @PI_PDQ_K_REG_HOST_INT_ENB, align 4
  %59 = load i32, i32* @PI_HOST_INT_K_DISABLE_ALL_INTS, align 4
  %60 = call i32 @dfx_port_write_long(%struct.TYPE_7__* %57, i32 %58, i32 %59)
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = load i32, i32* @PI_PDATA_A_RESET_M_SKIP_ST, align 4
  %63 = call i32 @dfx_hw_dma_uninit(%struct.TYPE_7__* %61, i32 %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = load i32, i32* @PI_PCTRL_M_MLA, align 4
  %66 = load i32, i32* @PI_PDATA_A_MLA_K_LO, align 4
  %67 = call i64 @dfx_hw_port_ctrl_req(%struct.TYPE_7__* %64, i32 %65, i32 %66, i32 0, i32* %19)
  %68 = load i64, i64* @DFX_K_SUCCESS, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %38
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* @DFX_K_FAILURE, align 4
  store i32 %73, i32* %4, align 4
  br label %282

74:                                               ; preds = %38
  %75 = load i32, i32* %19, align 4
  %76 = call i32 @cpu_to_le32(i32 %75)
  store i32 %76, i32* %20, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 15
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = call i32 @memcpy(i32* %80, i32* %20, i32 4)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %83 = load i32, i32* @PI_PCTRL_M_MLA, align 4
  %84 = load i32, i32* @PI_PDATA_A_MLA_K_HI, align 4
  %85 = call i64 @dfx_hw_port_ctrl_req(%struct.TYPE_7__* %82, i32 %83, i32 %84, i32 0, i32* %19)
  %86 = load i64, i64* @DFX_K_SUCCESS, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %74
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %89)
  %91 = load i32, i32* @DFX_K_FAILURE, align 4
  store i32 %91, i32* %4, align 4
  br label %282

92:                                               ; preds = %74
  %93 = load i32, i32* %19, align 4
  %94 = call i32 @cpu_to_le32(i32 %93)
  store i32 %94, i32* %20, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 15
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = call i32 @memcpy(i32* %98, i32* %20, i32 4)
  %100 = load %struct.net_device*, %struct.net_device** %5, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 15
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @FDDI_K_ALEN, align 4
  %107 = call i32 @memcpy(i32* %102, i32* %105, i32 %106)
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %92
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %21, align 8
  br label %111

111:                                              ; preds = %110, %92
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %21, align 8
  br label %115

115:                                              ; preds = %114, %111
  %116 = load i32, i32* %10, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %21, align 8
  br label %119

119:                                              ; preds = %118, %115
  %120 = load i8*, i8** %6, align 8
  %121 = load i8*, i8** %21, align 8
  %122 = load i32, i32* %13, align 4
  %123 = icmp ne i32 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)
  %126 = load i64, i64* %7, align 8
  %127 = load %struct.net_device*, %struct.net_device** %5, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.net_device*, %struct.net_device** %5, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = call i32 @pr_info(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i8* %120, i8* %121, i8* %125, i64 %126, i32 %129, i32* %132)
  %134 = load i32, i32* @PI_CMD_REQ_K_SIZE_MAX, align 4
  %135 = sext i32 %134 to i64
  %136 = add i64 1, %135
  %137 = load i32, i32* @PI_CMD_RSP_K_SIZE_MAX, align 4
  %138 = sext i32 %137 to i64
  %139 = add i64 %136, %138
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @PI_RCV_DATA_K_SIZE_MAX, align 4
  %144 = mul nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = add i64 %139, %145
  %147 = add i64 %146, 1
  %148 = load i32, i32* @PI_ALIGN_K_DESC_BLK, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = add i64 %147, %150
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %14, align 4
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 14
  %155 = load %struct.device*, %struct.device** %154, align 8
  %156 = load i32, i32* %14, align 4
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 3
  %159 = load i32, i32* @GFP_ATOMIC, align 4
  %160 = call i8* @dma_alloc_coherent(%struct.device* %155, i32 %156, i32* %158, i32 %159)
  store i8* %160, i8** %15, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  store i8* %160, i8** %162, align 8
  %163 = load i8*, i8** %15, align 8
  %164 = icmp eq i8* %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %119
  %166 = load i32, i32* @DFX_K_FAILURE, align 4
  store i32 %166, i32* %4, align 4
  br label %282

167:                                              ; preds = %119
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  store i32 %170, i32* %17, align 4
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* @PI_ALIGN_K_DESC_BLK, align 4
  %173 = call i32 @ALIGN(i32 %171, i32 %172)
  store i32 %173, i32* %18, align 4
  %174 = load i8*, i8** %15, align 8
  %175 = load i32, i32* %18, align 4
  %176 = load i32, i32* %17, align 4
  %177 = sub nsw i32 %175, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %174, i64 %178
  store i8* %179, i8** %16, align 8
  %180 = load i8*, i8** %16, align 8
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 4
  store i8* %180, i8** %182, align 8
  %183 = load i32, i32* %18, align 4
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 8
  %186 = load i8*, i8** %16, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 1
  store i8* %187, i8** %16, align 8
  %188 = load i32, i32* %18, align 4
  %189 = sext i32 %188 to i64
  %190 = add i64 %189, 1
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %18, align 4
  %192 = load i8*, i8** %16, align 8
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 6
  store i8* %192, i8** %194, align 8
  %195 = load i32, i32* %18, align 4
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 7
  store i32 %195, i32* %197, align 8
  %198 = load i32, i32* @PI_CMD_REQ_K_SIZE_MAX, align 4
  %199 = load i8*, i8** %16, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  store i8* %201, i8** %16, align 8
  %202 = load i32, i32* @PI_CMD_REQ_K_SIZE_MAX, align 4
  %203 = load i32, i32* %18, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %18, align 4
  %205 = load i8*, i8** %16, align 8
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 8
  store i8* %205, i8** %207, align 8
  %208 = load i32, i32* %18, align 4
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 9
  store i32 %208, i32* %210, align 8
  %211 = load i32, i32* @PI_CMD_RSP_K_SIZE_MAX, align 4
  %212 = load i8*, i8** %16, align 8
  %213 = sext i32 %211 to i64
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  store i8* %214, i8** %16, align 8
  %215 = load i32, i32* @PI_CMD_RSP_K_SIZE_MAX, align 4
  %216 = load i32, i32* %18, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %18, align 4
  %218 = load i8*, i8** %16, align 8
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 10
  store i8* %218, i8** %220, align 8
  %221 = load i32, i32* %18, align 4
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 11
  store i32 %221, i32* %223, align 8
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @PI_RCV_DATA_K_SIZE_MAX, align 4
  %228 = mul nsw i32 %226, %227
  %229 = load i8*, i8** %16, align 8
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds i8, i8* %229, i64 %230
  store i8* %231, i8** %16, align 8
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @PI_RCV_DATA_K_SIZE_MAX, align 4
  %236 = mul nsw i32 %234, %235
  %237 = load i32, i32* %18, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %18, align 4
  %239 = load i8*, i8** %16, align 8
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 12
  store i8* %239, i8** %241, align 8
  %242 = load i32, i32* %18, align 4
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 13
  store i32 %242, i32* %244, align 8
  %245 = load i8*, i8** %6, align 8
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 4
  %248 = load i8*, i8** %247, align 8
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 5
  %251 = call i32 (i8*, ...) @DBG_printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i8* %245, i8* %248, i32* %250)
  %252 = load i8*, i8** %6, align 8
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 6
  %255 = load i8*, i8** %254, align 8
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 7
  %258 = call i32 (i8*, ...) @DBG_printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0), i8* %252, i8* %255, i32* %257)
  %259 = load i8*, i8** %6, align 8
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 8
  %262 = load i8*, i8** %261, align 8
  %263 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %263, i32 0, i32 9
  %265 = call i32 (i8*, ...) @DBG_printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0), i8* %259, i8* %262, i32* %264)
  %266 = load i8*, i8** %6, align 8
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 10
  %269 = load i8*, i8** %268, align 8
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 11
  %272 = call i32 (i8*, ...) @DBG_printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i8* %266, i8* %269, i32* %271)
  %273 = load i8*, i8** %6, align 8
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 12
  %276 = load i8*, i8** %275, align 8
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 13
  %279 = call i32 (i8*, ...) @DBG_printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i8* %273, i8* %276, i32* %278)
  %280 = load i64, i64* @DFX_K_SUCCESS, align 8
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %4, align 4
  br label %282

282:                                              ; preds = %167, %165, %88, %70
  %283 = load i32, i32* %4, align 4
  ret i32 %283
}

declare dso_local %struct.TYPE_7__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_is_pci(%struct.device*) #1

declare dso_local i32 @DFX_BUS_EISA(%struct.device*) #1

declare dso_local i32 @DFX_BUS_TC(%struct.device*) #1

declare dso_local i32 @DBG_printk(i8*, ...) #1

declare dso_local i32 @dfx_bus_init(%struct.net_device*) #1

declare dso_local i32 @dfx_bus_config_check(%struct.TYPE_7__*) #1

declare dso_local i32 @dfx_port_write_long(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dfx_hw_dma_uninit(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @dfx_hw_port_ctrl_req(%struct.TYPE_7__*, i32, i32, i32, i32*) #1

declare dso_local i32 @printk(i8*, i8*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @pr_info(i8*, i8*, i8*, i8*, i64, i32, i32*) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
