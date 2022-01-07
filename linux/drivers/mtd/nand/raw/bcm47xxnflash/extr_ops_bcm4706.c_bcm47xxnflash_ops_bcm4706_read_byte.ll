; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/bcm47xxnflash/extr_ops_bcm4706.c_bcm47xxnflash_ops_bcm4706_read_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/bcm47xxnflash/extr_ops_bcm4706.c_bcm47xxnflash_ops_bcm4706_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32 }
%struct.bcm47xxnflash = type { i32, i32, i32*, %struct.bcma_drv_cc* }
%struct.bcma_drv_cc = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Requested invalid id_data: %d\0A\00", align 1
@NCTL_READ = common dso_local global i32 0, align 4
@BCMA_CC_NFLASH_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Invalid command for byte read: 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @bcm47xxnflash_ops_bcm4706_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm47xxnflash_ops_bcm4706_read_byte(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.bcm47xxnflash*, align 8
  %6 = alloca %struct.bcma_drv_cc*, align 8
  %7 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %8)
  store %struct.mtd_info* %9, %struct.mtd_info** %4, align 8
  %10 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %11 = call %struct.bcm47xxnflash* @nand_get_controller_data(%struct.nand_chip* %10)
  store %struct.bcm47xxnflash* %11, %struct.bcm47xxnflash** %5, align 8
  %12 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %5, align 8
  %13 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %12, i32 0, i32 3
  %14 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %13, align 8
  store %struct.bcma_drv_cc* %14, %struct.bcma_drv_cc** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %5, align 8
  %16 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %59 [
    i32 130, label %18
    i32 128, label %43
    i32 129, label %54
  ]

18:                                               ; preds = %1
  %19 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %5, align 8
  %20 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %5, align 8
  %23 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @ARRAY_SIZE(i32* %24)
  %26 = icmp sge i32 %21, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %5, align 8
  %29 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 0, i32* %2, align 4
  br label %64

32:                                               ; preds = %18
  %33 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %5, align 8
  %34 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %5, align 8
  %37 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %35, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %2, align 4
  br label %64

43:                                               ; preds = %1
  %44 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %6, align 8
  %45 = load i32, i32* @NCTL_READ, align 4
  %46 = call i32 @bcm47xxnflash_ops_bcm4706_ctl_cmd(%struct.bcma_drv_cc* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %64

49:                                               ; preds = %43
  %50 = load %struct.bcma_drv_cc*, %struct.bcma_drv_cc** %6, align 8
  %51 = load i32, i32* @BCMA_CC_NFLASH_DATA, align 4
  %52 = call i32 @bcma_cc_read32(%struct.bcma_drv_cc* %50, i32 %51)
  %53 = and i32 %52, 255
  store i32 %53, i32* %2, align 4
  br label %64

54:                                               ; preds = %1
  %55 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %56 = call i32 @bcm47xxnflash_ops_bcm4706_read(%struct.mtd_info* %55, i32* %7, i32 4)
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 255
  store i32 %58, i32* %2, align 4
  br label %64

59:                                               ; preds = %1
  %60 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %5, align 8
  %61 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %59, %54, %49, %48, %32, %27
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.bcm47xxnflash* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @bcm47xxnflash_ops_bcm4706_ctl_cmd(%struct.bcma_drv_cc*, i32) #1

declare dso_local i32 @bcma_cc_read32(%struct.bcma_drv_cc*, i32) #1

declare dso_local i32 @bcm47xxnflash_ops_bcm4706_read(%struct.mtd_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
