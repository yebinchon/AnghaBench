; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_aq_download_pkg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_aq_download_pkg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_buf_hdr = type { i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_download_pkg = type { i32 }
%struct.ice_aq_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ice_aqc_download_pkg }
%struct.ice_aqc_download_pkg_resp = type { i32, i32 }

@ice_aqc_opc_download_pkg = common dso_local global i32 0, align 4
@ICE_AQ_FLAG_RD = common dso_local global i32 0, align 4
@ICE_AQC_DOWNLOAD_PKG_LAST_BUF = common dso_local global i32 0, align 4
@ICE_ERR_AQ_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, %struct.ice_buf_hdr*, i32, i32, i64*, i64*, %struct.ice_sq_cd*)* @ice_aq_download_pkg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_aq_download_pkg(%struct.ice_hw* %0, %struct.ice_buf_hdr* %1, i32 %2, i32 %3, i64* %4, i64* %5, %struct.ice_sq_cd* %6) #0 {
  %8 = alloca %struct.ice_hw*, align 8
  %9 = alloca %struct.ice_buf_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.ice_sq_cd*, align 8
  %15 = alloca %struct.ice_aqc_download_pkg*, align 8
  %16 = alloca %struct.ice_aq_desc, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ice_aqc_download_pkg_resp*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %8, align 8
  store %struct.ice_buf_hdr* %1, %struct.ice_buf_hdr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store %struct.ice_sq_cd* %6, %struct.ice_sq_cd** %14, align 8
  %19 = load i64*, i64** %12, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load i64*, i64** %12, align 8
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %21, %7
  %24 = load i64*, i64** %13, align 8
  %25 = icmp ne i64* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i64*, i64** %13, align 8
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %26, %23
  %29 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %16, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.ice_aqc_download_pkg* %30, %struct.ice_aqc_download_pkg** %15, align 8
  %31 = load i32, i32* @ice_aqc_opc_download_pkg, align 4
  %32 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %16, i32 %31)
  %33 = load i32, i32* @ICE_AQ_FLAG_RD, align 4
  %34 = call i32 @cpu_to_le16(i32 %33)
  %35 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %16, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %28
  %41 = load i32, i32* @ICE_AQC_DOWNLOAD_PKG_LAST_BUF, align 4
  %42 = load %struct.ice_aqc_download_pkg*, %struct.ice_aqc_download_pkg** %15, align 8
  %43 = getelementptr inbounds %struct.ice_aqc_download_pkg, %struct.ice_aqc_download_pkg* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %28
  %47 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %48 = load %struct.ice_buf_hdr*, %struct.ice_buf_hdr** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %14, align 8
  %51 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %47, %struct.ice_aq_desc* %16, %struct.ice_buf_hdr* %48, i32 %49, %struct.ice_sq_cd* %50)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* @ICE_ERR_AQ_ERROR, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %46
  %56 = load %struct.ice_buf_hdr*, %struct.ice_buf_hdr** %9, align 8
  %57 = bitcast %struct.ice_buf_hdr* %56 to %struct.ice_aqc_download_pkg_resp*
  store %struct.ice_aqc_download_pkg_resp* %57, %struct.ice_aqc_download_pkg_resp** %18, align 8
  %58 = load i64*, i64** %12, align 8
  %59 = icmp ne i64* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.ice_aqc_download_pkg_resp*, %struct.ice_aqc_download_pkg_resp** %18, align 8
  %62 = getelementptr inbounds %struct.ice_aqc_download_pkg_resp, %struct.ice_aqc_download_pkg_resp* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @le32_to_cpu(i32 %63)
  %65 = load i64*, i64** %12, align 8
  store i64 %64, i64* %65, align 8
  br label %66

66:                                               ; preds = %60, %55
  %67 = load i64*, i64** %13, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.ice_aqc_download_pkg_resp*, %struct.ice_aqc_download_pkg_resp** %18, align 8
  %71 = getelementptr inbounds %struct.ice_aqc_download_pkg_resp, %struct.ice_aqc_download_pkg_resp* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @le32_to_cpu(i32 %72)
  %74 = load i64*, i64** %13, align 8
  store i64 %73, i64* %74, align 8
  br label %75

75:                                               ; preds = %69, %66
  br label %76

76:                                               ; preds = %75, %46
  %77 = load i32, i32* %17, align 4
  ret i32 %77
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, %struct.ice_buf_hdr*, i32, %struct.ice_sq_cd*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
