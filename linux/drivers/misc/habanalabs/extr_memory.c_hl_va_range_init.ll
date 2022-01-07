; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_hl_va_range_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_hl_va_range_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.hl_va_range = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"too small vm range for va list\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to init host va list\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_va_range*, i32, i32)* @hl_va_range_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hl_va_range_init(%struct.hl_device* %0, %struct.hl_va_range* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hl_device*, align 8
  %7 = alloca %struct.hl_va_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %6, align 8
  store %struct.hl_va_range* %1, %struct.hl_va_range** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.hl_va_range*, %struct.hl_va_range** %7, align 8
  %12 = getelementptr inbounds %struct.hl_va_range, %struct.hl_va_range* %11, i32 0, i32 2
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load i32, i32* @PAGE_MASK, align 4
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %26

26:                                               ; preds = %19, %4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = sub nsw i32 %28, 1
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* @PAGE_MASK, align 4
  %34 = load i32, i32* %9, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %32, %26
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %42 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EFAULT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %68

47:                                               ; preds = %36
  %48 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %49 = load %struct.hl_va_range*, %struct.hl_va_range** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @add_va_block(%struct.hl_device* %48, %struct.hl_va_range* %49, i32 %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %57 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %5, align 4
  br label %68

61:                                               ; preds = %47
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.hl_va_range*, %struct.hl_va_range** %7, align 8
  %64 = getelementptr inbounds %struct.hl_va_range, %struct.hl_va_range* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.hl_va_range*, %struct.hl_va_range** %7, align 8
  %67 = getelementptr inbounds %struct.hl_va_range, %struct.hl_va_range* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %61, %55, %40
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @add_va_block(%struct.hl_device*, %struct.hl_va_range*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
