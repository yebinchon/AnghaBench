; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_bcm63xxpart.c_bcm63xx_read_nvram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/parsers/extr_bcm63xxpart.c_bcm63xx_read_nvram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.bcm963xx_nvram = type { i64 }

@BCM963XX_NVRAM_OFFSET = common dso_local global i32 0, align 4
@BCM963XX_NVRAM_V5_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"nvram checksum failed, contents may be invalid (expected %08x, got %08x)\0A\00", align 1
@BCM963XX_DEFAULT_PSI_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.bcm963xx_nvram*)* @bcm63xx_read_nvram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm63xx_read_nvram(%struct.mtd_info* %0, %struct.bcm963xx_nvram* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.bcm963xx_nvram*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.bcm963xx_nvram* %1, %struct.bcm963xx_nvram** %5, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %11 = load i32, i32* @BCM963XX_NVRAM_OFFSET, align 4
  %12 = load i32, i32* @BCM963XX_NVRAM_V5_SIZE, align 4
  %13 = load %struct.bcm963xx_nvram*, %struct.bcm963xx_nvram** %5, align 8
  %14 = bitcast %struct.bcm963xx_nvram* %13 to i8*
  %15 = call i32 @mtd_read(%struct.mtd_info* %10, i32 %11, i32 %12, i64* %8, i8* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %39

20:                                               ; preds = %2
  %21 = load %struct.bcm963xx_nvram*, %struct.bcm963xx_nvram** %5, align 8
  %22 = call i32 @bcm963xx_nvram_checksum(%struct.bcm963xx_nvram* %21, i32* %7, i32* %6)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load %struct.bcm963xx_nvram*, %struct.bcm963xx_nvram** %5, align 8
  %31 = getelementptr inbounds %struct.bcm963xx_nvram, %struct.bcm963xx_nvram* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* @BCM963XX_DEFAULT_PSI_SIZE, align 8
  %36 = load %struct.bcm963xx_nvram*, %struct.bcm963xx_nvram** %5, align 8
  %37 = getelementptr inbounds %struct.bcm963xx_nvram, %struct.bcm963xx_nvram* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %29
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %18
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @mtd_read(%struct.mtd_info*, i32, i32, i64*, i8*) #1

declare dso_local i32 @bcm963xx_nvram_checksum(%struct.bcm963xx_nvram*, i32*, i32*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
