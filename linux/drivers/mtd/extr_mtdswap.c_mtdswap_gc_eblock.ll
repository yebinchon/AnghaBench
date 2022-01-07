; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_gc_eblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_gc_eblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdswap_dev = type { i32, i64, i64*, %struct.swap_eb* }
%struct.swap_eb = type { i32 }

@MIN_SPARE_EBLOCKS = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@PAGE_UNDEF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtdswap_dev*, %struct.swap_eb*)* @mtdswap_gc_eblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdswap_gc_eblock(%struct.mtdswap_dev* %0, %struct.swap_eb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtdswap_dev*, align 8
  %5 = alloca %struct.swap_eb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mtdswap_dev* %0, %struct.mtdswap_dev** %4, align 8
  store %struct.swap_eb* %1, %struct.swap_eb** %5, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.swap_eb*, %struct.swap_eb** %5, align 8
  %13 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %14 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %13, i32 0, i32 3
  %15 = load %struct.swap_eb*, %struct.swap_eb** %14, align 8
  %16 = ptrtoint %struct.swap_eb* %12 to i64
  %17 = ptrtoint %struct.swap_eb* %15 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 4
  %20 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %21 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = mul nsw i64 %19, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %67, %2
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %29 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %70

32:                                               ; preds = %26
  %33 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %34 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MIN_SPARE_EBLOCKS, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @ENOSPC, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %72

41:                                               ; preds = %32
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %46 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PAGE_UNDEF, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %67

55:                                               ; preds = %41
  %56 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @mtdswap_move_block(%struct.mtdswap_dev* %56, i32 %57, i32* %9)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %64, %61, %55
  br label %67

67:                                               ; preds = %66, %54
  %68 = load i32, i32* %6, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %26

70:                                               ; preds = %26
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %70, %38
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @mtdswap_move_block(%struct.mtdswap_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
