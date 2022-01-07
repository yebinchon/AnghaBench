; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_ecc_calculate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_ecc_calculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.r852_device = type { i32, i64 }
%struct.sm_oob = type { i32*, i32* }

@R852_CTL_ECC_ENABLE = common dso_local global i32 0, align 4
@R852_CTL = common dso_local global i32 0, align 4
@R852_CTL_ECC_ACCESS = common dso_local global i32 0, align 4
@R852_DATALINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32*)* @r852_ecc_calculate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r852_ecc_calculate(%struct.nand_chip* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.r852_device*, align 8
  %9 = alloca %struct.sm_oob*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %13 = call i32 @nand_to_mtd(%struct.nand_chip* %12)
  %14 = call %struct.r852_device* @r852_get_dev(i32 %13)
  store %struct.r852_device* %14, %struct.r852_device** %8, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = bitcast i32* %15 to %struct.sm_oob*
  store %struct.sm_oob* %16, %struct.sm_oob** %9, align 8
  %17 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %18 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %89

22:                                               ; preds = %3
  %23 = load i32, i32* @R852_CTL_ECC_ENABLE, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %26 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %30 = load i32, i32* @R852_CTL, align 4
  %31 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %32 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @R852_CTL_ECC_ACCESS, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @r852_write_reg(%struct.r852_device* %29, i32 %30, i32 %35)
  %37 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %38 = load i32, i32* @R852_DATALINE, align 4
  %39 = call i32 @r852_read_reg_dword(%struct.r852_device* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %41 = load i32, i32* @R852_DATALINE, align 4
  %42 = call i32 @r852_read_reg_dword(%struct.r852_device* %40, i32 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, 255
  %45 = load %struct.sm_oob*, %struct.sm_oob** %9, align 8
  %46 = getelementptr inbounds %struct.sm_oob, %struct.sm_oob* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* %10, align 4
  %50 = ashr i32 %49, 8
  %51 = and i32 %50, 255
  %52 = load %struct.sm_oob*, %struct.sm_oob** %9, align 8
  %53 = getelementptr inbounds %struct.sm_oob, %struct.sm_oob* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* %10, align 4
  %57 = ashr i32 %56, 16
  %58 = and i32 %57, 255
  %59 = load %struct.sm_oob*, %struct.sm_oob** %9, align 8
  %60 = getelementptr inbounds %struct.sm_oob, %struct.sm_oob* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* %11, align 4
  %64 = and i32 %63, 255
  %65 = load %struct.sm_oob*, %struct.sm_oob** %9, align 8
  %66 = getelementptr inbounds %struct.sm_oob, %struct.sm_oob* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* %11, align 4
  %70 = ashr i32 %69, 8
  %71 = and i32 %70, 255
  %72 = load %struct.sm_oob*, %struct.sm_oob** %9, align 8
  %73 = getelementptr inbounds %struct.sm_oob, %struct.sm_oob* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* %11, align 4
  %77 = ashr i32 %76, 16
  %78 = and i32 %77, 255
  %79 = load %struct.sm_oob*, %struct.sm_oob** %9, align 8
  %80 = getelementptr inbounds %struct.sm_oob, %struct.sm_oob* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  store i32 %78, i32* %82, align 4
  %83 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %84 = load i32, i32* @R852_CTL, align 4
  %85 = load %struct.r852_device*, %struct.r852_device** %8, align 8
  %86 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @r852_write_reg(%struct.r852_device* %83, i32 %84, i32 %87)
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %22, %21
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.r852_device* @r852_get_dev(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @r852_write_reg(%struct.r852_device*, i32, i32) #1

declare dso_local i32 @r852_read_reg_dword(%struct.r852_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
