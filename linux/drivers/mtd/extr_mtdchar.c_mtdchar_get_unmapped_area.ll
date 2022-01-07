; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdchar.c_mtdchar_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdchar.c_mtdchar_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.mtd_file_info* }
%struct.mtd_file_info = type { %struct.mtd_info* }
%struct.mtd_info = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i64, i64, i64)* @mtdchar_get_unmapped_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mtdchar_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mtd_file_info*, align 8
  %13 = alloca %struct.mtd_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.file*, %struct.file** %7, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.mtd_file_info*, %struct.mtd_file_info** %17, align 8
  store %struct.mtd_file_info* %18, %struct.mtd_file_info** %12, align 8
  %19 = load %struct.mtd_file_info*, %struct.mtd_file_info** %12, align 8
  %20 = getelementptr inbounds %struct.mtd_file_info, %struct.mtd_file_info* %19, i32 0, i32 0
  %21 = load %struct.mtd_info*, %struct.mtd_info** %20, align 8
  store %struct.mtd_info* %21, %struct.mtd_info** %13, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* %6, align 8
  br label %76

27:                                               ; preds = %5
  %28 = load i64, i64* %9, align 8
  %29 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %30 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ugt i64 %28, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %27
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PAGE_SHIFT, align 8
  %39 = lshr i64 %37, %38
  %40 = icmp uge i64 %34, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33, %27
  %42 = load i64, i64* @EINVAL, align 8
  %43 = sub nsw i64 0, %42
  store i64 %43, i64* %6, align 8
  br label %76

44:                                               ; preds = %33
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @PAGE_SHIFT, align 8
  %47 = shl i64 %45, %46
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %50 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = sub i64 %51, %52
  %54 = icmp ugt i64 %48, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %44
  %56 = load i64, i64* @EINVAL, align 8
  %57 = sub nsw i64 0, %56
  store i64 %57, i64* %6, align 8
  br label %76

58:                                               ; preds = %44
  %59 = load %struct.mtd_info*, %struct.mtd_info** %13, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @mtd_get_unmapped_area(%struct.mtd_info* %59, i64 %60, i64 %61, i64 %62)
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @EOPNOTSUPP, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i64, i64* @ENODEV, align 8
  %70 = sub i64 0, %69
  br label %74

71:                                               ; preds = %58
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  br label %74

74:                                               ; preds = %71, %68
  %75 = phi i64 [ %70, %68 ], [ %73, %71 ]
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %74, %55, %41, %24
  %77 = load i64, i64* %6, align 8
  ret i64 %77
}

declare dso_local i32 @mtd_get_unmapped_area(%struct.mtd_info*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
