; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_bcm47xxsflash.c_bcm47xxsflash_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_bcm47xxsflash.c_bcm47xxsflash_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, %struct.bcm47xxsflash* }
%struct.bcm47xxsflash = type { i64, i32 (%struct.bcm47xxsflash*, i32)*, i32 (%struct.bcm47xxsflash*, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@BCM47XXSFLASH_WINDOW_SZ = common dso_local global i64 0, align 8
@BCMA_CC_FLASHADDR = common dso_local global i32 0, align 4
@OPCODE_ST_READ4B = common dso_local global i32 0, align 4
@BCMA_CC_FLASHDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i32*)* @bcm47xxsflash_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm47xxsflash_read(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.bcm47xxsflash*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 1
  %17 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %16, align 8
  store %struct.bcm47xxsflash* %17, %struct.bcm47xxsflash** %12, align 8
  %18 = load i64, i64* %9, align 8
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = add i64 %19, %20
  %22 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %23 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %89

29:                                               ; preds = %5
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @BCM47XXSFLASH_WINDOW_SZ, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @BCM47XXSFLASH_WINDOW_SZ, align 8
  %36 = load i64, i64* %8, align 8
  %37 = sub nsw i64 %35, %36
  %38 = call i64 @min(i64 %34, i64 %37)
  store i64 %38, i64* %14, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %12, align 8
  %41 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i64, i64* %14, align 8
  %46 = call i32 @memcpy_fromio(i32* %39, i64 %44, i64 %45)
  %47 = load i64, i64* %14, align 8
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* %9, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %14, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 %53
  store i32* %55, i32** %11, align 8
  br label %56

56:                                               ; preds = %33, %29
  br label %57

57:                                               ; preds = %81, %56
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %84

60:                                               ; preds = %57
  %61 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %12, align 8
  %62 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %61, i32 0, i32 2
  %63 = load i32 (%struct.bcm47xxsflash*, i32, i32)*, i32 (%struct.bcm47xxsflash*, i32, i32)** %62, align 8
  %64 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %12, align 8
  %65 = load i32, i32* @BCMA_CC_FLASHADDR, align 4
  %66 = load i64, i64* %8, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %8, align 8
  %68 = trunc i64 %66 to i32
  %69 = call i32 %63(%struct.bcm47xxsflash* %64, i32 %65, i32 %68)
  %70 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %12, align 8
  %71 = load i32, i32* @OPCODE_ST_READ4B, align 4
  %72 = call i32 @bcm47xxsflash_cmd(%struct.bcm47xxsflash* %70, i32 %71)
  %73 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %12, align 8
  %74 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %73, i32 0, i32 1
  %75 = load i32 (%struct.bcm47xxsflash*, i32)*, i32 (%struct.bcm47xxsflash*, i32)** %74, align 8
  %76 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %12, align 8
  %77 = load i32, i32* @BCMA_CC_FLASHDATA, align 4
  %78 = call i32 %75(%struct.bcm47xxsflash* %76, i32 %77)
  %79 = load i32*, i32** %11, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %11, align 8
  store i32 %78, i32* %79, align 4
  br label %81

81:                                               ; preds = %60
  %82 = load i64, i64* %9, align 8
  %83 = add i64 %82, -1
  store i64 %83, i64* %9, align 8
  br label %57

84:                                               ; preds = %57
  %85 = load i64, i64* %13, align 8
  %86 = load i64*, i64** %10, align 8
  store i64 %85, i64* %86, align 8
  %87 = load i64, i64* %13, align 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %84, %26
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy_fromio(i32*, i64, i64) #1

declare dso_local i32 @bcm47xxsflash_cmd(%struct.bcm47xxsflash*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
