; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_blktrans_dev = type { i32 }
%struct.mtdswap_dev = type { i32*, i32, i32, i32*, %struct.swap_eb*, i32 }
%struct.swap_eb = type { i32 }

@BLOCK_MAX = common dso_local global i32 0, align 4
@BLOCK_UNDEF = common dso_local global i8* null, align 8
@PAGE_UNDEF = common dso_local global i32 0, align 4
@BLOCK_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_blktrans_dev*, i64, i32)* @mtdswap_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdswap_discard(%struct.mtd_blktrans_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_blktrans_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtdswap_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.swap_eb*, align 8
  %10 = alloca i32, align 4
  store %struct.mtd_blktrans_dev* %0, %struct.mtd_blktrans_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mtd_blktrans_dev*, %struct.mtd_blktrans_dev** %4, align 8
  %12 = call %struct.mtdswap_dev* @MTDSWAP_MBD_TO_MTDSWAP(%struct.mtd_blktrans_dev* %11)
  store %struct.mtdswap_dev* %12, %struct.mtdswap_dev** %7, align 8
  %13 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %14 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load i64, i64* %5, align 8
  store i64 %17, i64* %8, align 8
  br label %18

18:                                               ; preds = %89, %3
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = add i64 %20, %22
  %24 = icmp ult i64 %19, %23
  br i1 %24, label %25, label %92

25:                                               ; preds = %18
  %26 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %27 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @BLOCK_MAX, align 4
  %34 = icmp ule i32 %32, %33
  br i1 %34, label %35, label %71

35:                                               ; preds = %25
  %36 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %37 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %36, i32 0, i32 4
  %38 = load %struct.swap_eb*, %struct.swap_eb** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %41 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = udiv i32 %39, %42
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %38, i64 %44
  store %struct.swap_eb* %45, %struct.swap_eb** %9, align 8
  %46 = load %struct.swap_eb*, %struct.swap_eb** %9, align 8
  %47 = getelementptr inbounds %struct.swap_eb, %struct.swap_eb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %51 = load %struct.swap_eb*, %struct.swap_eb** %9, align 8
  %52 = call i32 @mtdswap_store_eb(%struct.mtdswap_dev* %50, %struct.swap_eb* %51)
  %53 = load i8*, i8** @BLOCK_UNDEF, align 8
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %56 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 %54, i32* %59, align 4
  %60 = load i32, i32* @PAGE_UNDEF, align 4
  %61 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %62 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %60, i32* %66, align 4
  %67 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %68 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  br label %88

71:                                               ; preds = %25
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @BLOCK_ERROR, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load i8*, i8** @BLOCK_UNDEF, align 8
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %79 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  store i32 %77, i32* %82, align 4
  %83 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %7, align 8
  %84 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %75, %71
  br label %88

88:                                               ; preds = %87, %35
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %8, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %8, align 8
  br label %18

92:                                               ; preds = %18
  ret i32 0
}

declare dso_local %struct.mtdswap_dev* @MTDSWAP_MBD_TO_MTDSWAP(%struct.mtd_blktrans_dev*) #1

declare dso_local i32 @mtdswap_store_eb(%struct.mtdswap_dev*, %struct.swap_eb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
