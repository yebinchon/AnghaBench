; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_prepare_bc_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_prepare_bc_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_bc_trans = type { i32, i32, i32, i64, %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_payload*, %struct.qlcnic_bc_payload* }
%struct.qlcnic_bc_hdr = type { i32, i32, i32, i32, i64, i64, i32, i64 }
%struct.qlcnic_bc_payload = type { i32 }
%struct.qlcnic_cmd_args = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i32*, i32 }

@QLC_BC_PAYLOAD_SZ = common dso_local global i32 0, align 4
@QLC_BC_COMMAND = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_bc_trans*, %struct.qlcnic_cmd_args*, i32, i64)* @qlcnic_sriov_prepare_bc_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_prepare_bc_hdr(%struct.qlcnic_bc_trans* %0, %struct.qlcnic_cmd_args* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_bc_trans*, align 8
  %7 = alloca %struct.qlcnic_cmd_args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.qlcnic_bc_hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.qlcnic_bc_trans* %0, %struct.qlcnic_bc_trans** %6, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %18 = load i32, i32* @QLC_BC_PAYLOAD_SZ, align 4
  store i32 %18, i32* %13, align 4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @QLC_BC_COMMAND, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %118

22:                                               ; preds = %4
  %23 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %24 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = bitcast i32* %26 to %struct.qlcnic_bc_payload*
  %28 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %29 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %28, i32 0, i32 7
  store %struct.qlcnic_bc_payload* %27, %struct.qlcnic_bc_payload** %29, align 8
  %30 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %31 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = bitcast i32* %33 to %struct.qlcnic_bc_payload*
  %35 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %36 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %35, i32 0, i32 6
  store %struct.qlcnic_bc_payload* %34, %struct.qlcnic_bc_payload** %36, align 8
  %37 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %38 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = mul nsw i32 %41, 4
  %43 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %44 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %46 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = mul nsw i32 %49, 4
  %51 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %52 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %54 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 255
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %15, align 8
  %61 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %62 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %13, align 4
  %65 = srem i32 %63, %64
  store i32 %65, i32* %14, align 4
  %66 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %67 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sdiv i32 %68, %69
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %16, align 8
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %22
  %75 = load i64, i64* %16, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %16, align 8
  br label %77

77:                                               ; preds = %74, %22
  %78 = load i64, i64* %16, align 8
  store i64 %78, i64* %17, align 8
  %79 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %80 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %79, i32 0, i32 4
  %81 = load i64, i64* %16, align 8
  %82 = call i64 @qlcnic_sriov_alloc_bc_msg(%struct.qlcnic_bc_hdr** %80, i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %5, align 4
  br label %251

87:                                               ; preds = %77
  %88 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %89 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %13, align 4
  %92 = srem i32 %90, %91
  store i32 %92, i32* %14, align 4
  %93 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %94 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %13, align 4
  %97 = sdiv i32 %95, %96
  %98 = sext i32 %97 to i64
  store i64 %98, i64* %16, align 8
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %87
  %102 = load i64, i64* %16, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %16, align 8
  br label %104

104:                                              ; preds = %101, %87
  %105 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %106 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %105, i32 0, i32 5
  %107 = load i64, i64* %16, align 8
  %108 = call i64 @qlcnic_sriov_alloc_bc_msg(%struct.qlcnic_bc_hdr** %106, i64 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load i32, i32* @ENOMEM, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  br label %251

113:                                              ; preds = %104
  %114 = load i64, i64* %17, align 8
  store i64 %114, i64* %16, align 8
  %115 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %116 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %115, i32 0, i32 4
  %117 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %116, align 8
  store %struct.qlcnic_bc_hdr* %117, %struct.qlcnic_bc_hdr** %10, align 8
  br label %185

118:                                              ; preds = %4
  %119 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %120 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %119, i32 0, i32 7
  %121 = load %struct.qlcnic_bc_payload*, %struct.qlcnic_bc_payload** %120, align 8
  %122 = bitcast %struct.qlcnic_bc_payload* %121 to i32*
  %123 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %124 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  store i32* %122, i32** %125, align 8
  %126 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %127 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %126, i32 0, i32 6
  %128 = load %struct.qlcnic_bc_payload*, %struct.qlcnic_bc_payload** %127, align 8
  %129 = bitcast %struct.qlcnic_bc_payload* %128 to i32*
  %130 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %131 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  store i32* %129, i32** %132, align 8
  %133 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %134 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 255
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %15, align 8
  %141 = load i64, i64* %15, align 8
  %142 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %143 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %142, i32 0, i32 3
  store i64 %141, i64* %143, align 8
  %144 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %145 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %13, align 4
  %148 = srem i32 %146, %147
  store i32 %148, i32* %14, align 4
  %149 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %150 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %13, align 4
  %153 = sdiv i32 %151, %152
  %154 = sext i32 %153 to i64
  store i64 %154, i64* %16, align 8
  %155 = load i32, i32* %14, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %118
  %158 = load i64, i64* %16, align 8
  %159 = add nsw i64 %158, 1
  store i64 %159, i64* %16, align 8
  br label %160

160:                                              ; preds = %157, %118
  %161 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %162 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sdiv i32 %163, 4
  %165 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %166 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  store i32 %164, i32* %167, align 8
  %168 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %169 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sdiv i32 %170, 4
  %172 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %173 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 1
  store i32 %171, i32* %174, align 8
  %175 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %176 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %175, i32 0, i32 5
  %177 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %176, align 8
  store %struct.qlcnic_bc_hdr* %177, %struct.qlcnic_bc_hdr** %10, align 8
  %178 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %179 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %178, i32 0, i32 4
  %180 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %179, align 8
  %181 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %184 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  br label %185

185:                                              ; preds = %160, %113
  %186 = load i32, i32* %8, align 4
  %187 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %188 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  %189 = load i64, i64* %15, align 8
  %190 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %6, align 8
  %191 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %190, i32 0, i32 3
  store i64 %189, i64* %191, align 8
  store i32 0, i32* %11, align 4
  br label %192

192:                                              ; preds = %247, %185
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = load i64, i64* %16, align 8
  %196 = icmp slt i64 %194, %195
  br i1 %196, label %197, label %250

197:                                              ; preds = %192
  %198 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %10, align 8
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %198, i64 %200
  %202 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %201, i32 0, i32 0
  store i32 2, i32* %202, align 8
  %203 = load i64, i64* %9, align 8
  %204 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %10, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %204, i64 %206
  %208 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %207, i32 0, i32 7
  store i64 %203, i64* %208, align 8
  %209 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %210 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %10, align 8
  %213 = load i32, i32* %11, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %212, i64 %214
  %216 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %215, i32 0, i32 6
  store i32 %211, i32* %216, align 8
  %217 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %10, align 8
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %217, i64 %219
  %221 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %220, i32 0, i32 1
  store i32 1, i32* %221, align 4
  %222 = load i64, i64* %16, align 8
  %223 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %10, align 8
  %224 = load i32, i32* %11, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %223, i64 %225
  %227 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %226, i32 0, i32 5
  store i64 %222, i64* %227, align 8
  %228 = load i32, i32* %11, align 4
  %229 = add nsw i32 %228, 1
  %230 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %10, align 8
  %231 = load i32, i32* %11, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %230, i64 %232
  %234 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %233, i32 0, i32 2
  store i32 %229, i32* %234, align 8
  %235 = load i64, i64* %15, align 8
  %236 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %10, align 8
  %237 = load i32, i32* %11, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %236, i64 %238
  %240 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %239, i32 0, i32 4
  store i64 %235, i64* %240, align 8
  %241 = load i32, i32* %8, align 4
  %242 = load %struct.qlcnic_bc_hdr*, %struct.qlcnic_bc_hdr** %10, align 8
  %243 = load i32, i32* %11, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %242, i64 %244
  %246 = getelementptr inbounds %struct.qlcnic_bc_hdr, %struct.qlcnic_bc_hdr* %245, i32 0, i32 3
  store i32 %241, i32* %246, align 4
  br label %247

247:                                              ; preds = %197
  %248 = load i32, i32* %11, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %11, align 4
  br label %192

250:                                              ; preds = %192
  store i32 0, i32* %5, align 4
  br label %251

251:                                              ; preds = %250, %110, %84
  %252 = load i32, i32* %5, align 4
  ret i32 %252
}

declare dso_local i64 @qlcnic_sriov_alloc_bc_msg(%struct.qlcnic_bc_hdr**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
