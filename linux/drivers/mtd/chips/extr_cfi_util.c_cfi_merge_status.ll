; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_util.c_cfi_merge_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/chips/extr_cfi_util.c_cfi_merge_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }
%struct.cfi_private = type { i32 }
%struct.TYPE_3__ = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cfi_merge_status(i64* %0, %struct.map_info* %1, %struct.cfi_private* %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca %struct.map_info*, align 8
  %6 = alloca %struct.cfi_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i64* %0, i64** %14, align 8
  store %struct.map_info* %1, %struct.map_info** %5, align 8
  store %struct.cfi_private* %2, %struct.cfi_private** %6, align 8
  store i64 0, i64* %12, align 8
  %15 = load %struct.map_info*, %struct.map_info** %5, align 8
  %16 = call i64 @map_bankwidth_is_large(%struct.map_info* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  store i32 8, i32* %7, align 4
  %19 = load %struct.map_info*, %struct.map_info** %5, align 8
  %20 = call i32 @map_bankwidth(%struct.map_info* %19)
  %21 = load i32, i32* %7, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %8, align 4
  br label %26

23:                                               ; preds = %3
  %24 = load %struct.map_info*, %struct.map_info** %5, align 8
  %25 = call i32 @map_bankwidth(%struct.map_info* %24)
  store i32 %25, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.map_info*, %struct.map_info** %5, align 8
  %28 = call i32 @map_bankwidth(%struct.map_info* %27)
  %29 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %30 = call i32 @cfi_interleave(%struct.cfi_private* %29)
  %31 = sdiv i32 %28, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.cfi_private*, %struct.cfi_private** %6, align 8
  %34 = call i32 @cfi_interleave(%struct.cfi_private* %33)
  %35 = mul nsw i32 %32, %34
  %36 = load %struct.map_info*, %struct.map_info** %5, align 8
  %37 = call i32 @map_bankwidth(%struct.map_info* %36)
  %38 = sdiv i32 %35, %37
  store i32 %38, i32* %10, align 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %11, align 8
  store i32 1, i32* %13, align 4
  br label %43

43:                                               ; preds = %56, %26
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %11, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %11, align 8
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %43

59:                                               ; preds = %43
  %60 = load i64, i64* %11, align 8
  store i64 %60, i64* %12, align 8
  %61 = load i32, i32* %10, align 4
  switch i32 %61, label %62 [
    i32 4, label %64
    i32 2, label %72
    i32 1, label %80
  ]

62:                                               ; preds = %59
  %63 = call i32 (...) @BUG()
  br label %64

64:                                               ; preds = %59, %62
  %65 = load i64, i64* %11, align 8
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 %66, 16
  %68 = zext i32 %67 to i64
  %69 = lshr i64 %65, %68
  %70 = load i64, i64* %12, align 8
  %71 = or i64 %70, %69
  store i64 %71, i64* %12, align 8
  br label %72

72:                                               ; preds = %59, %64
  %73 = load i64, i64* %11, align 8
  %74 = load i32, i32* %9, align 4
  %75 = mul nsw i32 %74, 8
  %76 = zext i32 %75 to i64
  %77 = lshr i64 %73, %76
  %78 = load i64, i64* %12, align 8
  %79 = or i64 %78, %77
  store i64 %79, i64* %12, align 8
  br label %80

80:                                               ; preds = %59, %72
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  switch i32 %82, label %92 [
    i32 1, label %83
    i32 2, label %84
    i32 4, label %88
  ]

83:                                               ; preds = %81
  br label %94

84:                                               ; preds = %81
  %85 = load %struct.map_info*, %struct.map_info** %5, align 8
  %86 = load i64, i64* %12, align 8
  %87 = call i64 @cfi16_to_cpu(%struct.map_info* %85, i64 %86)
  store i64 %87, i64* %12, align 8
  br label %94

88:                                               ; preds = %81
  %89 = load %struct.map_info*, %struct.map_info** %5, align 8
  %90 = load i64, i64* %12, align 8
  %91 = call i64 @cfi32_to_cpu(%struct.map_info* %89, i64 %90)
  store i64 %91, i64* %12, align 8
  br label %94

92:                                               ; preds = %81
  %93 = call i32 (...) @BUG()
  br label %94

94:                                               ; preds = %92, %88, %84, %83
  %95 = load i64, i64* %12, align 8
  ret i64 %95
}

declare dso_local i64 @map_bankwidth_is_large(%struct.map_info*) #1

declare dso_local i32 @map_bankwidth(%struct.map_info*) #1

declare dso_local i32 @cfi_interleave(%struct.cfi_private*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @cfi16_to_cpu(%struct.map_info*, i64) #1

declare dso_local i64 @cfi32_to_cpu(%struct.map_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
