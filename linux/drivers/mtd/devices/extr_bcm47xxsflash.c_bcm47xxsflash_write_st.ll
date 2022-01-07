; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_bcm47xxsflash.c_bcm47xxsflash_write_st.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_bcm47xxsflash.c_bcm47xxsflash_write_st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.bcm47xxsflash* }
%struct.bcm47xxsflash = type { i32 (%struct.bcm47xxsflash*, i32, i32)*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@OPCODE_ST_WREN = common dso_local global i32 0, align 4
@BCMA_CC_FLASHADDR = common dso_local global i32 0, align 4
@BCMA_CC_FLASHDATA = common dso_local global i32 0, align 4
@OPCODE_ST_PP = common dso_local global i32 0, align 4
@OPCODE_ST_CSA = common dso_local global i32 0, align 4
@BCMA_CC_FLASHCTL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Flash rejected dropping CSA\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, i64, i32*)* @bcm47xxsflash_write_st to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm47xxsflash_write_st(%struct.mtd_info* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.bcm47xxsflash*, align 8
  %11 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %13 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 0
  %14 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %13, align 8
  store %struct.bcm47xxsflash* %14, %struct.bcm47xxsflash** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %16 = load i32, i32* @OPCODE_ST_WREN, align 4
  %17 = call i32 @bcm47xxsflash_cmd(%struct.bcm47xxsflash* %15, i32 %16)
  %18 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %19 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %18, i32 0, i32 0
  %20 = load i32 (%struct.bcm47xxsflash*, i32, i32)*, i32 (%struct.bcm47xxsflash*, i32, i32)** %19, align 8
  %21 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %22 = load i32, i32* @BCMA_CC_FLASHADDR, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 %20(%struct.bcm47xxsflash* %21, i32 %22, i32 %23)
  %25 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %26 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %25, i32 0, i32 0
  %27 = load i32 (%struct.bcm47xxsflash*, i32, i32)*, i32 (%struct.bcm47xxsflash*, i32, i32)** %26, align 8
  %28 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %29 = load i32, i32* @BCMA_CC_FLASHDATA, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %9, align 8
  %32 = load i32, i32* %30, align 4
  %33 = call i32 %27(%struct.bcm47xxsflash* %28, i32 %29, i32 %32)
  %34 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %35 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %41, 20
  br i1 %42, label %43, label %47

43:                                               ; preds = %4
  %44 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %45 = load i32, i32* @OPCODE_ST_PP, align 4
  %46 = call i32 @bcm47xxsflash_cmd(%struct.bcm47xxsflash* %44, i32 %45)
  store i32 1, i32* %5, align 4
  br label %98

47:                                               ; preds = %4
  %48 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %49 = load i32, i32* @OPCODE_ST_CSA, align 4
  %50 = load i32, i32* @OPCODE_ST_PP, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @bcm47xxsflash_cmd(%struct.bcm47xxsflash* %48, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, -1
  store i64 %56, i64* %8, align 8
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %67, %47
  %60 = load i64, i64* %8, align 8
  %61 = icmp ugt i64 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %59
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, 255
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %81

67:                                               ; preds = %62
  %68 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %69 = load i32, i32* @OPCODE_ST_CSA, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %9, align 8
  %72 = load i32, i32* %70, align 4
  %73 = or i32 %69, %72
  %74 = call i32 @bcm47xxsflash_cmd(%struct.bcm47xxsflash* %68, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  %77 = load i64, i64* %8, align 8
  %78 = add i64 %77, -1
  store i64 %78, i64* %8, align 8
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %59

81:                                               ; preds = %66, %59
  %82 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %83 = getelementptr inbounds %struct.bcm47xxsflash, %struct.bcm47xxsflash* %82, i32 0, i32 0
  %84 = load i32 (%struct.bcm47xxsflash*, i32, i32)*, i32 (%struct.bcm47xxsflash*, i32, i32)** %83, align 8
  %85 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %86 = load i32, i32* @BCMA_CC_FLASHCTL, align 4
  %87 = call i32 %84(%struct.bcm47xxsflash* %85, i32 %86, i32 0)
  %88 = call i32 @udelay(i32 1)
  %89 = load %struct.bcm47xxsflash*, %struct.bcm47xxsflash** %10, align 8
  %90 = load i32, i32* @HZ, align 4
  %91 = sdiv i32 %90, 10
  %92 = call i64 @bcm47xxsflash_poll(%struct.bcm47xxsflash* %89, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %81
  %95 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %81
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %96, %43
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @bcm47xxsflash_cmd(%struct.bcm47xxsflash*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @bcm47xxsflash_poll(%struct.bcm47xxsflash*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
