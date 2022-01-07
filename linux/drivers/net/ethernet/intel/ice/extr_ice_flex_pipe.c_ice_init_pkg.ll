; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_init_pkg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_init_pkg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.ice_seg*, i32, i32 }
%struct.ice_seg = type { i32 }
%struct.ice_pkg_hdr = type { i32 }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_DBG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to verify pkg (err: %d)\0A\00", align 1
@SEGMENT_TYPE_ICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"no ice segment in package.\0A\00", align 1
@ICE_ERR_CFG = common dso_local global i32 0, align 4
@ICE_ERR_AQ_NO_WORK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"package previously loaded - no work.\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"package load failed, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_init_pkg(%struct.ice_hw* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ice_pkg_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ice_seg*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13, %3
  %17 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %17, i32* %4, align 4
  br label %103

18:                                               ; preds = %13
  %19 = load i32*, i32** %6, align 8
  %20 = bitcast i32* %19 to %struct.ice_pkg_hdr*
  store %struct.ice_pkg_hdr* %20, %struct.ice_pkg_hdr** %8, align 8
  %21 = load %struct.ice_pkg_hdr*, %struct.ice_pkg_hdr** %8, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ice_verify_pkg(%struct.ice_pkg_hdr* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %28 = load i32, i32* @ICE_DBG_INIT, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %27, i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %103

32:                                               ; preds = %18
  %33 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %34 = load %struct.ice_pkg_hdr*, %struct.ice_pkg_hdr** %8, align 8
  %35 = call i32 @ice_init_pkg_info(%struct.ice_hw* %33, %struct.ice_pkg_hdr* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %103

40:                                               ; preds = %32
  %41 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %42 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %41, i32 0, i32 2
  %43 = call i32 @ice_chk_pkg_version(i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %103

48:                                               ; preds = %40
  %49 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %50 = load i32, i32* @SEGMENT_TYPE_ICE, align 4
  %51 = load %struct.ice_pkg_hdr*, %struct.ice_pkg_hdr** %8, align 8
  %52 = call i64 @ice_find_seg_in_pkg(%struct.ice_hw* %49, i32 %50, %struct.ice_pkg_hdr* %51)
  %53 = inttoptr i64 %52 to %struct.ice_seg*
  store %struct.ice_seg* %53, %struct.ice_seg** %10, align 8
  %54 = load %struct.ice_seg*, %struct.ice_seg** %10, align 8
  %55 = icmp ne %struct.ice_seg* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %48
  %57 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %58 = load i32, i32* @ICE_DBG_INIT, align 4
  %59 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %57, i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %60, i32* %4, align 4
  br label %103

61:                                               ; preds = %48
  %62 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %63 = load %struct.ice_seg*, %struct.ice_seg** %10, align 8
  %64 = call i32 @ice_download_pkg(%struct.ice_hw* %62, %struct.ice_seg* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @ICE_ERR_AQ_NO_WORK, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %70 = load i32, i32* @ICE_DBG_INIT, align 4
  %71 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %69, i32 %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %68, %61
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %72
  %76 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %77 = call i32 @ice_get_pkg_info(%struct.ice_hw* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %75
  %81 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %82 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %81, i32 0, i32 1
  %83 = call i32 @ice_chk_pkg_version(i32* %82)
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %80, %75
  br label %85

85:                                               ; preds = %84, %72
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %85
  %89 = load %struct.ice_seg*, %struct.ice_seg** %10, align 8
  %90 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %91 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %90, i32 0, i32 0
  store %struct.ice_seg* %89, %struct.ice_seg** %91, align 8
  %92 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %93 = call i32 @ice_init_pkg_regs(%struct.ice_hw* %92)
  %94 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %95 = call i32 @ice_fill_blk_tbls(%struct.ice_hw* %94)
  br label %101

96:                                               ; preds = %85
  %97 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %98 = load i32, i32* @ICE_DBG_INIT, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 (%struct.ice_hw*, i32, i8*, ...) @ice_debug(%struct.ice_hw* %97, i32 %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %96, %88
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %56, %46, %38, %26, %16
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @ice_verify_pkg(%struct.ice_pkg_hdr*, i32) #1

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*, ...) #1

declare dso_local i32 @ice_init_pkg_info(%struct.ice_hw*, %struct.ice_pkg_hdr*) #1

declare dso_local i32 @ice_chk_pkg_version(i32*) #1

declare dso_local i64 @ice_find_seg_in_pkg(%struct.ice_hw*, i32, %struct.ice_pkg_hdr*) #1

declare dso_local i32 @ice_download_pkg(%struct.ice_hw*, %struct.ice_seg*) #1

declare dso_local i32 @ice_get_pkg_info(%struct.ice_hw*) #1

declare dso_local i32 @ice_init_pkg_regs(%struct.ice_hw*) #1

declare dso_local i32 @ice_fill_blk_tbls(%struct.ice_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
