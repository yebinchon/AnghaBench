; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_create_tx_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_create_tx_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, i32, %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.qlcnic_host_tx_ring = type { i64, i64, i32, i32, i32, i32, i64*, i64, i64 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }
%struct.qlcnic_tx_mbx = type { i32, i64, i32, i8*, i8*, i8*, i8* }
%struct.qlcnic_tx_mbx_out = type { i64, i32, i32 }

@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_TX_INTR_SHARED = common dso_local global i32 0, align 4
@QLCNIC_DEF_INT_ID = common dso_local global i32 0, align 4
@QLCNIC_LOOPBACK_TEST = common dso_local global i64 0, align 8
@QLCNIC_CMD_CREATE_TX_CTX = common dso_local global i32 0, align 4
@QLCNIC_CAP0_LEGACY_CONTEXT = common dso_local global i32 0, align 4
@QLCNIC_SINGLE_RING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Failed to create Tx ctx in firmware 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Tx Context[0x%x] Created, state:0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_create_tx_ctx(%struct.qlcnic_adapter* %0, %struct.qlcnic_host_tx_ring* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.qlcnic_cmd_args, align 8
  %14 = alloca %struct.qlcnic_tx_mbx, align 8
  %15 = alloca %struct.qlcnic_tx_mbx_out*, align 8
  %16 = alloca %struct.qlcnic_hardware_context*, align 8
  %17 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_host_tx_ring* %1, %struct.qlcnic_host_tx_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %12, align 8
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 3
  %20 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %19, align 8
  store %struct.qlcnic_hardware_context* %20, %struct.qlcnic_hardware_context** %16, align 8
  %21 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %22 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %21, i32 0, i32 8
  store i64 0, i64* %22, align 8
  %23 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %24 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %23, i32 0, i32 7
  store i64 0, i64* %24, align 8
  %25 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %26 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %25, i32 0, i32 6
  %27 = load i64*, i64** %26, align 8
  store i64 0, i64* %27, align 8
  %28 = call i32 @memset(%struct.qlcnic_tx_mbx* %14, i32 0, i32 56)
  %29 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %30 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @LSD(i32 %31)
  %33 = getelementptr inbounds %struct.qlcnic_tx_mbx, %struct.qlcnic_tx_mbx* %14, i32 0, i32 6
  store i8* %32, i8** %33, align 8
  %34 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %35 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @MSD(i32 %36)
  %38 = getelementptr inbounds %struct.qlcnic_tx_mbx, %struct.qlcnic_tx_mbx* %14, i32 0, i32 5
  store i8* %37, i8** %38, align 8
  %39 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %40 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @LSD(i32 %41)
  %43 = getelementptr inbounds %struct.qlcnic_tx_mbx, %struct.qlcnic_tx_mbx* %14, i32 0, i32 4
  store i8* %42, i8** %43, align 8
  %44 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %45 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @MSD(i32 %46)
  %48 = getelementptr inbounds %struct.qlcnic_tx_mbx, %struct.qlcnic_tx_mbx* %14, i32 0, i32 3
  store i8* %47, i8** %48, align 8
  %49 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %50 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.qlcnic_tx_mbx, %struct.qlcnic_tx_mbx* %14, i32 0, i32 2
  store i32 %51, i32* %52, align 8
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %54 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %87

59:                                               ; preds = %3
  %60 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %61 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @QLCNIC_TX_INTR_SHARED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %73, label %66

66:                                               ; preds = %59
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %68 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %17, align 8
  br label %79

73:                                               ; preds = %59
  %74 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %75 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %17, align 8
  br label %79

79:                                               ; preds = %73, %66
  %80 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %16, align 8
  %81 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = load i64, i64* %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %9, align 4
  br label %91

87:                                               ; preds = %3
  %88 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %16, align 8
  %89 = load i32, i32* @QLCNIC_DEF_INT_ID, align 4
  %90 = call i32 @QLCRDX(%struct.qlcnic_hardware_context* %88, i32 %89)
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %87, %79
  %92 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %93 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %92, i32 0, i32 3
  %94 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %93, align 8
  %95 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @QLCNIC_LOOPBACK_TEST, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %91
  %100 = load i32, i32* %9, align 4
  %101 = getelementptr inbounds %struct.qlcnic_tx_mbx, %struct.qlcnic_tx_mbx* %14, i32 0, i32 0
  store i32 %100, i32* %101, align 8
  br label %104

102:                                              ; preds = %91
  %103 = getelementptr inbounds %struct.qlcnic_tx_mbx, %struct.qlcnic_tx_mbx* %14, i32 0, i32 0
  store i32 65535, i32* %103, align 8
  br label %104

104:                                              ; preds = %102, %99
  %105 = getelementptr inbounds %struct.qlcnic_tx_mbx, %struct.qlcnic_tx_mbx* %14, i32 0, i32 1
  store i64 0, i64* %105, align 8
  %106 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %107 = load i32, i32* @QLCNIC_CMD_CREATE_TX_CTX, align 4
  %108 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %13, %struct.qlcnic_adapter* %106, i32 %107)
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %8, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %4, align 4
  br label %233

113:                                              ; preds = %104
  %114 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %115 = call i64 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %119 = call i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %117, %113
  %122 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %13, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, 1610612736
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %121, %117
  %129 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %130 = call i64 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %134 = call i32 @qlcnic_pf_set_interface_id_create_tx_ctx(%struct.qlcnic_adapter* %133, i64* %12)
  br label %135

135:                                              ; preds = %132, %128
  %136 = load i32, i32* @QLCNIC_CAP0_LEGACY_CONTEXT, align 4
  %137 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %13, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  store i32 %136, i32* %140, align 4
  %141 = load i64, i64* @QLCNIC_SINGLE_RING, align 8
  %142 = load i64, i64* %12, align 8
  %143 = or i64 %141, %142
  %144 = trunc i64 %143 to i32
  %145 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %13, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 5
  store i32 %144, i32* %148, align 4
  %149 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %13, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 6
  %153 = bitcast i32* %152 to i64*
  store i64* %153, i64** %10, align 8
  %154 = load i64*, i64** %10, align 8
  %155 = call i32 @memcpy(i64* %154, %struct.qlcnic_tx_mbx* %14, i32 56)
  %156 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %157 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %156, %struct.qlcnic_cmd_args* %13)
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %135
  %161 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %162 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @netdev_err(i32 %163, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %164)
  br label %230

166:                                              ; preds = %135
  %167 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %13, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 2
  %171 = bitcast i32* %170 to %struct.qlcnic_tx_mbx_out*
  store %struct.qlcnic_tx_mbx_out* %171, %struct.qlcnic_tx_mbx_out** %15, align 8
  %172 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %16, align 8
  %173 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.qlcnic_tx_mbx_out*, %struct.qlcnic_tx_mbx_out** %15, align 8
  %176 = getelementptr inbounds %struct.qlcnic_tx_mbx_out, %struct.qlcnic_tx_mbx_out* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %174, %177
  %179 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %180 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %179, i32 0, i32 0
  store i64 %178, i64* %180, align 8
  %181 = load %struct.qlcnic_tx_mbx_out*, %struct.qlcnic_tx_mbx_out** %15, align 8
  %182 = getelementptr inbounds %struct.qlcnic_tx_mbx_out, %struct.qlcnic_tx_mbx_out* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %185 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  %186 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %187 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %219

192:                                              ; preds = %166
  %193 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %194 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @QLCNIC_TX_INTR_SHARED, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %219, label %199

199:                                              ; preds = %192
  %200 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %16, align 8
  %201 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %200, i32 0, i32 2
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %204 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %7, align 4
  %207 = add nsw i32 %205, %206
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %11, align 8
  %212 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %16, align 8
  %213 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* %11, align 8
  %216 = add i64 %214, %215
  %217 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %218 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %217, i32 0, i32 1
  store i64 %216, i64* %218, align 8
  br label %219

219:                                              ; preds = %199, %192, %166
  %220 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %221 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %224 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.qlcnic_tx_mbx_out*, %struct.qlcnic_tx_mbx_out** %15, align 8
  %227 = getelementptr inbounds %struct.qlcnic_tx_mbx_out, %struct.qlcnic_tx_mbx_out* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @netdev_info(i32 %222, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %225, i32 %228)
  br label %230

230:                                              ; preds = %219, %160
  %231 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %13)
  %232 = load i32, i32* %8, align 4
  store i32 %232, i32* %4, align 4
  br label %233

233:                                              ; preds = %230, %111
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local i32 @memset(%struct.qlcnic_tx_mbx*, i32, i32) #1

declare dso_local i8* @LSD(i32) #1

declare dso_local i8* @MSD(i32) #1

declare dso_local i32 @QLCRDX(%struct.qlcnic_hardware_context*, i32) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_pf_set_interface_id_create_tx_ctx(%struct.qlcnic_adapter*, i64*) #1

declare dso_local i32 @memcpy(i64*, %struct.qlcnic_tx_mbx*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @netdev_info(i32, i8*, i32, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
