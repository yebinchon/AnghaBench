; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_bcm47xxsflash.c_bcm47xxsflash_fill_mtd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_bcm47xxsflash.c_bcm47xxsflash_fill_mtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm47xxsflash = type { i32, i32, %struct.mtd_info }
%struct.mtd_info = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.bcm47xxsflash* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"bcm47xxsflash\00", align 1
@MTD_NORFLASH = common dso_local global i32 0, align 4
@MTD_CAP_NORFLASH = common dso_local global i32 0, align 4
@bcm47xxsflash_erase = common dso_local global i32 0, align 4
@bcm47xxsflash_read = common dso_local global i32 0, align 4
@bcm47xxsflash_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm47xxsflash*, %struct.device*)* @bcm47xxsflash_fill_mtd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm47xxsflash_fill_mtd(%struct.bcm47xxsflash* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.bcm47xxsflash*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  store %struct.bcm47xxsflash* %0, %struct.bcm47xxsflash** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %6 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %3, align 8
  %7 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %6, i32 0, i32 2
  store %struct.mtd_info* %7, %struct.mtd_info** %5, align 8
  %8 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %3, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %10 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %9, i32 0, i32 11
  store %struct.bcm47xxsflash* %8, %struct.bcm47xxsflash** %10, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %13 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 10
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %11, %struct.device** %14, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load i32, i32* @MTD_NORFLASH, align 4
  %18 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %19 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %18, i32 0, i32 9
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @MTD_CAP_NORFLASH, align 4
  %21 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %22 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 4
  %23 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %3, align 8
  %24 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %27 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 8
  %28 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %3, align 8
  %29 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %32 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 4
  %33 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 1
  store i32 1, i32* %34, align 8
  %35 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %35, i32 0, i32 2
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* @bcm47xxsflash_erase, align 4
  %38 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %39 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @bcm47xxsflash_read, align 4
  %41 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %42 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @bcm47xxsflash_write, align 4
  %44 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %45 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
