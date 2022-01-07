; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vf_mbx_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32, i32, i32, i32 }
%struct.bnx2x_vf_mbx = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.vfpf_acquire_tlv }
%struct.vfpf_acquire_tlv = type { %struct.TYPE_7__, i32, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [121 x i8] c"VF[%d] ACQUIRE: vfdev_info- vf_id %d, vf_os %d resources- n_rxq-%d, n_txq-%d, n_sbs-%d, n_macs-%d, n_vlans-%d, n_mcs-%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"VF [%d] - Can't support acquire request due to doorbell mismatch. Please update VM driver\0A\00", align 1
@u8 = common dso_local global i32 0, align 4
@ETH_FP_HSI_VER_2 = common dso_local global i32 0, align 4
@ETH_FP_HSI_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [103 x i8] c"VF [%d] - Can't support acquire request since VF requests a FW version which is too new [%02x > %02x]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VF_CAP_SUPPORT_EXT_BULLETIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"VF[%d] supports long bulletin boards\0A\00", align 1
@VF_CFG_EXT_BULLETIN = common dso_local global i32 0, align 4
@VF_CAP_SUPPORT_VLAN_FILTER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"VF[%d] supports vlan filtering\0A\00", align 1
@VF_CFG_VLAN_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*)* @bnx2x_vf_mbx_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_mbx_acquire(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vf_mbx* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca %struct.bnx2x_vf_mbx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vfpf_acquire_tlv*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store %struct.bnx2x_vf_mbx* %2, %struct.bnx2x_vf_mbx** %6, align 8
  %9 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %10 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.vfpf_acquire_tlv* %13, %struct.vfpf_acquire_tlv** %8, align 8
  %14 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %15 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %16 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %19 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %23 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %27 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %31 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %35 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %39 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %43 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %47 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, i32, ...) @DP(i32 %14, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21, i32 %25, i32 %29, i32 %33, i32 %37, i32 %41, i32 %45, i32 %49)
  %51 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %52 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %53 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %54 = call i32 @bnx2x_vf_mbx_acquire_chk_dorq(%struct.bnx2x* %51, %struct.bnx2x_virtf* %52, %struct.bnx2x_vf_mbx* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %3
  %58 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %59 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %60 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, i32, ...) @DP(i32 %58, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %171

63:                                               ; preds = %3
  %64 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %65 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %66 = getelementptr inbounds %struct.bnx2x_vf_mbx, %struct.bnx2x_vf_mbx* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = call i64 @bnx2x_vf_mbx_is_windows_vm(%struct.bnx2x* %64, %struct.vfpf_acquire_tlv* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %63
  %73 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %74 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %78 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  br label %89

79:                                               ; preds = %63
  %80 = load i32, i32* @u8, align 4
  %81 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %82 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ETH_FP_HSI_VER_2, align 4
  %86 = call i32 @max_t(i32 %80, i32 %84, i32 %85)
  %87 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %88 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %79, %72
  %90 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %91 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ETH_FP_HSI_VERSION, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %89
  %96 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %97 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %98 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %101 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ETH_FP_HSI_VERSION, align 4
  %105 = call i32 (i32, i8*, i32, ...) @DP(i32 %96, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 %99, i32 %103, i32 %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %7, align 4
  br label %171

108:                                              ; preds = %89
  %109 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %110 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %111 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %112 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %111, i32 0, i32 2
  %113 = call i32 @bnx2x_vf_acquire(%struct.bnx2x* %109, %struct.bnx2x_virtf* %110, %struct.TYPE_8__* %112)
  store i32 %113, i32* %7, align 4
  %114 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %115 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %118 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %120 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @VF_CAP_SUPPORT_EXT_BULLETIN, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %137

126:                                              ; preds = %108
  %127 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %128 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %129 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i32, i8*, i32, ...) @DP(i32 %127, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @VF_CFG_EXT_BULLETIN, align 4
  %133 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %134 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %144

137:                                              ; preds = %108
  %138 = load i32, i32* @VF_CFG_EXT_BULLETIN, align 4
  %139 = xor i32 %138, -1
  %140 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %141 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %137, %126
  %145 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %8, align 8
  %146 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @VF_CAP_SUPPORT_VLAN_FILTER, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %144
  %153 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %154 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %155 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, i32, ...) @DP(i32 %153, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* @VF_CFG_VLAN_FILTER, align 4
  %159 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %160 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %170

163:                                              ; preds = %144
  %164 = load i32, i32* @VF_CFG_VLAN_FILTER, align 4
  %165 = xor i32 %164, -1
  %166 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %167 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, %165
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %163, %152
  br label %171

171:                                              ; preds = %170, %95, %57
  %172 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %173 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %174 = load %struct.bnx2x_vf_mbx*, %struct.bnx2x_vf_mbx** %6, align 8
  %175 = load i32, i32* %7, align 4
  %176 = call i32 @bnx2x_vf_mbx_acquire_resp(%struct.bnx2x* %172, %struct.bnx2x_virtf* %173, %struct.bnx2x_vf_mbx* %174, i32 %175)
  ret void
}

declare dso_local i32 @DP(i32, i8*, i32, ...) #1

declare dso_local i32 @bnx2x_vf_mbx_acquire_chk_dorq(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*) #1

declare dso_local i64 @bnx2x_vf_mbx_is_windows_vm(%struct.bnx2x*, %struct.vfpf_acquire_tlv*) #1

declare dso_local i32 @max_t(i32, i32, i32) #1

declare dso_local i32 @bnx2x_vf_acquire(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.TYPE_8__*) #1

declare dso_local i32 @bnx2x_vf_mbx_acquire_resp(%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_mbx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
