; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mtdram.c_ram_point.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mtdram.c_ram_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i8* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i64, i64*, i8**, i64*)* @ram_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ram_point(%struct.mtd_info* %0, i32 %1, i64 %2, i64* %3, i8** %4, i64* %5) #0 {
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i8** %4, i8*** %11, align 8
  store i64* %5, i64** %12, align 8
  %17 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr i8, i8* %19, i64 %21
  %23 = load i8**, i8*** %11, align 8
  store i8* %22, i8** %23, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64*, i64** %10, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i64*, i64** %12, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %77

28:                                               ; preds = %6
  %29 = load i8**, i8*** %11, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @offset_in_page(i8* %30)
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %13, align 8
  %33 = load i8**, i8*** %11, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i64, i64* %13, align 8
  %36 = sub i64 0, %35
  %37 = getelementptr i8, i8* %34, i64 %36
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** %14, align 8
  %39 = call i64 @vmalloc_to_pfn(i8* %38)
  store i64 %39, i64* %16, align 8
  %40 = load i64, i64* %16, align 8
  %41 = call i32 @__pfn_to_phys(i64 %40)
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %13, align 8
  %44 = add i64 %42, %43
  %45 = load i64*, i64** %12, align 8
  store i64 %44, i64* %45, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* %9, align 8
  %48 = add i64 %47, %46
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %75, %28
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @PAGE_SIZE, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %49
  %54 = load i64, i64* @PAGE_SIZE, align 8
  %55 = load i64, i64* %9, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* @PAGE_SIZE, align 8
  %58 = load i8*, i8** %14, align 8
  %59 = getelementptr i8, i8* %58, i64 %57
  store i8* %59, i8** %14, align 8
  %60 = load i64, i64* %16, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %16, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = call i64 @vmalloc_to_pfn(i8* %62)
  store i64 %63, i64* %15, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* %16, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %53
  %68 = load i8*, i8** %14, align 8
  %69 = load i8**, i8*** %11, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = ptrtoint i8* %68 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = load i64*, i64** %10, align 8
  store i64 %73, i64* %74, align 8
  br label %76

75:                                               ; preds = %53
  br label %49

76:                                               ; preds = %67, %49
  br label %77

77:                                               ; preds = %76, %6
  ret i32 0
}

declare dso_local i32 @offset_in_page(i8*) #1

declare dso_local i64 @vmalloc_to_pfn(i8*) #1

declare dso_local i32 @__pfn_to_phys(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
