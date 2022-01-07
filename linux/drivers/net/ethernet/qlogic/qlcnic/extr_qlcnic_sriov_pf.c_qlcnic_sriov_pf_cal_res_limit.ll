; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_cal_res_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_cal_res_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.qlcnic_sriov* }
%struct.qlcnic_sriov = type { i64, i32, %struct.TYPE_4__*, %struct.qlcnic_resources }
%struct.TYPE_4__ = type { %struct.qlcnic_vport* }
%struct.qlcnic_vport = type { i32, i32 }
%struct.qlcnic_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlcnic_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QLCNIC_83XX_SRIOV_VF_MAX_MAC = common dso_local global i64 0, align 8
@MAX_BW = common dso_local global i32 0, align 4
@QLCNIC_SRIOV_VF_MAX_MAC = common dso_local global i64 0, align 8
@QLCNIC_SINGLE_RING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_info*, i64)* @qlcnic_sriov_pf_cal_res_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_pf_cal_res_limit(%struct.qlcnic_adapter* %0, %struct.qlcnic_info* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qlcnic_sriov*, align 8
  %9 = alloca %struct.qlcnic_resources*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.qlcnic_vport*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_info* %1, %struct.qlcnic_info** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %21, align 8
  store %struct.qlcnic_sriov* %22, %struct.qlcnic_sriov** %8, align 8
  %23 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %24 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %23, i32 0, i32 3
  store %struct.qlcnic_resources* %24, %struct.qlcnic_resources** %9, align 8
  %25 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %26 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %10, align 8
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %11, align 4
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @qlcnic_sriov_pf_get_vport_handle(%struct.qlcnic_adapter* %31, i64 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %233

39:                                               ; preds = %3
  %40 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %41 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %16, align 4
  %45 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %46 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %45, i32 0, i32 0
  store i32 65535, i32* %46, align 4
  %47 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %48 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %16, align 4
  %51 = sdiv i32 %49, %50
  %52 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %53 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %55 = call i64 @qlcnic_83xx_pf_check(%struct.qlcnic_adapter* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %39
  %58 = load i64, i64* @QLCNIC_83XX_SRIOV_VF_MAX_MAC, align 8
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %57, %39
  %60 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %61 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %64 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %66 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %128

72:                                               ; preds = %59
  %73 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %74 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %73, i32 0, i32 14
  store i32 0, i32* %74, align 4
  %75 = load i32, i32* @MAX_BW, align 4
  %76 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %77 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %76, i32 0, i32 13
  store i32 %75, i32* %77, align 4
  %78 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %79 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = load i64, i64* %10, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = mul nsw i64 %82, %84
  %86 = sub nsw i64 %81, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %90 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %92 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %10, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = mul nsw i64 %95, %97
  %99 = sub nsw i64 %94, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %103 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 4
  %104 = load i64, i64* %10, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = mul nsw i64 %104, %106
  %108 = load i64, i64* @QLCNIC_SRIOV_VF_MAX_MAC, align 8
  %109 = mul nsw i64 %107, %108
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %17, align 4
  %111 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %112 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %17, align 4
  %115 = sub nsw i32 %113, %114
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %17, align 4
  %117 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %118 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 4
  %119 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %120 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %123 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = sub nsw i32 %121, %124
  %126 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %127 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  br label %173

128:                                              ; preds = %59
  %129 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %130 = load i64, i64* %7, align 8
  %131 = call i32 @qlcnic_sriov_func_to_index(%struct.qlcnic_adapter* %129, i64 %130)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i32, i32* %13, align 4
  store i32 %135, i32* %4, align 4
  br label %233

136:                                              ; preds = %128
  %137 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %138 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %137, i32 0, i32 2
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %143, align 8
  store %struct.qlcnic_vport* %144, %struct.qlcnic_vport** %14, align 8
  %145 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %14, align 8
  %146 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %149 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %148, i32 0, i32 14
  store i32 %147, i32* %149, align 4
  %150 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %14, align 8
  %151 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %154 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %153, i32 0, i32 13
  store i32 %152, i32* %154, align 4
  %155 = load i64, i64* %10, align 8
  %156 = trunc i64 %155 to i32
  %157 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %158 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 4
  %159 = load i64, i64* %10, align 8
  %160 = trunc i64 %159 to i32
  %161 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %162 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 4
  %163 = load i64, i64* %10, align 8
  %164 = load i64, i64* @QLCNIC_SRIOV_VF_MAX_MAC, align 8
  %165 = mul nsw i64 %163, %164
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %17, align 4
  %167 = load i32, i32* %17, align 4
  %168 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %169 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* @QLCNIC_SINGLE_RING, align 4
  %171 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %172 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %136, %72
  %174 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %175 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %16, align 4
  %178 = sdiv i32 %176, %177
  %179 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %180 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 4
  %181 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %182 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %16, align 4
  %185 = sdiv i32 %183, %184
  %186 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %187 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %186, i32 0, i32 6
  store i32 %185, i32* %187, align 4
  %188 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %189 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %16, align 4
  %192 = sdiv i32 %190, %191
  %193 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %194 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %193, i32 0, i32 7
  store i32 %192, i32* %194, align 4
  %195 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %196 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %16, align 4
  %199 = sdiv i32 %197, %198
  %200 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %201 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %200, i32 0, i32 8
  store i32 %199, i32* %201, align 4
  %202 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %203 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %202, i32 0, i32 8
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %16, align 4
  %206 = sdiv i32 %204, %205
  %207 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %208 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %207, i32 0, i32 9
  store i32 %206, i32* %208, align 4
  %209 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %210 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %209, i32 0, i32 11
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %213 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %212, i32 0, i32 12
  store i32 %211, i32* %213, align 4
  %214 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %215 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %214, i32 0, i32 10
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %218 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %217, i32 0, i32 11
  store i32 %216, i32* %218, align 4
  %219 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %220 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %219, i32 0, i32 9
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %223 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %222, i32 0, i32 10
  store i32 %221, i32* %223, align 4
  %224 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %225 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %226 = load i32, i32* %12, align 4
  %227 = call i32 @qlcnic_sriov_pf_set_vport_info(%struct.qlcnic_adapter* %224, %struct.qlcnic_info* %225, i32 %226)
  store i32 %227, i32* %11, align 4
  %228 = load i32, i32* %11, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %173
  %231 = load i32, i32* %11, align 4
  store i32 %231, i32* %4, align 4
  br label %233

232:                                              ; preds = %173
  store i32 0, i32* %4, align 4
  br label %233

233:                                              ; preds = %232, %230, %134, %36
  %234 = load i32, i32* %4, align 4
  ret i32 %234
}

declare dso_local i32 @qlcnic_sriov_pf_get_vport_handle(%struct.qlcnic_adapter*, i64) #1

declare dso_local i64 @qlcnic_83xx_pf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_func_to_index(%struct.qlcnic_adapter*, i64) #1

declare dso_local i32 @qlcnic_sriov_pf_set_vport_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
