; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/bcm47xxnflash/extr_ops_bcm4706.c_bcm47xxnflash_ops_bcm4706_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/bcm47xxnflash/extr_ops_bcm4706.c_bcm47xxnflash_ops_bcm4706_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_chip = type { i32 }
%struct.bcm47xxnflash = type { i32, i32, i32 }

@BCMA_CC_NFLASH_COL_ADDR = common dso_local global i32 0, align 4
@BCMA_CC_NFLASH_ROW_ADDR = common dso_local global i32 0, align 4
@NCTL_CSA = common dso_local global i32 0, align 4
@NCTL_CMD1W = common dso_local global i32 0, align 4
@NCTL_ROW = common dso_local global i32 0, align 4
@NCTL_COL = common dso_local global i32 0, align 4
@NCTL_CMD0 = common dso_local global i32 0, align 4
@NAND_CMD_READSTART = common dso_local global i32 0, align 4
@NCTL_READ = common dso_local global i32 0, align 4
@BCMA_CC_NFLASH_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*, i32*, i32)* @bcm47xxnflash_ops_bcm4706_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm47xxnflash_ops_bcm4706_read(%struct.mtd_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca %struct.bcm47xxnflash*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %14 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %13)
  store %struct.nand_chip* %14, %struct.nand_chip** %7, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %16 = call %struct.bcm47xxnflash* @nand_get_controller_data(%struct.nand_chip* %15)
  store %struct.bcm47xxnflash* %16, %struct.bcm47xxnflash** %8, align 8
  %17 = load i32*, i32** %5, align 8
  store i32* %17, i32** %10, align 8
  %18 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %8, align 8
  %19 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %20, %24
  %26 = call i32 @BUG_ON(i32 %25)
  br label %27

27:                                               ; preds = %115, %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %124

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @min(i32 %31, i32 512)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %8, align 8
  %34 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BCMA_CC_NFLASH_COL_ADDR, align 4
  %37 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %8, align 8
  %38 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bcma_cc_write32(i32 %35, i32 %36, i32 %39)
  %41 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %8, align 8
  %42 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @BCMA_CC_NFLASH_ROW_ADDR, align 4
  %45 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %8, align 8
  %46 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @bcma_cc_write32(i32 %43, i32 %44, i32 %47)
  %49 = load i32, i32* @NCTL_CSA, align 4
  %50 = load i32, i32* @NCTL_CMD1W, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @NCTL_ROW, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @NCTL_COL, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @NCTL_CMD0, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @NAND_CMD_READSTART, align 4
  %59 = shl i32 %58, 8
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %8, align 8
  %63 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i64 @bcm47xxnflash_ops_bcm4706_ctl_cmd(i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %30
  br label %124

69:                                               ; preds = %30
  %70 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %8, align 8
  %71 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @bcm47xxnflash_ops_bcm4706_poll(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %124

76:                                               ; preds = %69
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %110, %76
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %115

81:                                               ; preds = %77
  %82 = load i32, i32* @NCTL_CSA, align 4
  %83 = or i32 %82, 805306368
  %84 = load i32, i32* @NCTL_READ, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = sub nsw i32 %87, 4
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load i32, i32* @NCTL_CSA, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %9, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %90, %81
  %96 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %8, align 8
  %97 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i64 @bcm47xxnflash_ops_bcm4706_ctl_cmd(i32 %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %124

103:                                              ; preds = %95
  %104 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %8, align 8
  %105 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @BCMA_CC_NFLASH_DATA, align 4
  %108 = call i32 @bcma_cc_read32(i32 %106, i32 %107)
  %109 = load i32*, i32** %10, align 8
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %103
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 4
  store i32 %112, i32* %11, align 4
  %113 = load i32*, i32** %10, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %10, align 8
  br label %77

115:                                              ; preds = %77
  %116 = load i32, i32* %12, align 4
  %117 = load %struct.bcm47xxnflash*, %struct.bcm47xxnflash** %8, align 8
  %118 = getelementptr inbounds %struct.bcm47xxnflash, %struct.bcm47xxnflash* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %6, align 4
  %123 = sub nsw i32 %122, %121
  store i32 %123, i32* %6, align 4
  br label %27

124:                                              ; preds = %68, %75, %102, %27
  ret void
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.bcm47xxnflash* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bcma_cc_write32(i32, i32, i32) #1

declare dso_local i64 @bcm47xxnflash_ops_bcm4706_ctl_cmd(i32, i32) #1

declare dso_local i64 @bcm47xxnflash_ops_bcm4706_poll(i32) #1

declare dso_local i32 @bcma_cc_read32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
