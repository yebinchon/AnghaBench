; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c_hl_mmu_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_mmu.c_hl_mmu_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_ctx = type { %struct.hl_device* }
%struct.hl_device = type { i32, i32 }

@PAGE_SIZE_2MB = common dso_local global i32 0, align 4
@PAGE_SIZE_4KB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"page size of %u is not 4KB nor 2MB aligned, can't unmap\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_mmu_unmap(%struct.hl_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hl_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hl_ctx* %0, %struct.hl_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.hl_ctx, %struct.hl_ctx* %14, i32 0, i32 0
  %16 = load %struct.hl_device*, %struct.hl_device** %15, align 8
  store %struct.hl_device* %16, %struct.hl_device** %8, align 8
  %17 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %18 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %70

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @PAGE_SIZE_2MB, align 4
  %25 = srem i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @PAGE_SIZE_2MB, align 4
  store i32 %28, i32* %10, align 4
  br label %45

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @PAGE_SIZE_4KB, align 4
  %32 = srem i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @PAGE_SIZE_4KB, align 4
  store i32 %35, i32* %10, align 4
  br label %44

36:                                               ; preds = %29
  %37 = load %struct.hl_device*, %struct.hl_device** %8, align 8
  %38 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %70

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %27
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sdiv i32 %46, %47
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %66, %45
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load %struct.hl_ctx*, %struct.hl_ctx** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @_hl_mmu_unmap(%struct.hl_ctx* %55, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %4, align 4
  br label %70

62:                                               ; preds = %54
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %50

69:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %60, %36, %21
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @_hl_mmu_unmap(%struct.hl_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
