; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils_fw2x.c_aq_fw2x_get_mac_permanent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils_fw2x.c_aq_fw2x_get_mac_permanent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }

@HW_ATL_FW2X_MPI_EFUSE_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, i32*)* @aq_fw2x_get_mac_permanent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_fw2x_get_mac_permanent(%struct.aq_hw_s* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aq_hw_s*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [2 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %12 = bitcast [2 x i64]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 16, i1 false)
  %13 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %14 = load i32, i32* @HW_ATL_FW2X_MPI_EFUSE_ADDR, align 4
  %15 = call i64 @aq_hw_read_reg(%struct.aq_hw_s* %13, i32 %14)
  store i64 %15, i64* %10, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %2
  %19 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %20 = load i64, i64* %10, align 8
  %21 = add nsw i64 %20, 160
  %22 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %24 = call i32 @ARRAY_SIZE(i64* %23)
  %25 = call i32 @hw_atl_utils_fw_downld_dwords(%struct.aq_hw_s* %19, i64 %21, i64* %22, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %108

30:                                               ; preds = %18
  %31 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %32 = load i64, i64* %31, align 16
  %33 = call i64 @__swab32(i64 %32)
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64 %33, i64* %34, align 16
  %35 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @__swab32(i64 %36)
  %38 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 1
  store i64 %37, i64* %38, align 8
  br label %39

39:                                               ; preds = %30, %2
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %42 = bitcast i64* %41 to i32*
  %43 = call i32 @ether_addr_copy(i32* %40, i32* %42)
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %62, label %49

49:                                               ; preds = %39
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %52, %55
  %57 = load i32*, i32** %5, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %56, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %106

62:                                               ; preds = %49, %39
  store i32 0, i32* %11, align 4
  %63 = call i32 @get_random_bytes(i32* %11, i32 4)
  %64 = load i32, i32* %11, align 4
  %65 = and i32 65535, %64
  %66 = or i32 -486539264, %65
  %67 = zext i32 %66 to i64
  store i64 %67, i64* %8, align 8
  store i64 2147561486, i64* %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = and i64 255, %68
  %70 = trunc i64 %69 to i32
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 5
  store i32 %70, i32* %72, align 4
  %73 = load i64, i64* %8, align 8
  %74 = ashr i64 %73, 8
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %8, align 8
  %76 = and i64 255, %75
  %77 = trunc i64 %76 to i32
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 4
  store i32 %77, i32* %79, align 4
  %80 = load i64, i64* %8, align 8
  %81 = ashr i64 %80, 8
  store i64 %81, i64* %8, align 8
  %82 = load i64, i64* %8, align 8
  %83 = and i64 255, %82
  %84 = trunc i64 %83 to i32
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  store i32 %84, i32* %86, align 4
  %87 = load i64, i64* %8, align 8
  %88 = ashr i64 %87, 8
  store i64 %88, i64* %8, align 8
  %89 = load i64, i64* %8, align 8
  %90 = and i64 255, %89
  %91 = trunc i64 %90 to i32
  %92 = load i32*, i32** %5, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  store i32 %91, i32* %93, align 4
  %94 = load i64, i64* %7, align 8
  %95 = and i64 255, %94
  %96 = trunc i64 %95 to i32
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 %96, i32* %98, align 4
  %99 = load i64, i64* %7, align 8
  %100 = ashr i64 %99, 8
  store i64 %100, i64* %7, align 8
  %101 = load i64, i64* %7, align 8
  %102 = and i64 255, %101
  %103 = trunc i64 %102 to i32
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %62, %49
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %28
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @aq_hw_read_reg(%struct.aq_hw_s*, i32) #2

declare dso_local i32 @hw_atl_utils_fw_downld_dwords(%struct.aq_hw_s*, i64, i64*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i64*) #2

declare dso_local i64 @__swab32(i64) #2

declare dso_local i32 @ether_addr_copy(i32*, i32*) #2

declare dso_local i32 @get_random_bytes(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
