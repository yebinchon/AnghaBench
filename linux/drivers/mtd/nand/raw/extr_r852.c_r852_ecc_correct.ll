; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_ecc_correct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_ecc_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.r852_device = type { i32, i64, i64 }

@EIO = common dso_local global i32 0, align 4
@R852_CTL = common dso_local global i32 0, align 4
@R852_CTL_ECC_ACCESS = common dso_local global i32 0, align 4
@R852_DATALINE = common dso_local global i32 0, align 4
@R852_ECC_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ecc: unrecoverable error, in half %d\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@R852_ECC_CORRECTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"ecc: recoverable error, in half %d, byte %d, bit %d\00", align 1
@R852_ECC_ERR_BIT_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32*, i32*)* @r852_ecc_correct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r852_ecc_correct(%struct.nand_chip* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.r852_device*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %17 = call i32 @nand_to_mtd(%struct.nand_chip* %16)
  %18 = call %struct.r852_device* @r852_get_dev(i32 %17)
  store %struct.r852_device* %18, %struct.r852_device** %15, align 8
  %19 = load %struct.r852_device*, %struct.r852_device** %15, align 8
  %20 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %105

24:                                               ; preds = %4
  %25 = load %struct.r852_device*, %struct.r852_device** %15, align 8
  %26 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.r852_device*, %struct.r852_device** %15, align 8
  %31 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %105

34:                                               ; preds = %24
  %35 = load %struct.r852_device*, %struct.r852_device** %15, align 8
  %36 = load i32, i32* @R852_CTL, align 4
  %37 = load %struct.r852_device*, %struct.r852_device** %15, align 8
  %38 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @R852_CTL_ECC_ACCESS, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @r852_write_reg(%struct.r852_device* %35, i32 %36, i32 %41)
  %43 = load %struct.r852_device*, %struct.r852_device** %15, align 8
  %44 = load i32, i32* @R852_DATALINE, align 4
  %45 = call i32 @r852_read_reg_dword(%struct.r852_device* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.r852_device*, %struct.r852_device** %15, align 8
  %47 = load i32, i32* @R852_CTL, align 4
  %48 = load %struct.r852_device*, %struct.r852_device** %15, align 8
  %49 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @r852_write_reg(%struct.r852_device* %46, i32 %47, i32 %50)
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %99, %34
  %53 = load i32, i32* %13, align 4
  %54 = icmp sle i32 %53, 1
  br i1 %54, label %55, label %102

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = ashr i32 %56, 8
  %58 = and i32 %57, 255
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @R852_ECC_FAIL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %55
  %64 = load i32, i32* %13, align 4
  %65 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EBADMSG, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %14, align 4
  br label %103

68:                                               ; preds = %55
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @R852_ECC_CORRECTABLE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, 255
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @R852_ECC_ERR_BIT_MSK, align 4
  %80 = and i32 %78, %79
  %81 = call i32 (i8*, i32, ...) @dbg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %77, i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @R852_ECC_ERR_BIT_MSK, align 4
  %84 = and i32 %82, %83
  %85 = shl i32 1, %84
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %90, %85
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %73, %68
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 256
  store i32* %96, i32** %7, align 8
  %97 = load i32, i32* %10, align 4
  %98 = ashr i32 %97, 16
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  br label %52

102:                                              ; preds = %52
  br label %103

103:                                              ; preds = %102, %63
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %103, %29, %23
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local %struct.r852_device* @r852_get_dev(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @r852_write_reg(%struct.r852_device*, i32, i32) #1

declare dso_local i32 @r852_read_reg_dword(%struct.r852_device*, i32) #1

declare dso_local i32 @dbg(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
