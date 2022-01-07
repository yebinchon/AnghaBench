; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_dwnld_cfg_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_dwnld_cfg_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ice_buf = type { i32 }
%struct.ice_buf_hdr = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_METADATA_BUF = common dso_local global i32 0, align 4
@ICE_AQ_RC_OK = common dso_local global i32 0, align 4
@ICE_RES_WRITE = common dso_local global i32 0, align 4
@ICE_ERR_AQ_NO_WORK = common dso_local global i32 0, align 4
@ICE_AQ_RC_EEXIST = common dso_local global i32 0, align 4
@ICE_PKG_BUF_SIZE = common dso_local global i32 0, align 4
@ICE_DBG_PKG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Pkg download failed: err %d off %d inf %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, %struct.ice_buf*, i64)* @ice_dwnld_cfg_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_dwnld_cfg_bufs(%struct.ice_hw* %0, %struct.ice_buf* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca %struct.ice_buf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ice_buf_hdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %5, align 8
  store %struct.ice_buf* %1, %struct.ice_buf** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.ice_buf*, %struct.ice_buf** %6, align 8
  %15 = icmp ne %struct.ice_buf* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16, %3
  %20 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %20, i32* %4, align 4
  br label %136

21:                                               ; preds = %16
  %22 = load %struct.ice_buf*, %struct.ice_buf** %6, align 8
  %23 = bitcast %struct.ice_buf* %22 to %struct.ice_buf_hdr*
  store %struct.ice_buf_hdr* %23, %struct.ice_buf_hdr** %9, align 8
  %24 = load %struct.ice_buf_hdr*, %struct.ice_buf_hdr** %9, align 8
  %25 = getelementptr inbounds %struct.ice_buf_hdr, %struct.ice_buf_hdr* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = load i32, i32* @ICE_METADATA_BUF, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %136

35:                                               ; preds = %21
  %36 = load i32, i32* @ICE_AQ_RC_OK, align 4
  %37 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %38 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %40 = load i32, i32* @ICE_RES_WRITE, align 4
  %41 = call i32 @ice_acquire_global_cfg_lock(%struct.ice_hw* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @ICE_ERR_AQ_NO_WORK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @ICE_AQ_RC_EEXIST, align 4
  %50 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %51 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %59

52:                                               ; preds = %44
  %53 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %54 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %58 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %52, %48
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %136

61:                                               ; preds = %35
  store i64 0, i64* %12, align 8
  br label %62

62:                                               ; preds = %129, %61
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %132

66:                                               ; preds = %62
  %67 = load i64, i64* %12, align 8
  %68 = add nsw i64 %67, 1
  %69 = load i64, i64* %7, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %99, label %74

74:                                               ; preds = %66
  %75 = load %struct.ice_buf*, %struct.ice_buf** %6, align 8
  %76 = load i64, i64* %12, align 8
  %77 = getelementptr inbounds %struct.ice_buf, %struct.ice_buf* %75, i64 %76
  %78 = getelementptr inbounds %struct.ice_buf, %struct.ice_buf* %77, i64 1
  %79 = bitcast %struct.ice_buf* %78 to %struct.ice_buf_hdr*
  store %struct.ice_buf_hdr* %79, %struct.ice_buf_hdr** %9, align 8
  %80 = load %struct.ice_buf_hdr*, %struct.ice_buf_hdr** %9, align 8
  %81 = getelementptr inbounds %struct.ice_buf_hdr, %struct.ice_buf_hdr* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @le16_to_cpu(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %74
  %86 = load %struct.ice_buf_hdr*, %struct.ice_buf_hdr** %9, align 8
  %87 = getelementptr inbounds %struct.ice_buf_hdr, %struct.ice_buf_hdr* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le32_to_cpu(i32 %91)
  %93 = load i32, i32* @ICE_METADATA_BUF, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  store i32 1, i32* %13, align 4
  br label %97

97:                                               ; preds = %96, %85
  br label %98

98:                                               ; preds = %97, %74
  br label %99

99:                                               ; preds = %98, %66
  %100 = load %struct.ice_buf*, %struct.ice_buf** %6, align 8
  %101 = load i64, i64* %12, align 8
  %102 = getelementptr inbounds %struct.ice_buf, %struct.ice_buf* %100, i64 %101
  %103 = bitcast %struct.ice_buf* %102 to %struct.ice_buf_hdr*
  store %struct.ice_buf_hdr* %103, %struct.ice_buf_hdr** %9, align 8
  %104 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %105 = load %struct.ice_buf_hdr*, %struct.ice_buf_hdr** %9, align 8
  %106 = load i32, i32* @ICE_PKG_BUF_SIZE, align 4
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @ice_aq_download_pkg(%struct.ice_hw* %104, %struct.ice_buf_hdr* %105, i32 %106, i32 %107, i64* %10, i64* %11, i32* null)
  store i32 %108, i32* %8, align 4
  %109 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %110 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %114 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %99
  %118 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %119 = load i32, i32* @ICE_DBG_PKG, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* %11, align 8
  %123 = call i32 @ice_debug(%struct.ice_hw* %118, i32 %119, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %120, i64 %121, i64 %122)
  br label %132

124:                                              ; preds = %99
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %132

128:                                              ; preds = %124
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* %12, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %12, align 8
  br label %62

132:                                              ; preds = %127, %117, %62
  %133 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %134 = call i32 @ice_release_global_cfg_lock(%struct.ice_hw* %133)
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %132, %59, %34, %19
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ice_acquire_global_cfg_lock(%struct.ice_hw*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @ice_aq_download_pkg(%struct.ice_hw*, %struct.ice_buf_hdr*, i32, i32, i64*, i64*, i32*) #1

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*, i32, i64, i64) #1

declare dso_local i32 @ice_release_global_cfg_lock(%struct.ice_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
