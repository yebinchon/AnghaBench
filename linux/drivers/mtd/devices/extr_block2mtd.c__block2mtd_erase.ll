; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_block2mtd.c__block2mtd_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_block2mtd.c__block2mtd_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block2mtd_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block2mtd_dev*, i64, i64)* @_block2mtd_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_block2mtd_erase(%struct.block2mtd_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.block2mtd_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  store %struct.block2mtd_dev* %0, %struct.block2mtd_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %5, align 8
  %15 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.address_space*, %struct.address_space** %19, align 8
  store %struct.address_space* %20, %struct.address_space** %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = lshr i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @PAGE_SHIFT, align 8
  %27 = lshr i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %75, %3
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %82

32:                                               ; preds = %29
  %33 = load %struct.address_space*, %struct.address_space** %8, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call %struct.page* @page_read(%struct.address_space* %33, i32 %34)
  store %struct.page* %35, %struct.page** %9, align 8
  %36 = load %struct.page*, %struct.page** %9, align 8
  %37 = call i64 @IS_ERR(%struct.page* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.page*, %struct.page** %9, align 8
  %41 = call i32 @PTR_ERR(%struct.page* %40)
  store i32 %41, i32* %4, align 4
  br label %83

42:                                               ; preds = %32
  %43 = load %struct.page*, %struct.page** %9, align 8
  %44 = call i64* @page_address(%struct.page* %43)
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64* %47, i64** %13, align 8
  %48 = load %struct.page*, %struct.page** %9, align 8
  %49 = call i64* @page_address(%struct.page* %48)
  store i64* %49, i64** %12, align 8
  br label %50

50:                                               ; preds = %72, %42
  %51 = load i64*, i64** %12, align 8
  %52 = load i64*, i64** %13, align 8
  %53 = icmp ult i64* %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = load i64*, i64** %12, align 8
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, -1
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = load %struct.page*, %struct.page** %9, align 8
  %60 = call i32 @lock_page(%struct.page* %59)
  %61 = load %struct.page*, %struct.page** %9, align 8
  %62 = call i64* @page_address(%struct.page* %61)
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = call i32 @memset(i64* %62, i32 255, i32 %63)
  %65 = load %struct.page*, %struct.page** %9, align 8
  %66 = call i32 @set_page_dirty(%struct.page* %65)
  %67 = load %struct.page*, %struct.page** %9, align 8
  %68 = call i32 @unlock_page(%struct.page* %67)
  %69 = load %struct.address_space*, %struct.address_space** %8, align 8
  %70 = call i32 @balance_dirty_pages_ratelimited(%struct.address_space* %69)
  br label %75

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71
  %73 = load i64*, i64** %12, align 8
  %74 = getelementptr inbounds i64, i64* %73, i32 1
  store i64* %74, i64** %12, align 8
  br label %50

75:                                               ; preds = %58, %50
  %76 = load %struct.page*, %struct.page** %9, align 8
  %77 = call i32 @put_page(%struct.page* %76)
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %29

82:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %39
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.page* @page_read(%struct.address_space*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64* @page_address(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @balance_dirty_pages_ratelimited(%struct.address_space*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
