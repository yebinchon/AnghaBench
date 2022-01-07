; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_bcm47xxsflash.c_bcm47xxsflash_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_bcm47xxsflash.c_bcm47xxsflash_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm47xxsflash = type { i32, {}* }

@jiffies = common dso_local global i32 0, align 4
@OPCODE_ST_RDSR = common dso_local global i32 0, align 4
@BCMA_CC_FLASHDATA = common dso_local global i32 0, align 4
@SR_ST_WIP = common dso_local global i32 0, align 4
@OPCODE_AT_STATUS = common dso_local global i32 0, align 4
@SR_AT_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Timeout waiting for flash to be ready!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm47xxsflash*, i32)* @bcm47xxsflash_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm47xxsflash_poll(%struct.bcm47xxsflash* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm47xxsflash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.bcm47xxsflash* %0, %struct.bcm47xxsflash** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @jiffies, align 4
  %8 = load i32, i32* %5, align 4
  %9 = add nsw i32 %7, %8
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %6, align 8
  br label %11

11:                                               ; preds = %50, %2
  %12 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %4, align 8
  %13 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %47 [
    i32 128, label %15
    i32 129, label %31
  ]

15:                                               ; preds = %11
  %16 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %4, align 8
  %17 = load i32, i32* @OPCODE_ST_RDSR, align 4
  %18 = call i32 @bcm47xxsflash_cmd(%struct.bcm47xxsflash* %16, i32 %17)
  %19 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %4, align 8
  %20 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %19, i32 0, i32 1
  %21 = bitcast {}** %20 to i32 (%struct.bcm47xxsflash*, i32)**
  %22 = load i32 (%struct.bcm47xxsflash*, i32)*, i32 (%struct.bcm47xxsflash*, i32)** %21, align 8
  %23 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %4, align 8
  %24 = load i32, i32* @BCMA_CC_FLASHDATA, align 4
  %25 = call i32 %22(%struct.bcm47xxsflash* %23, i32 %24)
  %26 = load i32, i32* @SR_ST_WIP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %60

30:                                               ; preds = %15
  br label %47

31:                                               ; preds = %11
  %32 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %4, align 8
  %33 = load i32, i32* @OPCODE_AT_STATUS, align 4
  %34 = call i32 @bcm47xxsflash_cmd(%struct.bcm47xxsflash* %32, i32 %33)
  %35 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %4, align 8
  %36 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %35, i32 0, i32 1
  %37 = bitcast {}** %36 to i32 (%struct.bcm47xxsflash*, i32)**
  %38 = load i32 (%struct.bcm47xxsflash*, i32)*, i32 (%struct.bcm47xxsflash*, i32)** %37, align 8
  %39 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %4, align 8
  %40 = load i32, i32* @BCMA_CC_FLASHDATA, align 4
  %41 = call i32 %38(%struct.bcm47xxsflash* %39, i32 %40)
  %42 = load i32, i32* @SR_AT_READY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %60

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %11, %46, %30
  %48 = call i32 (...) @cpu_relax()
  %49 = call i32 @udelay(i32 1)
  br label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @jiffies, align 4
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @time_after_eq(i32 %51, i64 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %11, label %56

56:                                               ; preds = %50
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %45, %29
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @bcm47xxsflash_cmd(%struct.bcm47xxsflash*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @time_after_eq(i32, i64) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
