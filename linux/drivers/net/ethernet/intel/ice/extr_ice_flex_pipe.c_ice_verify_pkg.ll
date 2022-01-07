; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_verify_pkg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_verify_pkg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pkg_hdr = type { i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.ice_generic_seg_hdr = type { i32 }

@ICE_ERR_BUF_TOO_SHORT = common dso_local global i32 0, align 4
@ICE_PKG_FMT_VER_MAJ = common dso_local global i64 0, align 8
@ICE_PKG_FMT_VER_MNR = common dso_local global i64 0, align 8
@ICE_PKG_FMT_VER_UPD = common dso_local global i64 0, align 8
@ICE_PKG_FMT_VER_DFT = common dso_local global i64 0, align 8
@ICE_ERR_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_pkg_hdr*, i32)* @ice_verify_pkg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_verify_pkg(%struct.ice_pkg_hdr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_pkg_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ice_generic_seg_hdr*, align 8
  store %struct.ice_pkg_hdr* %0, %struct.ice_pkg_hdr** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 48
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ICE_ERR_BUF_TOO_SHORT, align 4
  store i32 %14, i32* %3, align 4
  br label %109

15:                                               ; preds = %2
  %16 = load %struct.ice_pkg_hdr*, %struct.ice_pkg_hdr** %4, align 8
  %17 = getelementptr inbounds %struct.ice_pkg_hdr, %struct.ice_pkg_hdr* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ICE_PKG_FMT_VER_MAJ, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %43, label %22

22:                                               ; preds = %15
  %23 = load %struct.ice_pkg_hdr*, %struct.ice_pkg_hdr** %4, align 8
  %24 = getelementptr inbounds %struct.ice_pkg_hdr, %struct.ice_pkg_hdr* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ICE_PKG_FMT_VER_MNR, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %43, label %29

29:                                               ; preds = %22
  %30 = load %struct.ice_pkg_hdr*, %struct.ice_pkg_hdr** %4, align 8
  %31 = getelementptr inbounds %struct.ice_pkg_hdr, %struct.ice_pkg_hdr* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ICE_PKG_FMT_VER_UPD, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load %struct.ice_pkg_hdr*, %struct.ice_pkg_hdr** %4, align 8
  %38 = getelementptr inbounds %struct.ice_pkg_hdr, %struct.ice_pkg_hdr* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ICE_PKG_FMT_VER_DFT, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36, %29, %22, %15
  %44 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %44, i32* %3, align 4
  br label %109

45:                                               ; preds = %36
  %46 = load %struct.ice_pkg_hdr*, %struct.ice_pkg_hdr** %4, align 8
  %47 = getelementptr inbounds %struct.ice_pkg_hdr, %struct.ice_pkg_hdr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @le32_to_cpu(i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @ICE_ERR_CFG, align 4
  store i32 %53, i32* %3, align 4
  br label %109

54:                                               ; preds = %45
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = load i32, i32* %6, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 8
  %61 = add i64 48, %60
  %62 = icmp ult i64 %56, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* @ICE_ERR_BUF_TOO_SHORT, align 4
  store i32 %64, i32* %3, align 4
  br label %109

65:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %105, %65
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %108

70:                                               ; preds = %66
  %71 = load %struct.ice_pkg_hdr*, %struct.ice_pkg_hdr** %4, align 8
  %72 = getelementptr inbounds %struct.ice_pkg_hdr, %struct.ice_pkg_hdr* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, 4
  %84 = icmp ult i64 %80, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %70
  %86 = load i32, i32* @ICE_ERR_BUF_TOO_SHORT, align 4
  store i32 %86, i32* %3, align 4
  br label %109

87:                                               ; preds = %70
  %88 = load %struct.ice_pkg_hdr*, %struct.ice_pkg_hdr** %4, align 8
  %89 = bitcast %struct.ice_pkg_hdr* %88 to i32*
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = bitcast i32* %92 to %struct.ice_generic_seg_hdr*
  store %struct.ice_generic_seg_hdr* %93, %struct.ice_generic_seg_hdr** %9, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.ice_generic_seg_hdr*, %struct.ice_generic_seg_hdr** %9, align 8
  %97 = getelementptr inbounds %struct.ice_generic_seg_hdr, %struct.ice_generic_seg_hdr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le32_to_cpu(i32 %98)
  %100 = add nsw i32 %95, %99
  %101 = icmp slt i32 %94, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %87
  %103 = load i32, i32* @ICE_ERR_BUF_TOO_SHORT, align 4
  store i32 %103, i32* %3, align 4
  br label %109

104:                                              ; preds = %87
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %66

108:                                              ; preds = %66
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %102, %85, %63, %52, %43, %13
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
