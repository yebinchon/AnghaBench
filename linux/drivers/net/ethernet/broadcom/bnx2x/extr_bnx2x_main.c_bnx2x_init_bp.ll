; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_init_bp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_init_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.bnx2x = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@bnx2x_sp_task = common dso_local global i32 0, align 4
@bnx2x_sp_rtnl_task = common dso_local global i32 0, align 4
@bnx2x_period_task = common dso_local global i32 0, align 4
@bnx2x_iov_task = common dso_local global i32 0, align 4
@func_mb = common dso_local global %struct.TYPE_10__* null, align 8
@DRV_MSG_SEQ_NUMBER_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"fw_seq 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"FPGA detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"MCP disabled, must load devices in order!\0A\00", align 1
@disable_tpa = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@NETIF_F_GRO_HW = common dso_local global i32 0, align 4
@dropless_fc = common dso_local global i32 0, align 4
@mrrs = common dso_local global i32 0, align 4
@MAX_TX_AVAIL = common dso_local global i32 0, align 4
@MAX_RX_AVAIL = common dso_local global i32 0, align 4
@BNX2X_BTR = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@bnx2x_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@dcbx_lldp_params_offset = common dso_local global i32******** null, align 8
@dcbx_lldp_dcbx_stat_offset = common dso_local global i32******** null, align 8
@dcbx_en = common dso_local global i32********* null, align 8
@BNX2X_DCBX_ENABLED_ON_NEG_ON = common dso_local global i32 0, align 4
@BNX2X_DCBX_ENABLED_OFF = common dso_local global i32 0, align 4
@FP_SB_MAX_E1x = common dso_local global i32 0, align 4
@FP_SB_MAX_E2 = common dso_local global i32 0, align 4
@BNX2X_MULTI_TX_COS_E1X = common dso_local global i32 0, align 4
@BNX2X_MULTI_TX_COS_E2_E3A0 = common dso_local global i32 0, align 4
@BNX2X_MULTI_TX_COS_E3B0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"unknown chip %x revision %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"set bp->max_cos to %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"bp->min_msix_vec_cnt %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_init_bp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_init_bp(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %7 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %6, i32 0, i32 25
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = call i32 @mutex_init(i32* %8)
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 24
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 23
  %15 = call i32 @mutex_init(i32* %14)
  %16 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 22
  %18 = call i32 @sema_init(i32* %17, i32 1)
  %19 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %20 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %22 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %21, i32 0, i32 21
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %25 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %24, i32 0, i32 20
  %26 = load i32, i32* @bnx2x_sp_task, align 4
  %27 = call i32 @INIT_DELAYED_WORK(i32* %25, i32 %26)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %29 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %28, i32 0, i32 19
  %30 = load i32, i32* @bnx2x_sp_rtnl_task, align 4
  %31 = call i32 @INIT_DELAYED_WORK(i32* %29, i32 %30)
  %32 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %33 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %32, i32 0, i32 18
  %34 = load i32, i32* @bnx2x_period_task, align 4
  %35 = call i32 @INIT_DELAYED_WORK(i32* %33, i32 %34)
  %36 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %37 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %36, i32 0, i32 17
  %38 = load i32, i32* @bnx2x_iov_task, align 4
  %39 = call i32 @INIT_DELAYED_WORK(i32* %37, i32 %38)
  %40 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %41 = call i64 @IS_PF(%struct.bnx2x* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %1
  %44 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %45 = call i32 @bnx2x_get_hwinfo(%struct.bnx2x* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %375

50:                                               ; preds = %43
  br label %58

51:                                               ; preds = %1
  %52 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %53 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %52, i32 0, i32 15
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @eth_zero_addr(i32 %56)
  br label %58

58:                                               ; preds = %51, %50
  %59 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %60 = call i32 @bnx2x_set_modes_bitmap(%struct.bnx2x* %59)
  %61 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %62 = call i32 @bnx2x_alloc_mem_bp(%struct.bnx2x* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %375

67:                                               ; preds = %58
  %68 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %69 = call i32 @bnx2x_read_fwinfo(%struct.bnx2x* %68)
  %70 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %71 = call i32 @BP_FUNC(%struct.bnx2x* %70)
  store i32 %71, i32* %4, align 4
  %72 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %73 = call i64 @IS_PF(%struct.bnx2x* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %105

75:                                               ; preds = %67
  %76 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %77 = call i64 @BP_NOMCP(%struct.bnx2x* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %105, label %79

79:                                               ; preds = %75
  %80 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** @func_mb, align 8
  %82 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %83 = call i64 @BP_FW_MB_IDX(%struct.bnx2x* %82)
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @SHMEM_RD(%struct.bnx2x* %80, i32 %86)
  %88 = load i32, i32* @DRV_MSG_SEQ_NUMBER_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %91 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %93 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %97 = call i32 @bnx2x_prev_unload(%struct.bnx2x* %96)
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %79
  %101 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %102 = call i32 @bnx2x_free_mem_bp(%struct.bnx2x* %101)
  %103 = load i32, i32* %5, align 4
  store i32 %103, i32* %2, align 4
  br label %375

104:                                              ; preds = %79
  br label %105

105:                                              ; preds = %104, %75, %67
  %106 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %107 = call i64 @CHIP_REV_IS_FPGA(%struct.bnx2x* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %111 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %110, i32 0, i32 16
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = call i32 @dev_err(i32* %113, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %115

115:                                              ; preds = %109, %105
  %116 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %117 = call i64 @BP_NOMCP(%struct.bnx2x* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %115
  %120 = load i32, i32* %4, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %119
  %123 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %124 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %123, i32 0, i32 16
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = call i32 @dev_err(i32* %126, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %128

128:                                              ; preds = %122, %119, %115
  %129 = load i32, i32* @disable_tpa, align 4
  %130 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %131 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %133 = call i64 @IS_MF_STORAGE_ONLY(%struct.bnx2x* %132)
  %134 = icmp ne i64 %133, 0
  %135 = xor i1 %134, true
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %139 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  %142 = call i32 (...) @is_kdump_kernel()
  %143 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %144 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  %147 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %148 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %172

151:                                              ; preds = %128
  %152 = load i32, i32* @NETIF_F_LRO, align 4
  %153 = load i32, i32* @NETIF_F_GRO_HW, align 4
  %154 = or i32 %152, %153
  %155 = xor i32 %154, -1
  %156 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %157 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %156, i32 0, i32 15
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, %155
  store i32 %161, i32* %159, align 4
  %162 = load i32, i32* @NETIF_F_LRO, align 4
  %163 = load i32, i32* @NETIF_F_GRO_HW, align 4
  %164 = or i32 %162, %163
  %165 = xor i32 %164, -1
  %166 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %167 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %166, i32 0, i32 15
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, %165
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %151, %128
  %173 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %174 = call i64 @CHIP_IS_E1(%struct.bnx2x* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %178 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %177, i32 0, i32 3
  store i32 0, i32* %178, align 4
  br label %186

179:                                              ; preds = %172
  %180 = load i32, i32* @dropless_fc, align 4
  %181 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %182 = call i32 @bnx2x_get_dropless_info(%struct.bnx2x* %181)
  %183 = or i32 %180, %182
  %184 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %185 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %179, %176
  %187 = load i32, i32* @mrrs, align 4
  %188 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %189 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %188, i32 0, i32 14
  store i32 %187, i32* %189, align 8
  %190 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %191 = call i64 @IS_MF_STORAGE_ONLY(%struct.bnx2x* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %186
  br label %196

194:                                              ; preds = %186
  %195 = load i32, i32* @MAX_TX_AVAIL, align 4
  br label %196

196:                                              ; preds = %194, %193
  %197 = phi i32 [ 0, %193 ], [ %195, %194 ]
  %198 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %199 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %198, i32 0, i32 13
  store i32 %197, i32* %199, align 4
  %200 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %201 = call i64 @IS_VF(%struct.bnx2x* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %196
  %204 = load i32, i32* @MAX_RX_AVAIL, align 4
  %205 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %206 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %205, i32 0, i32 12
  store i32 %204, i32* %206, align 8
  br label %207

207:                                              ; preds = %203, %196
  %208 = load i32, i32* @BNX2X_BTR, align 4
  %209 = sdiv i32 50, %208
  %210 = load i32, i32* @BNX2X_BTR, align 4
  %211 = mul nsw i32 %209, %210
  %212 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %213 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %212, i32 0, i32 4
  store i32 %211, i32* %213, align 8
  %214 = load i32, i32* @BNX2X_BTR, align 4
  %215 = sdiv i32 25, %214
  %216 = load i32, i32* @BNX2X_BTR, align 4
  %217 = mul nsw i32 %215, %216
  %218 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %219 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %218, i32 0, i32 5
  store i32 %217, i32* %219, align 4
  %220 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %221 = call i64 @CHIP_REV_IS_SLOW(%struct.bnx2x* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %207
  %224 = load i32, i32* @HZ, align 4
  %225 = mul nsw i32 5, %224
  br label %228

226:                                              ; preds = %207
  %227 = load i32, i32* @HZ, align 4
  br label %228

228:                                              ; preds = %226, %223
  %229 = phi i32 [ %225, %223 ], [ %227, %226 ]
  %230 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %231 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %230, i32 0, i32 6
  store i32 %229, i32* %231, align 8
  %232 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %233 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %232, i32 0, i32 11
  %234 = load i32, i32* @bnx2x_timer, align 4
  %235 = call i32 @timer_setup(%struct.TYPE_9__* %233, i32 %234, i32 0)
  %236 = load i32, i32* @jiffies, align 4
  %237 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %238 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %237, i32 0, i32 6
  %239 = load i32, i32* %238, align 8
  %240 = add nsw i32 %236, %239
  %241 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %242 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %241, i32 0, i32 11
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 0
  store i32 %240, i32* %243, align 4
  %244 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %245 = load i32********, i32********* @dcbx_lldp_params_offset, align 8
  %246 = bitcast i32******** %245 to i32*********
  %247 = call i64 @SHMEM2_HAS(%struct.bnx2x* %244, i32********* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %285

249:                                              ; preds = %228
  %250 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %251 = load i32********, i32********* @dcbx_lldp_dcbx_stat_offset, align 8
  %252 = bitcast i32******** %251 to i32*********
  %253 = call i64 @SHMEM2_HAS(%struct.bnx2x* %250, i32********* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %285

255:                                              ; preds = %249
  %256 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %257 = load i32*********, i32********** @dcbx_en, align 8
  %258 = call i64 @SHMEM2_HAS(%struct.bnx2x* %256, i32********* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %285

260:                                              ; preds = %255
  %261 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %262 = load i32********, i32********* @dcbx_lldp_params_offset, align 8
  %263 = call i64 @SHMEM2_RD(%struct.bnx2x* %261, i32******** %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %285

265:                                              ; preds = %260
  %266 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %267 = load i32********, i32********* @dcbx_lldp_dcbx_stat_offset, align 8
  %268 = call i64 @SHMEM2_RD(%struct.bnx2x* %266, i32******** %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %285

270:                                              ; preds = %265
  %271 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %272 = load i32*********, i32********** @dcbx_en, align 8
  %273 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %274 = call i64 @BP_PORT(%struct.bnx2x* %273)
  %275 = getelementptr inbounds i32********, i32********* %272, i64 %274
  %276 = load i32********, i32********* %275, align 8
  %277 = call i64 @SHMEM2_RD(%struct.bnx2x* %271, i32******** %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %270
  %280 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %281 = load i32, i32* @BNX2X_DCBX_ENABLED_ON_NEG_ON, align 4
  %282 = call i32 @bnx2x_dcbx_set_state(%struct.bnx2x* %280, i32 1, i32 %281)
  %283 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %284 = call i32 @bnx2x_dcbx_init_params(%struct.bnx2x* %283)
  br label %289

285:                                              ; preds = %270, %265, %260, %255, %249, %228
  %286 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %287 = load i32, i32* @BNX2X_DCBX_ENABLED_OFF, align 4
  %288 = call i32 @bnx2x_dcbx_set_state(%struct.bnx2x* %286, i32 0, i32 %287)
  br label %289

289:                                              ; preds = %285, %279
  %290 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %291 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %297

293:                                              ; preds = %289
  %294 = load i32, i32* @FP_SB_MAX_E1x, align 4
  %295 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %296 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %295, i32 0, i32 10
  store i32 %294, i32* %296, align 8
  br label %301

297:                                              ; preds = %289
  %298 = load i32, i32* @FP_SB_MAX_E2, align 4
  %299 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %300 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %299, i32 0, i32 10
  store i32 %298, i32* %300, align 8
  br label %301

301:                                              ; preds = %297, %293
  %302 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %303 = call i64 @IS_VF(%struct.bnx2x* %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %301
  %306 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %307 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %306, i32 0, i32 7
  store i32 1, i32* %307, align 4
  br label %345

308:                                              ; preds = %301
  %309 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %310 = call i64 @CHIP_IS_E1x(%struct.bnx2x* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %308
  %313 = load i32, i32* @BNX2X_MULTI_TX_COS_E1X, align 4
  %314 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %315 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %314, i32 0, i32 7
  store i32 %313, i32* %315, align 4
  br label %344

316:                                              ; preds = %308
  %317 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %318 = call i64 @CHIP_IS_E2(%struct.bnx2x* %317)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %324, label %320

320:                                              ; preds = %316
  %321 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %322 = call i64 @CHIP_IS_E3A0(%struct.bnx2x* %321)
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %328

324:                                              ; preds = %320, %316
  %325 = load i32, i32* @BNX2X_MULTI_TX_COS_E2_E3A0, align 4
  %326 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %327 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %326, i32 0, i32 7
  store i32 %325, i32* %327, align 4
  br label %343

328:                                              ; preds = %320
  %329 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %330 = call i64 @CHIP_IS_E3B0(%struct.bnx2x* %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %328
  %333 = load i32, i32* @BNX2X_MULTI_TX_COS_E3B0, align 4
  %334 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %335 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %334, i32 0, i32 7
  store i32 %333, i32* %335, align 4
  br label %342

336:                                              ; preds = %328
  %337 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %338 = call i32 @CHIP_NUM(%struct.bnx2x* %337)
  %339 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %340 = call i32 @CHIP_REV(%struct.bnx2x* %339)
  %341 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %338, i32 %340)
  br label %342

342:                                              ; preds = %336, %332
  br label %343

343:                                              ; preds = %342, %324
  br label %344

344:                                              ; preds = %343, %312
  br label %345

345:                                              ; preds = %344, %305
  %346 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %347 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %346, i32 0, i32 7
  %348 = load i32, i32* %347, align 4
  %349 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %348)
  %350 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %351 = call i64 @IS_VF(%struct.bnx2x* %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %345
  %354 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %355 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %354, i32 0, i32 8
  store i32 1, i32* %355, align 8
  br label %367

356:                                              ; preds = %345
  %357 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %358 = call i64 @CNIC_SUPPORT(%struct.bnx2x* %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %356
  %361 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %362 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %361, i32 0, i32 8
  store i32 3, i32* %362, align 8
  br label %366

363:                                              ; preds = %356
  %364 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %365 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %364, i32 0, i32 8
  store i32 2, i32* %365, align 8
  br label %366

366:                                              ; preds = %363, %360
  br label %367

367:                                              ; preds = %366, %353
  %368 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %369 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %368, i32 0, i32 8
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %370)
  %372 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %373 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %372, i32 0, i32 9
  store i32 1, i32* %373, align 4
  %374 = load i32, i32* %5, align 4
  store i32 %374, i32* %2, align 4
  br label %375

375:                                              ; preds = %367, %100, %65, %48
  %376 = load i32, i32* %2, align 4
  ret i32 %376
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_get_hwinfo(%struct.bnx2x*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @bnx2x_set_modes_bitmap(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_alloc_mem_bp(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_read_fwinfo(%struct.bnx2x*) #1

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i64 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32 @SHMEM_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @BP_FW_MB_IDX(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_DEV_INFO(i8*, i32) #1

declare dso_local i32 @bnx2x_prev_unload(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_free_mem_bp(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_REV_IS_FPGA(%struct.bnx2x*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @IS_MF_STORAGE_ONLY(%struct.bnx2x*) #1

declare dso_local i32 @is_kdump_kernel(...) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_get_dropless_info(%struct.bnx2x*) #1

declare dso_local i64 @IS_VF(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_REV_IS_SLOW(%struct.bnx2x*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i64 @SHMEM2_HAS(%struct.bnx2x*, i32*********) #1

declare dso_local i64 @SHMEM2_RD(%struct.bnx2x*, i32********) #1

declare dso_local i64 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_dcbx_set_state(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_dcbx_init_params(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E3A0(%struct.bnx2x*) #1

declare dso_local i64 @CHIP_IS_E3B0(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i32) #1

declare dso_local i32 @CHIP_NUM(%struct.bnx2x*) #1

declare dso_local i32 @CHIP_REV(%struct.bnx2x*) #1

declare dso_local i64 @CNIC_SUPPORT(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
