; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_fw_ver_patch_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_fw_ver_patch_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfi_ioc_image_hdr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@BFI_IOC_IMG_VER_INCOMP = common dso_local global i32 0, align 4
@BFI_IOC_IMG_VER_BETTER = common dso_local global i32 0, align 4
@BFI_IOC_IMG_VER_OLD = common dso_local global i32 0, align 4
@BFI_IOC_IMG_VER_SAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr*)* @bfa_ioc_fw_ver_patch_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioc_fw_ver_patch_cmp(%struct.bfi_ioc_image_hdr* %0, %struct.bfi_ioc_image_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfi_ioc_image_hdr*, align 8
  %5 = alloca %struct.bfi_ioc_image_hdr*, align 8
  store %struct.bfi_ioc_image_hdr* %0, %struct.bfi_ioc_image_hdr** %4, align 8
  store %struct.bfi_ioc_image_hdr* %1, %struct.bfi_ioc_image_hdr** %5, align 8
  %6 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %4, align 8
  %7 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %5, align 8
  %8 = call i32 @bfa_ioc_fw_ver_compatible(%struct.bfi_ioc_image_hdr* %6, %struct.bfi_ioc_image_hdr* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @BFI_IOC_IMG_VER_INCOMP, align 4
  store i32 %11, i32* %3, align 4
  br label %108

12:                                               ; preds = %2
  %13 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %5, align 8
  %14 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %4, align 8
  %18 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* @BFI_IOC_IMG_VER_BETTER, align 4
  store i32 %23, i32* %3, align 4
  br label %108

24:                                               ; preds = %12
  %25 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %5, align 8
  %26 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %4, align 8
  %30 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %28, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @BFI_IOC_IMG_VER_OLD, align 4
  store i32 %35, i32* %3, align 4
  br label %108

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %4, align 8
  %39 = call i64 @fwhdr_is_ga(%struct.bfi_ioc_image_hdr* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %5, align 8
  %43 = call i64 @fwhdr_is_ga(%struct.bfi_ioc_image_hdr* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @BFI_IOC_IMG_VER_SAME, align 4
  store i32 %46, i32* %3, align 4
  br label %108

47:                                               ; preds = %41
  %48 = load i32, i32* @BFI_IOC_IMG_VER_OLD, align 4
  store i32 %48, i32* %3, align 4
  br label %108

49:                                               ; preds = %37
  %50 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %5, align 8
  %51 = call i64 @fwhdr_is_ga(%struct.bfi_ioc_image_hdr* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @BFI_IOC_IMG_VER_BETTER, align 4
  store i32 %54, i32* %3, align 4
  br label %108

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %5, align 8
  %58 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %4, align 8
  %62 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %60, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* @BFI_IOC_IMG_VER_BETTER, align 4
  store i32 %67, i32* %3, align 4
  br label %108

68:                                               ; preds = %56
  %69 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %5, align 8
  %70 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %4, align 8
  %74 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %72, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* @BFI_IOC_IMG_VER_OLD, align 4
  store i32 %79, i32* %3, align 4
  br label %108

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %5, align 8
  %83 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %4, align 8
  %87 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %85, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* @BFI_IOC_IMG_VER_BETTER, align 4
  store i32 %92, i32* %3, align 4
  br label %108

93:                                               ; preds = %81
  %94 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %5, align 8
  %95 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %4, align 8
  %99 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %97, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = load i32, i32* @BFI_IOC_IMG_VER_OLD, align 4
  store i32 %104, i32* %3, align 4
  br label %108

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* @BFI_IOC_IMG_VER_SAME, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %103, %91, %78, %66, %53, %47, %45, %34, %22, %10
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @bfa_ioc_fw_ver_compatible(%struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr*) #1

declare dso_local i64 @fwhdr_is_ga(%struct.bfi_ioc_image_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
