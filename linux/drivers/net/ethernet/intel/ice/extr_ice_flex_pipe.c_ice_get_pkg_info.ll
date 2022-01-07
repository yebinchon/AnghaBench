; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_get_pkg_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_get_pkg_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.ice_aqc_get_pkg_info_resp = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i64, i64, i64, i64 }

@ICE_PKG_CNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@ICE_DBG_PKG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Pkg[%d]: %d.%d.%d.%d,%s,%s\0A\00", align 1
@ICE_PKG_FLAG_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*)* @ice_get_pkg_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_get_pkg_info(%struct.ice_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_hw*, align 8
  %4 = alloca %struct.ice_aqc_get_pkg_info_resp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [5 x i8], align 1
  %9 = alloca i64, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %3, align 8
  %10 = load i32, i32* @ICE_PKG_CNT, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = mul i64 56, %12
  %14 = add i64 16, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ice_aqc_get_pkg_info_resp* @kzalloc(i32 %16, i32 %17)
  store %struct.ice_aqc_get_pkg_info_resp* %18, %struct.ice_aqc_get_pkg_info_resp** %4, align 8
  %19 = load %struct.ice_aqc_get_pkg_info_resp*, %struct.ice_aqc_get_pkg_info_resp** %4, align 8
  %20 = icmp ne %struct.ice_aqc_get_pkg_info_resp* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %22, i32* %2, align 4
  br label %175

23:                                               ; preds = %1
  %24 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %25 = load %struct.ice_aqc_get_pkg_info_resp*, %struct.ice_aqc_get_pkg_info_resp** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ice_aq_get_pkg_info_list(%struct.ice_hw* %24, %struct.ice_aqc_get_pkg_info_resp* %25, i32 %26, i32* null)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %171

31:                                               ; preds = %23
  store i64 0, i64* %7, align 8
  br label %32

32:                                               ; preds = %167, %31
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.ice_aqc_get_pkg_info_resp*, %struct.ice_aqc_get_pkg_info_resp** %4, align 8
  %35 = getelementptr inbounds %struct.ice_aqc_get_pkg_info_resp, %struct.ice_aqc_get_pkg_info_resp* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @le32_to_cpu(i32 %36)
  %38 = icmp ult i64 %33, %37
  br i1 %38, label %39, label %170

39:                                               ; preds = %32
  %40 = bitcast [5 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %40, i8 0, i64 5, i1 false)
  store i64 0, i64* %9, align 8
  %41 = load %struct.ice_aqc_get_pkg_info_resp*, %struct.ice_aqc_get_pkg_info_resp** %4, align 8
  %42 = getelementptr inbounds %struct.ice_aqc_get_pkg_info_resp, %struct.ice_aqc_get_pkg_info_resp* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %83

49:                                               ; preds = %39
  %50 = load i64, i64* %9, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %9, align 8
  %52 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 %50
  store i8 65, i8* %52, align 1
  %53 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %54 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %53, i32 0, i32 2
  %55 = load %struct.ice_aqc_get_pkg_info_resp*, %struct.ice_aqc_get_pkg_info_resp** %4, align 8
  %56 = getelementptr inbounds %struct.ice_aqc_get_pkg_info_resp, %struct.ice_aqc_get_pkg_info_resp* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = bitcast %struct.TYPE_3__* %54 to i8*
  %62 = bitcast %struct.TYPE_3__* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %61, i8* align 4 %62, i64 16, i1 false)
  %63 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %64 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ice_aqc_get_pkg_info_resp*, %struct.ice_aqc_get_pkg_info_resp** %4, align 8
  %67 = getelementptr inbounds %struct.ice_aqc_get_pkg_info_resp, %struct.ice_aqc_get_pkg_info_resp* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @memcpy(i32 %65, i32 %72, i32 4)
  %74 = load %struct.ice_aqc_get_pkg_info_resp*, %struct.ice_aqc_get_pkg_info_resp** %4, align 8
  %75 = getelementptr inbounds %struct.ice_aqc_get_pkg_info_resp, %struct.ice_aqc_get_pkg_info_resp* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %82 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %49, %39
  %84 = load %struct.ice_aqc_get_pkg_info_resp*, %struct.ice_aqc_get_pkg_info_resp** %4, align 8
  %85 = getelementptr inbounds %struct.ice_aqc_get_pkg_info_resp, %struct.ice_aqc_get_pkg_info_resp* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load i64, i64* %9, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %9, align 8
  %95 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 %93
  store i8 66, i8* %95, align 1
  br label %96

96:                                               ; preds = %92, %83
  %97 = load %struct.ice_aqc_get_pkg_info_resp*, %struct.ice_aqc_get_pkg_info_resp** %4, align 8
  %98 = getelementptr inbounds %struct.ice_aqc_get_pkg_info_resp, %struct.ice_aqc_get_pkg_info_resp* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i64, i64* %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load i64, i64* %9, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %9, align 8
  %108 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 %106
  store i8 77, i8* %108, align 1
  br label %109

109:                                              ; preds = %105, %96
  %110 = load %struct.ice_aqc_get_pkg_info_resp*, %struct.ice_aqc_get_pkg_info_resp** %4, align 8
  %111 = getelementptr inbounds %struct.ice_aqc_get_pkg_info_resp, %struct.ice_aqc_get_pkg_info_resp* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i64, i64* %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %109
  %119 = load i64, i64* %9, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %9, align 8
  %121 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 %119
  store i8 78, i8* %121, align 1
  br label %122

122:                                              ; preds = %118, %109
  %123 = load %struct.ice_hw*, %struct.ice_hw** %3, align 8
  %124 = load i32, i32* @ICE_DBG_PKG, align 4
  %125 = load i64, i64* %7, align 8
  %126 = load %struct.ice_aqc_get_pkg_info_resp*, %struct.ice_aqc_get_pkg_info_resp** %4, align 8
  %127 = getelementptr inbounds %struct.ice_aqc_get_pkg_info_resp, %struct.ice_aqc_get_pkg_info_resp* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = load i64, i64* %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ice_aqc_get_pkg_info_resp*, %struct.ice_aqc_get_pkg_info_resp** %4, align 8
  %135 = getelementptr inbounds %struct.ice_aqc_get_pkg_info_resp, %struct.ice_aqc_get_pkg_info_resp* %134, i32 0, i32 0
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load i64, i64* %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ice_aqc_get_pkg_info_resp*, %struct.ice_aqc_get_pkg_info_resp** %4, align 8
  %143 = getelementptr inbounds %struct.ice_aqc_get_pkg_info_resp, %struct.ice_aqc_get_pkg_info_resp* %142, i32 0, i32 0
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = load i64, i64* %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ice_aqc_get_pkg_info_resp*, %struct.ice_aqc_get_pkg_info_resp** %4, align 8
  %151 = getelementptr inbounds %struct.ice_aqc_get_pkg_info_resp, %struct.ice_aqc_get_pkg_info_resp* %150, i32 0, i32 0
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = load i64, i64* %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ice_aqc_get_pkg_info_resp*, %struct.ice_aqc_get_pkg_info_resp** %4, align 8
  %159 = getelementptr inbounds %struct.ice_aqc_get_pkg_info_resp, %struct.ice_aqc_get_pkg_info_resp* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = load i64, i64* %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %166 = call i32 @ice_debug(%struct.ice_hw* %123, i32 %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %125, i32 %133, i32 %141, i32 %149, i32 %157, i32 %164, i8* %165)
  br label %167

167:                                              ; preds = %122
  %168 = load i64, i64* %7, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %7, align 8
  br label %32

170:                                              ; preds = %32
  br label %171

171:                                              ; preds = %170, %30
  %172 = load %struct.ice_aqc_get_pkg_info_resp*, %struct.ice_aqc_get_pkg_info_resp** %4, align 8
  %173 = call i32 @kfree(%struct.ice_aqc_get_pkg_info_resp* %172)
  %174 = load i32, i32* %5, align 4
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %171, %21
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local %struct.ice_aqc_get_pkg_info_resp* @kzalloc(i32, i32) #1

declare dso_local i32 @ice_aq_get_pkg_info_list(%struct.ice_hw*, %struct.ice_aqc_get_pkg_info_resp*, i32, i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*, i64, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @kfree(%struct.ice_aqc_get_pkg_info_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
