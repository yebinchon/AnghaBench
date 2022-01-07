; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/bcm47xxnflash/extr_ops_bcm4706.c_bcm47xxnflash_ops_bcm4706_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/bcm47xxnflash/extr_ops_bcm4706.c_bcm47xxnflash_ops_bcm4706_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { i32 }

@NFLASH_READY_RETRIES = common dso_local global i32 0, align 4
@BCMA_CC_NFLASH_CTL = common dso_local global i32 0, align 4
@NCTL_READY = common dso_local global i32 0, align 4
@BCMA_CC_NFLASH_CTL_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Error on polling\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Polling timeout!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_drv_cc*)* @bcm47xxnflash_ops_bcm4706_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm47xxnflash_ops_bcm4706_poll(%struct.bcma_drv_cc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcma_drv_cc*, align 8
  %4 = alloca i32, align 4
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NFLASH_READY_RETRIES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %11 = load i32, i32* @BCMA_CC_NFLASH_CTL, align 4
  %12 = call i32 @bcma_cc_read32(%struct.bcma_drv_cc* %10, i32 %11)
  %13 = load i32, i32* @NCTL_READY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %9
  %17 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %3, align 8
  %18 = load i32, i32* @BCMA_CC_NFLASH_CTL, align 4
  %19 = call i32 @bcma_cc_read32(%struct.bcma_drv_cc* %17, i32 %18)
  %20 = load i32, i32* @BCMA_CC_NFLASH_CTL_ERR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %36

27:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %36

28:                                               ; preds = %9
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %5

32:                                               ; preds = %5
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %27, %23
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @bcma_cc_read32(%struct.bcma_drv_cc*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
