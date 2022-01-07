; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_vf.c_fm10k_stop_hw_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_vf.c_fm10k_stop_hw_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64* }

@FM10K_ERR_REQUESTS_PENDING = common dso_local global i64 0, align 8
@FM10K_TDLEN_ITR_SCALE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fm10k_hw*)* @fm10k_stop_hw_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fm10k_stop_hw_vf(%struct.fm10k_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fm10k_hw*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %3, align 8
  %10 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %11 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i64*, i64** %12, align 8
  store i64* %13, i64** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %15 = call i64 @fm10k_stop_hw_generic(%struct.fm10k_hw* %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %8, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @FM10K_ERR_REQUESTS_PENDING, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %2, align 8
  br label %108

24:                                               ; preds = %18, %1
  %25 = load i64*, i64** %4, align 8
  %26 = call i64 @is_valid_ether_addr(i64* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %24
  %29 = load i64*, i64** %4, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 3
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = shl i32 %32, 24
  %34 = load i64*, i64** %4, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 4
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = shl i32 %37, 16
  %39 = or i32 %33, %38
  %40 = load i64*, i64** %4, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 5
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = shl i32 %43, 8
  %45 = or i32 %39, %44
  store i32 %45, i32* %5, align 4
  %46 = load i64*, i64** %4, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = shl i32 %49, 16
  %51 = or i32 -16777216, %50
  %52 = load i64*, i64** %4, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = shl i32 %55, 8
  %57 = or i32 %51, %56
  %58 = load i64*, i64** %4, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 2
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  %62 = or i32 %57, %61
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %28, %24
  %64 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %65 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @FM10K_TDLEN_ITR_SCALE_SHIFT, align 4
  %69 = shl i32 %67, %68
  store i32 %69, i32* %7, align 4
  store i64 0, i64* %9, align 8
  br label %70

70:                                               ; preds = %103, %63
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %73 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %71, %75
  br i1 %76, label %77, label %106

77:                                               ; preds = %70
  %78 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @FM10K_TDBAL(i64 %79)
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %78, i32 %80, i32 %81)
  %83 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @FM10K_TDBAH(i64 %84)
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %83, i32 %85, i32 %86)
  %88 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @FM10K_RDBAL(i64 %89)
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %88, i32 %90, i32 %91)
  %93 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @FM10K_RDBAH(i64 %94)
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %93, i32 %95, i32 %96)
  %98 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @FM10K_TDLEN(i64 %99)
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %98, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %77
  %104 = load i64, i64* %9, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %9, align 8
  br label %70

106:                                              ; preds = %70
  %107 = load i64, i64* %8, align 8
  store i64 %107, i64* %2, align 8
  br label %108

108:                                              ; preds = %106, %22
  %109 = load i64, i64* %2, align 8
  ret i64 %109
}

declare dso_local i64 @fm10k_stop_hw_generic(%struct.fm10k_hw*) #1

declare dso_local i64 @is_valid_ether_addr(i64*) #1

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i32) #1

declare dso_local i32 @FM10K_TDBAL(i64) #1

declare dso_local i32 @FM10K_TDBAH(i64) #1

declare dso_local i32 @FM10K_RDBAL(i64) #1

declare dso_local i32 @FM10K_RDBAH(i64) #1

declare dso_local i32 @FM10K_TDLEN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
