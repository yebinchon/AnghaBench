; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_init_pkg_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_init_pkg_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.ice_pkg_hdr = type { i32 }
%struct.ice_global_metadata_seg = type { i32, %struct.TYPE_3__ }
%struct.ice_generic_seg_hdr = type { i32, %struct.TYPE_4__ }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@SEGMENT_TYPE_METADATA = common dso_local global i32 0, align 4
@ICE_DBG_PKG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Pkg: %d.%d.%d.%d, %s\0A\00", align 1
@ICE_DBG_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Did not find metadata segment in driver package\0A\00", align 1
@ICE_ERR_CFG = common dso_local global i32 0, align 4
@SEGMENT_TYPE_ICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Ice Pkg: %d.%d.%d.%d, %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Did not find ice segment in driver package\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, %struct.ice_pkg_hdr*)* @ice_init_pkg_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_init_pkg_info(%struct.ice_hw* %0, %struct.ice_pkg_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca %struct.ice_pkg_hdr*, align 8
  %6 = alloca %struct.ice_global_metadata_seg*, align 8
  %7 = alloca %struct.ice_generic_seg_hdr*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %4, align 8
  store %struct.ice_pkg_hdr* %1, %struct.ice_pkg_hdr** %5, align 8
  %8 = load %struct.ice_pkg_hdr*, %struct.ice_pkg_hdr** %5, align 8
  %9 = icmp ne %struct.ice_pkg_hdr* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %11, i32* %3, align 4
  br label %110

12:                                               ; preds = %2
  %13 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %14 = load i32, i32* @SEGMENT_TYPE_METADATA, align 4
  %15 = load %struct.ice_pkg_hdr*, %struct.ice_pkg_hdr** %5, align 8
  %16 = call %struct.ice_generic_seg_hdr* @ice_find_seg_in_pkg(%struct.ice_hw* %13, i32 %14, %struct.ice_pkg_hdr* %15)
  %17 = bitcast %struct.ice_generic_seg_hdr* %16 to %struct.ice_global_metadata_seg*
  store %struct.ice_global_metadata_seg* %17, %struct.ice_global_metadata_seg** %6, align 8
  %18 = load %struct.ice_global_metadata_seg*, %struct.ice_global_metadata_seg** %6, align 8
  %19 = icmp ne %struct.ice_global_metadata_seg* %18, null
  br i1 %19, label %20, label %56

20:                                               ; preds = %12
  %21 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %22 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %21, i32 0, i32 3
  %23 = load %struct.ice_global_metadata_seg*, %struct.ice_global_metadata_seg** %6, align 8
  %24 = getelementptr inbounds %struct.ice_global_metadata_seg, %struct.ice_global_metadata_seg* %23, i32 0, i32 1
  %25 = bitcast %struct.TYPE_3__* %22 to i8*
  %26 = bitcast %struct.TYPE_3__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 16, i1 false)
  %27 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %28 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ice_global_metadata_seg*, %struct.ice_global_metadata_seg** %6, align 8
  %31 = getelementptr inbounds %struct.ice_global_metadata_seg, %struct.ice_global_metadata_seg* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcpy(i32 %29, i32 %32, i32 4)
  %34 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %35 = load i32, i32* @ICE_DBG_PKG, align 4
  %36 = load %struct.ice_global_metadata_seg*, %struct.ice_global_metadata_seg** %6, align 8
  %37 = getelementptr inbounds %struct.ice_global_metadata_seg, %struct.ice_global_metadata_seg* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ice_global_metadata_seg*, %struct.ice_global_metadata_seg** %6, align 8
  %41 = getelementptr inbounds %struct.ice_global_metadata_seg, %struct.ice_global_metadata_seg* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ice_global_metadata_seg*, %struct.ice_global_metadata_seg** %6, align 8
  %45 = getelementptr inbounds %struct.ice_global_metadata_seg, %struct.ice_global_metadata_seg* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ice_global_metadata_seg*, %struct.ice_global_metadata_seg** %6, align 8
  %49 = getelementptr inbounds %struct.ice_global_metadata_seg, %struct.ice_global_metadata_seg* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ice_global_metadata_seg*, %struct.ice_global_metadata_seg** %6, align 8
  %53 = getelementptr inbounds %struct.ice_global_metadata_seg, %struct.ice_global_metadata_seg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %34, i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %43, i32 %47, i32 %51, i32 %54)
  br label %61

56:                                               ; preds = %12
  %57 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %58 = load i32, i32* @ICE_DBG_INIT, align 4
  %59 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %57, i32 %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %60, i32* %3, align 4
  br label %110

61:                                               ; preds = %20
  %62 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %63 = load i32, i32* @SEGMENT_TYPE_ICE, align 4
  %64 = load %struct.ice_pkg_hdr*, %struct.ice_pkg_hdr** %5, align 8
  %65 = call %struct.ice_generic_seg_hdr* @ice_find_seg_in_pkg(%struct.ice_hw* %62, i32 %63, %struct.ice_pkg_hdr* %64)
  store %struct.ice_generic_seg_hdr* %65, %struct.ice_generic_seg_hdr** %7, align 8
  %66 = load %struct.ice_generic_seg_hdr*, %struct.ice_generic_seg_hdr** %7, align 8
  %67 = icmp ne %struct.ice_generic_seg_hdr* %66, null
  br i1 %67, label %68, label %104

68:                                               ; preds = %61
  %69 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %70 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %69, i32 0, i32 1
  %71 = load %struct.ice_generic_seg_hdr*, %struct.ice_generic_seg_hdr** %7, align 8
  %72 = getelementptr inbounds %struct.ice_generic_seg_hdr, %struct.ice_generic_seg_hdr* %71, i32 0, i32 1
  %73 = bitcast %struct.TYPE_4__* %70 to i8*
  %74 = bitcast %struct.TYPE_4__* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %73, i8* align 4 %74, i64 16, i1 false)
  %75 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %76 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ice_generic_seg_hdr*, %struct.ice_generic_seg_hdr** %7, align 8
  %79 = getelementptr inbounds %struct.ice_generic_seg_hdr, %struct.ice_generic_seg_hdr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @memcpy(i32 %77, i32 %80, i32 4)
  %82 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %83 = load i32, i32* @ICE_DBG_PKG, align 4
  %84 = load %struct.ice_generic_seg_hdr*, %struct.ice_generic_seg_hdr** %7, align 8
  %85 = getelementptr inbounds %struct.ice_generic_seg_hdr, %struct.ice_generic_seg_hdr* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ice_generic_seg_hdr*, %struct.ice_generic_seg_hdr** %7, align 8
  %89 = getelementptr inbounds %struct.ice_generic_seg_hdr, %struct.ice_generic_seg_hdr* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ice_generic_seg_hdr*, %struct.ice_generic_seg_hdr** %7, align 8
  %93 = getelementptr inbounds %struct.ice_generic_seg_hdr, %struct.ice_generic_seg_hdr* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ice_generic_seg_hdr*, %struct.ice_generic_seg_hdr** %7, align 8
  %97 = getelementptr inbounds %struct.ice_generic_seg_hdr, %struct.ice_generic_seg_hdr* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ice_generic_seg_hdr*, %struct.ice_generic_seg_hdr** %7, align 8
  %101 = getelementptr inbounds %struct.ice_generic_seg_hdr, %struct.ice_generic_seg_hdr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %82, i32 %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %87, i32 %91, i32 %95, i32 %99, i32 %102)
  br label %109

104:                                              ; preds = %61
  %105 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %106 = load i32, i32* @ICE_DBG_INIT, align 4
  %107 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %105, i32 %106, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %108, i32* %3, align 4
  br label %110

109:                                              ; preds = %68
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %104, %56, %10
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.ice_generic_seg_hdr* @ice_find_seg_in_pkg(%struct.ice_hw*, i32, %struct.ice_pkg_hdr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
