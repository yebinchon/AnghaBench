; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_block2mtd.c__block2mtd_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_block2mtd.c__block2mtd_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block2mtd_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block2mtd_dev*, i32*, i32, i64, i64*)* @_block2mtd_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_block2mtd_write(%struct.block2mtd_dev* %0, i32* %1, i32 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.block2mtd_dev*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.address_space*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.block2mtd_dev* %0, %struct.block2mtd_dev** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load %struct.block2mtd_dev*, %struct.block2mtd_dev** %7, align 8
  %18 = getelementptr inbounds %struct.block2mtd_dev, %struct.block2mtd_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.address_space*, %struct.address_space** %22, align 8
  store %struct.address_space* %23, %struct.address_space** %13, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @PAGE_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  store i32 %30, i32* %15, align 4
  br label %31

31:                                               ; preds = %101, %5
  %32 = load i64, i64* %10, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %108

34:                                               ; preds = %31
  %35 = load i32, i32* %15, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %10, align 8
  %38 = add i64 %36, %37
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ugt i64 %38, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = load i32, i32* %15, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %16, align 4
  br label %49

46:                                               ; preds = %34
  %47 = load i64, i64* %10, align 8
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %16, align 4
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i64, i64* %10, align 8
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 %50, %52
  store i64 %53, i64* %10, align 8
  %54 = load %struct.address_space*, %struct.address_space** %13, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call %struct.page* @page_read(%struct.address_space* %54, i32 %55)
  store %struct.page* %56, %struct.page** %12, align 8
  %57 = load %struct.page*, %struct.page** %12, align 8
  %58 = call i64 @IS_ERR(%struct.page* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %49
  %61 = load %struct.page*, %struct.page** %12, align 8
  %62 = call i32 @PTR_ERR(%struct.page* %61)
  store i32 %62, i32* %6, align 4
  br label %109

63:                                               ; preds = %49
  %64 = load %struct.page*, %struct.page** %12, align 8
  %65 = call i64 @page_address(%struct.page* %64)
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %16, align 4
  %71 = call i64 @memcmp(i64 %68, i32* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %63
  %74 = load %struct.page*, %struct.page** %12, align 8
  %75 = call i32 @lock_page(%struct.page* %74)
  %76 = load %struct.page*, %struct.page** %12, align 8
  %77 = call i64 @page_address(%struct.page* %76)
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %77, %79
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @memcpy(i64 %80, i32* %81, i32 %82)
  %84 = load %struct.page*, %struct.page** %12, align 8
  %85 = call i32 @set_page_dirty(%struct.page* %84)
  %86 = load %struct.page*, %struct.page** %12, align 8
  %87 = call i32 @unlock_page(%struct.page* %86)
  %88 = load %struct.address_space*, %struct.address_space** %13, align 8
  %89 = call i32 @balance_dirty_pages_ratelimited(%struct.address_space* %88)
  br label %90

90:                                               ; preds = %73, %63
  %91 = load %struct.page*, %struct.page** %12, align 8
  %92 = call i32 @put_page(%struct.page* %91)
  %93 = load i64*, i64** %11, align 8
  %94 = icmp ne i64* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load i32, i32* %16, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64*, i64** %11, align 8
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, %97
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %95, %90
  %102 = load i32, i32* %16, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %8, align 8
  store i32 0, i32* %15, align 4
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  br label %31

108:                                              ; preds = %31
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %108, %60
  %110 = load i32, i32* %6, align 4
  ret i32 %110
}

declare dso_local %struct.page* @page_read(%struct.address_space*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i64 @memcmp(i64, i32*, i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @memcpy(i64, i32*, i32) #1

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
