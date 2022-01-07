; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_block2mtd.c_block2mtd_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_block2mtd.c_block2mtd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.block2mtd_dev* }
%struct.block2mtd_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i64, i64*, i32*)* @block2mtd_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block2mtd_read(%struct.mtd_info* %0, i32 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.block2mtd_dev*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %18, align 8
  store %struct.block2mtd_dev* %19, %struct.block2mtd_dev** %12, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %23, %25
  store i32 %26, i32* %15, align 4
  br label %27

27:                                               ; preds = %84, %5
  %28 = load i64, i64* %9, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %91

30:                                               ; preds = %27
  %31 = load i32, i32* %15, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %32, %33
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ugt i64 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = load i32, i32* %15, align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %16, align 4
  br label %45

42:                                               ; preds = %30
  %43 = load i64, i64* %9, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %16, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i64, i64* %9, align 8
  %47 = load i32, i32* %16, align 4
  %48 = sext i32 %47 to i64
  %49 = sub i64 %46, %48
  store i64 %49, i64* %9, align 8
  %50 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %12, align 8
  %51 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %14, align 4
  %58 = call %struct.page* @page_read(i32 %56, i32 %57)
  store %struct.page* %58, %struct.page** %13, align 8
  %59 = load %struct.page*, %struct.page** %13, align 8
  %60 = call i64 @IS_ERR(%struct.page* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %45
  %63 = load %struct.page*, %struct.page** %13, align 8
  %64 = call i32 @PTR_ERR(%struct.page* %63)
  store i32 %64, i32* %6, align 4
  br label %92

65:                                               ; preds = %45
  %66 = load i32*, i32** %11, align 8
  %67 = load %struct.page*, %struct.page** %13, align 8
  %68 = call i64 @page_address(%struct.page* %67)
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @memcpy(i32* %66, i64 %71, i32 %72)
  %74 = load %struct.page*, %struct.page** %13, align 8
  %75 = call i32 @put_page(%struct.page* %74)
  %76 = load i64*, i64** %10, align 8
  %77 = icmp ne i64* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %65
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64*, i64** %10, align 8
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, %80
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %78, %65
  %85 = load i32, i32* %16, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %11, align 8
  store i32 0, i32* %15, align 4
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %14, align 4
  br label %27

91:                                               ; preds = %27
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %91, %62
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local %struct.page* @page_read(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
