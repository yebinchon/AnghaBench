; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_bcm47xxsflash.c_bcm47xxsflash_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_bcm47xxsflash.c_bcm47xxsflash_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm47xxsflash = type { i32 (%struct.bcm47xxsflash*, i32)*, i32 (%struct.bcm47xxsflash*, i32, i32)* }

@BCMA_CC_FLASHCTL = common dso_local global i32 0, align 4
@BCMA_CC_FLASHCTL_START = common dso_local global i32 0, align 4
@BCMA_CC_FLASHCTL_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Control command failed (timeout)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm47xxsflash*, i32)* @bcm47xxsflash_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm47xxsflash_cmd(%struct.bcm47xxsflash* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm47xxsflash*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcm47xxsflash* %0, %struct.bcm47xxsflash** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %3, align 8
  %7 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %6, i32 0, i32 1
  %8 = load i32 (%struct.bcm47xxsflash*, i32, i32)*, i32 (%struct.bcm47xxsflash*, i32, i32)** %7, align 8
  %9 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %3, align 8
  %10 = load i32, i32* @BCMA_CC_FLASHCTL, align 4
  %11 = load i32, i32* @BCMA_CC_FLASHCTL_START, align 4
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %11, %12
  %14 = call i32 %8(%struct.bcm47xxsflash* %9, i32 %10, i32 %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %31, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 1000
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %3, align 8
  %20 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %19, i32 0, i32 0
  %21 = load i32 (%struct.bcm47xxsflash*, i32)*, i32 (%struct.bcm47xxsflash*, i32)** %20, align 8
  %22 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %3, align 8
  %23 = load i32, i32* @BCMA_CC_FLASHCTL, align 4
  %24 = call i32 %21(%struct.bcm47xxsflash* %22, i32 %23)
  %25 = load i32, i32* @BCMA_CC_FLASHCTL_BUSY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %36

29:                                               ; preds = %18
  %30 = call i32 (...) @cpu_relax()
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %15

34:                                               ; preds = %15
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %28
  ret void
}

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
