; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_get_mac_permanent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_get_mac_permanent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }

@HW_ATL_UCP_0X370_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hw_atl_utils_get_mac_permanent(%struct.aq_hw_s* %0, i32* %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %12 = load i32, i32* @HW_ATL_UCP_0X370_REG, align 4
  %13 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = call i32 @get_random_bytes(i32* %9, i32 4)
  %17 = load i32, i32* %9, align 4
  %18 = and i32 -16843010, %17
  %19 = or i32 33686018, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %21 = load i32, i32* @HW_ATL_UCP_0X370_REG, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %15, %2
  %25 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %26 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %27 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %26, i32 884)
  %28 = add i32 %27, 160
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  %32 = call i32 @hw_atl_utils_fw_downld_dwords(%struct.aq_hw_s* %25, i32 %28, i32* %29, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %37, align 4
  store i32 0, i32* %5, align 4
  br label %47

38:                                               ; preds = %24
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @__swab32(i32 %40)
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @__swab32(i32 %44)
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %38, %35
  %48 = load i32*, i32** %4, align 8
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %50 = call i32 @ether_addr_copy(i32* %48, i32* %49)
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %47
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %4, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %59, %62
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %107

69:                                               ; preds = %56, %47
  %70 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %71 = load i32, i32* @HW_ATL_UCP_0X370_REG, align 4
  %72 = call i32 @aq_hw_read_reg(%struct.aq_hw_s* %70, i32 %71)
  %73 = and i32 65535, %72
  %74 = or i32 -486539264, %73
  store i32 %74, i32* %7, align 4
  store i32 -2147405810, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = and i32 255, %75
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 5
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %7, align 4
  %80 = ashr i32 %79, 8
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = and i32 255, %81
  %83 = load i32*, i32** %4, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %7, align 4
  %86 = ashr i32 %85, 8
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = and i32 255, %87
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %7, align 4
  %92 = ashr i32 %91, 8
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = and i32 255, %93
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %6, align 4
  %98 = and i32 255, %97
  %99 = load i32*, i32** %4, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %6, align 4
  %102 = ashr i32 %101, 8
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = and i32 255, %103
  %105 = load i32*, i32** %4, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %69, %56
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @aq_hw_read_reg(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @aq_hw_write_reg(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_utils_fw_downld_dwords(%struct.aq_hw_s*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @__swab32(i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
