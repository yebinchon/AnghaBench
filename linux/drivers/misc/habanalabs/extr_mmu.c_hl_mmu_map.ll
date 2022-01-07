; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c_hl_mmu_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c_hl_mmu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_ctx = type { %struct.hl_device* }
%struct.hl_device = type { i32, i32 }

@PAGE_SIZE_2MB = common dso_local global i32 0, align 4
@PAGE_SIZE_4KB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"page size of %u is not 4KB nor 2MB aligned, can't map\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [91 x i8] c"Mapping 0x%llx with page size of 0x%x is erroneous! Address must be divisible by page size\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to unmap va: 0x%llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_mmu_map(%struct.hl_ctx* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hl_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hl_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hl_ctx* %0, %struct.hl_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %18, i32 0, i32 0
  %20 = load %struct.hl_device*, %struct.hl_device** %19, align 8
  store %struct.hl_device* %20, %struct.hl_device** %10, align 8
  store i32 0, i32* %17, align 4
  %21 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %22 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %114

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @PAGE_SIZE_2MB, align 4
  %29 = srem i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @PAGE_SIZE_2MB, align 4
  store i32 %32, i32* %13, align 4
  br label %49

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @PAGE_SIZE_4KB, align 4
  %36 = srem i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @PAGE_SIZE_4KB, align 4
  store i32 %39, i32* %13, align 4
  br label %48

40:                                               ; preds = %33
  %41 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %42 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EFAULT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %114

48:                                               ; preds = %38
  br label %49

49:                                               ; preds = %48, %31
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %13, align 4
  %52 = sub nsw i32 %51, 1
  %53 = and i32 %50, %52
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @WARN_ONCE(i32 %53, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55)
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %13, align 4
  %59 = sdiv i32 %57, %58
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %62

62:                                               ; preds = %84, %49
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %62
  %67 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @_hl_mmu_map(%struct.hl_ctx* %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %88

75:                                               ; preds = %66
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %17, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %17, align 4
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %15, align 4
  br label %62

87:                                               ; preds = %62
  store i32 0, i32* %5, align 4
  br label %114

88:                                               ; preds = %74
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %90

90:                                               ; preds = %109, %88
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %17, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %90
  %95 = load %struct.hl_ctx*, %struct.hl_ctx** %6, align 8
  %96 = load i32, i32* %11, align 4
  %97 = call i64 @_hl_mmu_unmap(%struct.hl_ctx* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %101 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @dev_warn_ratelimited(i32 %102, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %99, %94
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %105
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %15, align 4
  br label %90

112:                                              ; preds = %90
  %113 = load i32, i32* %16, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %112, %87, %40, %25
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i32) #1

declare dso_local i32 @_hl_mmu_map(%struct.hl_ctx*, i32, i32, i32) #1

declare dso_local i64 @_hl_mmu_unmap(%struct.hl_ctx*, i32) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
