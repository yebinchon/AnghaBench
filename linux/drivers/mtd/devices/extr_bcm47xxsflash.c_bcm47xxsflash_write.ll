; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_bcm47xxsflash.c_bcm47xxsflash_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_bcm47xxsflash.c_bcm47xxsflash_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.bcm47xxsflash* }
%struct.bcm47xxsflash = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Error writing at offset 0x%llX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i32*)* @bcm47xxsflash_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm47xxsflash_write(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.bcm47xxsflash*, align 8
  %13 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %15 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %14, i32 0, i32 0
  %16 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %15, align 8
  store %struct.bcm47xxsflash* %16, %struct.bcm47xxsflash** %12, align 8
  br label %17

17:                                               ; preds = %45, %5
  %18 = load i64, i64* %9, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %63

20:                                               ; preds = %17
  %21 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %12, align 8
  %22 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %36 [
    i32 128, label %24
    i32 129, label %30
  ]

24:                                               ; preds = %20
  %25 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @bcm47xxsflash_write_st(%struct.mtd_info* %25, i64 %26, i64 %27, i32* %28)
  store i32 %29, i32* %13, align 4
  br label %38

30:                                               ; preds = %20
  %31 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @bcm47xxsflash_write_at(%struct.mtd_info* %31, i64 %32, i64 %33, i32* %34)
  store i32 %35, i32* %13, align 4
  br label %38

36:                                               ; preds = %20
  %37 = call i32 @BUG_ON(i32 1)
  br label %38

38:                                               ; preds = %36, %30, %24
  %39 = load i32, i32* %13, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %6, align 4
  br label %64

45:                                               ; preds = %38
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %8, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %8, align 8
  %50 = load i32, i32* %13, align 4
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %9, align 8
  %53 = sub i64 %52, %51
  store i64 %53, i64* %9, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64*, i64** %10, align 8
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, %55
  store i64 %58, i64* %56, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32*, i32** %11, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %11, align 8
  br label %17

63:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %41
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @bcm47xxsflash_write_st(%struct.mtd_info*, i64, i64, i32*) #1

declare dso_local i32 @bcm47xxsflash_write_at(%struct.mtd_info*, i64, i64, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
