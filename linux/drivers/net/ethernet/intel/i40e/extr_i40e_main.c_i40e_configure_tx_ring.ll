; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_configure_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_configure_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i32, i32, i64, i64, %struct.TYPE_10__*, i64, i64, i64, i32, %struct.i40e_vsi* }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.i40e_vsi = type { i64, i32, %struct.TYPE_9__*, %struct.TYPE_7__, i64 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i64, %struct.i40e_hw }
%struct.TYPE_8__ = type { i32 }
%struct.i40e_hw = type { i32, i64 }
%struct.TYPE_7__ = type { i32* }
%struct.i40e_hmc_obj_txq = type { i32, i32, i32, i32, i32, i32, i32, i64, i8* }

@I40E_FLAG_FD_ATR_ENABLED = common dso_local global i32 0, align 4
@I40E_FLAG_FD_SB_ENABLED = common dso_local global i32 0, align 4
@I40E_FLAG_PTP = common dso_local global i32 0, align 4
@I40E_VSI_FDIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [73 x i8] c"Failed to clear LAN Tx queue context on Tx ring %d (pf_q %d), error: %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"Failed to set LAN Tx queue context on Tx ring %d (pf_q %d, error: %d\0A\00", align 1
@I40E_VSI_VMDQ2 = common dso_local global i64 0, align 8
@I40E_QTX_CTL_VM_QUEUE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I40E_QTX_CTL_VFVM_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QTX_CTL_VFVM_INDX_MASK = common dso_local global i32 0, align 4
@I40E_QTX_CTL_PF_QUEUE = common dso_local global i32 0, align 4
@I40E_QTX_CTL_PF_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_QTX_CTL_PF_INDX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_ring*)* @i40e_configure_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_configure_tx_ring(%struct.i40e_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_ring*, align 8
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca %struct.i40e_hmc_obj_txq, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.i40e_ring* %0, %struct.i40e_ring** %3, align 8
  %10 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %11 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %10, i32 0, i32 9
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  store %struct.i40e_vsi* %12, %struct.i40e_vsi** %4, align 8
  %13 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %14 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %17 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  store i64 %19, i64* %5, align 8
  %20 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %21 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %20, i32 0, i32 2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  store %struct.i40e_hw* %23, %struct.i40e_hw** %6, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %24 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %25 = call i64 @ring_is_xdp(%struct.i40e_ring* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %29 = call i32 @i40e_xsk_umem(%struct.i40e_ring* %28)
  %30 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %31 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %30, i32 0, i32 8
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %34 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %33, i32 0, i32 2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @I40E_FLAG_FD_ATR_ENABLED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %32
  %42 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %43 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %42, i32 0, i32 2
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %48 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %47, i32 0, i32 6
  store i64 %46, i64* %48, align 8
  %49 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %50 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %49, i32 0, i32 7
  store i64 0, i64* %50, align 8
  br label %54

51:                                               ; preds = %32
  %52 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %53 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %52, i32 0, i32 6
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %41
  %55 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %56 = call i32 @i40e_config_xps_tx_ring(%struct.i40e_ring* %55)
  %57 = call i32 @memset(%struct.i40e_hmc_obj_txq* %7, i32 0, i32 48)
  %58 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %7, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %60 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sdiv i32 %61, 128
  %63 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %7, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %65 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %7, i32 0, i32 2
  store i32 %66, i32* %67, align 8
  %68 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %69 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %68, i32 0, i32 2
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @I40E_FLAG_FD_SB_ENABLED, align 4
  %74 = load i32, i32* @I40E_FLAG_FD_ATR_ENABLED, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %72, %75
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %7, i32 0, i32 3
  store i32 %80, i32* %81, align 4
  %82 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %83 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %82, i32 0, i32 2
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @I40E_FLAG_PTP, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %7, i32 0, i32 4
  store i32 %92, i32* %93, align 8
  %94 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %95 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @I40E_VSI_FDIR, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %54
  %100 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %7, i32 0, i32 5
  store i32 1, i32* %100, align 4
  br label %101

101:                                              ; preds = %99, %54
  %102 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %103 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %107 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = mul i64 %109, 4
  %111 = add i64 %105, %110
  %112 = trunc i64 %111 to i32
  %113 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %7, i32 0, i32 6
  store i32 %112, i32* %113, align 8
  %114 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %115 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %114, i32 0, i32 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = icmp ne %struct.TYPE_10__* %116, null
  br i1 %117, label %118, label %132

118:                                              ; preds = %101
  %119 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %120 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %119, i32 0, i32 4
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %126 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @le16_to_cpu(i32 %129)
  %131 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %7, i32 0, i32 8
  store i8* %130, i8** %131, align 8
  br label %144

132:                                              ; preds = %101
  %133 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %134 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %138 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @le16_to_cpu(i32 %141)
  %143 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %7, i32 0, i32 8
  store i8* %142, i8** %143, align 8
  br label %144

144:                                              ; preds = %132, %118
  %145 = getelementptr inbounds %struct.i40e_hmc_obj_txq, %struct.i40e_hmc_obj_txq* %7, i32 0, i32 7
  store i64 0, i64* %145, align 8
  %146 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %147 = load i64, i64* %5, align 8
  %148 = call i64 @i40e_clear_lan_tx_queue_context(%struct.i40e_hw* %146, i64 %147)
  store i64 %148, i64* %8, align 8
  %149 = load i64, i64* %8, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %166

151:                                              ; preds = %144
  %152 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %153 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %152, i32 0, i32 2
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %159 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %5, align 8
  %162 = load i64, i64* %8, align 8
  %163 = call i32 @dev_info(i32* %157, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %160, i64 %161, i64 %162)
  %164 = load i32, i32* @ENOMEM, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %2, align 4
  br label %262

166:                                              ; preds = %144
  %167 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %168 = load i64, i64* %5, align 8
  %169 = call i64 @i40e_set_lan_tx_queue_context(%struct.i40e_hw* %167, i64 %168, %struct.i40e_hmc_obj_txq* %7)
  store i64 %169, i64* %8, align 8
  %170 = load i64, i64* %8, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %187

172:                                              ; preds = %166
  %173 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %174 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %173, i32 0, i32 2
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %180 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %179, i32 0, i32 5
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* %5, align 8
  %183 = load i64, i64* %8, align 8
  %184 = call i32 @dev_info(i32* %178, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %181, i64 %182, i64 %183)
  %185 = load i32, i32* @ENOMEM, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %2, align 4
  br label %262

187:                                              ; preds = %166
  %188 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %189 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %188, i32 0, i32 4
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %189, align 8
  %191 = icmp ne %struct.TYPE_10__* %190, null
  br i1 %191, label %192, label %217

192:                                              ; preds = %187
  %193 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %194 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %193, i32 0, i32 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @I40E_VSI_VMDQ2, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %202

200:                                              ; preds = %192
  %201 = load i32, i32* @I40E_QTX_CTL_VM_QUEUE, align 4
  store i32 %201, i32* %9, align 4
  br label %205

202:                                              ; preds = %192
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %2, align 4
  br label %262

205:                                              ; preds = %200
  %206 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %207 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %206, i32 0, i32 4
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @I40E_QTX_CTL_VFVM_INDX_SHIFT, align 4
  %212 = shl i32 %210, %211
  %213 = load i32, i32* @I40E_QTX_CTL_VFVM_INDX_MASK, align 4
  %214 = and i32 %212, %213
  %215 = load i32, i32* %9, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %9, align 4
  br label %237

217:                                              ; preds = %187
  %218 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %219 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @I40E_VSI_VMDQ2, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %234

223:                                              ; preds = %217
  %224 = load i32, i32* @I40E_QTX_CTL_VM_QUEUE, align 4
  store i32 %224, i32* %9, align 4
  %225 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %226 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load i32, i32* @I40E_QTX_CTL_VFVM_INDX_SHIFT, align 4
  %229 = shl i32 %227, %228
  %230 = load i32, i32* @I40E_QTX_CTL_VFVM_INDX_MASK, align 4
  %231 = and i32 %229, %230
  %232 = load i32, i32* %9, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %9, align 4
  br label %236

234:                                              ; preds = %217
  %235 = load i32, i32* @I40E_QTX_CTL_PF_QUEUE, align 4
  store i32 %235, i32* %9, align 4
  br label %236

236:                                              ; preds = %234, %223
  br label %237

237:                                              ; preds = %236, %205
  %238 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %239 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @I40E_QTX_CTL_PF_INDX_SHIFT, align 4
  %242 = shl i32 %240, %241
  %243 = load i32, i32* @I40E_QTX_CTL_PF_INDX_MASK, align 4
  %244 = and i32 %242, %243
  %245 = load i32, i32* %9, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %9, align 4
  %247 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %248 = load i64, i64* %5, align 8
  %249 = call i32 @I40E_QTX_CTL(i64 %248)
  %250 = load i32, i32* %9, align 4
  %251 = call i32 @wr32(%struct.i40e_hw* %247, i32 %249, i32 %250)
  %252 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %253 = call i32 @i40e_flush(%struct.i40e_hw* %252)
  %254 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %255 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* %5, align 8
  %258 = call i64 @I40E_QTX_TAIL(i64 %257)
  %259 = add nsw i64 %256, %258
  %260 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %261 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %260, i32 0, i32 3
  store i64 %259, i64* %261, align 8
  store i32 0, i32* %2, align 4
  br label %262

262:                                              ; preds = %237, %202, %172, %151
  %263 = load i32, i32* %2, align 4
  ret i32 %263
}

declare dso_local i64 @ring_is_xdp(%struct.i40e_ring*) #1

declare dso_local i32 @i40e_xsk_umem(%struct.i40e_ring*) #1

declare dso_local i32 @i40e_config_xps_tx_ring(%struct.i40e_ring*) #1

declare dso_local i32 @memset(%struct.i40e_hmc_obj_txq*, i32, i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i64 @i40e_clear_lan_tx_queue_context(%struct.i40e_hw*, i64) #1

declare dso_local i32 @dev_info(i32*, i8*, i64, i64, i64) #1

declare dso_local i64 @i40e_set_lan_tx_queue_context(%struct.i40e_hw*, i64, %struct.i40e_hmc_obj_txq*) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_QTX_CTL(i64) #1

declare dso_local i32 @i40e_flush(%struct.i40e_hw*) #1

declare dso_local i64 @I40E_QTX_TAIL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
