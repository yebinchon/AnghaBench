; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_nftlmount.c_check_free_sectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_nftlmount.c_check_free_sectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NFTLrecord = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mtd_info* }
%struct.mtd_info = type { i32 }

@SECTORSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.NFTLrecord*, i32, i32, i32)* @check_free_sectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_free_sectors(%struct.NFTLrecord* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.NFTLrecord*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.NFTLrecord* %0, %struct.NFTLrecord** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.NFTLrecord*, %struct.NFTLrecord** %6, align 8
  %16 = getelementptr inbounds %struct.NFTLrecord, %struct.NFTLrecord* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mtd_info*, %struct.mtd_info** %17, align 8
  store %struct.mtd_info* %18, %struct.mtd_info** %10, align 8
  %19 = load i32, i32* @SECTORSIZE, align 4
  %20 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %21 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %19, %22
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32* @kmalloc(i32 %23, i32 %24)
  store i32* %25, i32** %14, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %89

29:                                               ; preds = %4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %80, %29
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %84

34:                                               ; preds = %30
  %35 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @SECTORSIZE, align 4
  %38 = load i32*, i32** %14, align 8
  %39 = call i64 @mtd_read(%struct.mtd_info* %35, i32 %36, i32 %37, i64* %11, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %85

42:                                               ; preds = %34
  %43 = load i32*, i32** %14, align 8
  %44 = load i32, i32* @SECTORSIZE, align 4
  %45 = call i64 @memcmpb(i32* %43, i32 255, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %85

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %48
  %52 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %55 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %14, align 8
  %58 = load i32, i32* @SECTORSIZE, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i64 @nftl_read_oob(%struct.mtd_info* %52, i32 %53, i32 %56, i64* %11, i32* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %85

64:                                               ; preds = %51
  %65 = load i32*, i32** %14, align 8
  %66 = load i32, i32* @SECTORSIZE, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %70 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @memcmpb(i32* %68, i32 255, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %85

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %48
  %77 = load i32, i32* @SECTORSIZE, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* @SECTORSIZE, align 4
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %12, align 4
  br label %30

84:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %84, %74, %63, %47, %41
  %86 = load i32*, i32** %14, align 8
  %87 = call i32 @kfree(i32* %86)
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %85, %28
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @mtd_read(%struct.mtd_info*, i32, i32, i64*, i32*) #1

declare dso_local i64 @memcmpb(i32*, i32, i32) #1

declare dso_local i64 @nftl_read_oob(%struct.mtd_info*, i32, i32, i64*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
