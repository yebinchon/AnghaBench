; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_writesect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_writesect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_blktrans_dev = type { i32 }
%struct.mtdswap_dev = type { i64, i32*, i32, %struct.swap_eb*, i32, i32*, i32 }
%struct.swap_eb = type { i32 }

@MIN_SPARE_EBLOCKS = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@header = common dso_local global i64 0, align 8
@BLOCK_MAX = common dso_local global i32 0, align 4
@BLOCK_UNDEF = common dso_local global i32 0, align 4
@PAGE_UNDEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_blktrans_dev*, i64, i8*)* @mtdswap_writesect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdswap_writesect(%struct.mtd_blktrans_dev* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_blktrans_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mtdswap_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.swap_eb*, align 8
  %12 = alloca i32, align 4
  store %struct.mtd_blktrans_dev* %0, %struct.mtd_blktrans_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %5, align 8
  %14 = call %struct.mtdswap_dev* @MTDSWAP_MBD_TO_MTDSWAP(%struct.mtd_blktrans_dev* %13)
  store %struct.mtdswap_dev* %14, %struct.mtdswap_dev** %8, align 8
  %15 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %16 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %20 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MIN_SPARE_EBLOCKS, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOSPC, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %111

27:                                               ; preds = %3
  %28 = load i64, i64* @header, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %111

37:                                               ; preds = %30
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, -1
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %37, %27
  %41 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %42 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @BLOCK_MAX, align 4
  %49 = icmp ule i32 %47, %48
  br i1 %49, label %50, label %81

50:                                               ; preds = %40
  %51 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %52 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %51, i32 0, i32 3
  %53 = load %struct.swap_eb*, %struct.swap_eb** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %56 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = udiv i32 %54, %57
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %53, i64 %59
  store %struct.swap_eb* %60, %struct.swap_eb** %11, align 8
  %61 = load %struct.swap_eb*, %struct.swap_eb** %11, align 8
  %62 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %66 = load %struct.swap_eb*, %struct.swap_eb** %11, align 8
  %67 = call i32 @mtdswap_store_eb(%struct.mtdswap_dev* %65, %struct.swap_eb* %66)
  %68 = load i32, i32* @BLOCK_UNDEF, align 4
  %69 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %70 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 %68, i32* %73, align 4
  %74 = load i32, i32* @PAGE_UNDEF, align 4
  %75 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %76 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %74, i32* %80, align 4
  br label %81

81:                                               ; preds = %50, %40
  %82 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @mtdswap_write_block(%struct.mtdswap_dev* %82, i8* %83, i64 %84, i32* %9, i32 0)
  store i32 %85, i32* %12, align 4
  %86 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %87 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %4, align 4
  br label %111

94:                                               ; preds = %81
  %95 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %96 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %95, i32 0, i32 3
  %97 = load %struct.swap_eb*, %struct.swap_eb** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %100 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = udiv i32 %98, %101
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %97, i64 %103
  store %struct.swap_eb* %104, %struct.swap_eb** %11, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %8, align 8
  %107 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %6, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32 %105, i32* %110, align 4
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %94, %92, %36, %24
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.mtdswap_dev* @MTDSWAP_MBD_TO_MTDSWAP(%struct.mtd_blktrans_dev*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mtdswap_store_eb(%struct.mtdswap_dev*, %struct.swap_eb*) #1

declare dso_local i32 @mtdswap_write_block(%struct.mtdswap_dev*, i8*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
