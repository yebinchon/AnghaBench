; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/bcm47xxnflash/extr_ops_bcm4706.c_bcm47xxnflash_ops_bcm4706_ctl_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/bcm47xxnflash/extr_ops_bcm4706.c_bcm47xxnflash_ops_bcm4706_ctl_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_drv_cc = type { i32 }

@BCMA_CC_NFLASH_CTL = common dso_local global i32 0, align 4
@NCTL_START = common dso_local global i32 0, align 4
@NFLASH_READY_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"NFLASH control command not ready!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_drv_cc*, i32)* @bcm47xxnflash_ops_bcm4706_ctl_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm47xxnflash_ops_bcm4706_ctl_cmd(%struct.bcma_drv_cc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcma_drv_cc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcma_drv_cc* %0, %struct.bcma_drv_cc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %4, align 8
  %8 = load i32, i32* @BCMA_CC_NFLASH_CTL, align 4
  %9 = load i32, i32* @NCTL_START, align 4
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @bcma_cc_write32(%struct.bcma_drv_cc* %7, i32 %8, i32 %11)
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %26, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @NFLASH_READY_RETRIES, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %4, align 8
  %19 = load i32, i32* @BCMA_CC_NFLASH_CTL, align 4
  %20 = call i32 @bcma_cc_read32(%struct.bcma_drv_cc* %18, i32 %19)
  %21 = load i32, i32* @NCTL_START, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %29

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %13

29:                                               ; preds = %24, %13
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @bcma_cc_write32(%struct.bcma_drv_cc*, i32, i32) #1

declare dso_local i32 @bcma_cc_read32(%struct.bcma_drv_cc*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
