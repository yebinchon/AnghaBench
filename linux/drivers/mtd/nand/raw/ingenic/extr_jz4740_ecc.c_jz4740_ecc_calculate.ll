; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4740_ecc.c_jz4740_ecc_calculate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4740_ecc.c_jz4740_ecc_calculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_ecc = type { i64 }
%struct.ingenic_ecc_params = type { i32 }

@JZ_REG_NAND_IRQ_STAT = common dso_local global i64 0, align 8
@JZ_NAND_STATUS_ENC_FINISH = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@JZ_REG_NAND_ECC_CTRL = common dso_local global i64 0, align 8
@JZ_NAND_ECC_CTRL_ENABLE = common dso_local global i32 0, align 4
@JZ_REG_NAND_PAR0 = common dso_local global i64 0, align 8
@empty_block_ecc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ingenic_ecc*, %struct.ingenic_ecc_params*, i32*, i32*)* @jz4740_ecc_calculate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_ecc_calculate(%struct.ingenic_ecc* %0, %struct.ingenic_ecc_params* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ingenic_ecc*, align 8
  %7 = alloca %struct.ingenic_ecc_params*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ingenic_ecc* %0, %struct.ingenic_ecc** %6, align 8
  store %struct.ingenic_ecc_params* %1, %struct.ingenic_ecc_params** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 1000, i32* %12, align 4
  %14 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %6, align 8
  %15 = call i32 @jz4740_ecc_reset(%struct.ingenic_ecc* %14, i32 1)
  br label %16

16:                                               ; preds = %32, %4
  %17 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %6, align 8
  %18 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @JZ_REG_NAND_IRQ_STAT, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  store i32 %22, i32* %11, align 4
  br label %23

23:                                               ; preds = %16
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @JZ_NAND_STATUS_ENC_FINISH, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %12, align 4
  %30 = add i32 %29, -1
  store i32 %30, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %28, %23
  %33 = phi i1 [ false, %23 ], [ %31, %28 ]
  br i1 %33, label %16, label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @ETIMEDOUT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %94

40:                                               ; preds = %34
  %41 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %6, align 8
  %42 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @JZ_REG_NAND_ECC_CTRL, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @readl(i64 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @JZ_NAND_ECC_CTRL_ENABLE, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %6, align 8
  %53 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @JZ_REG_NAND_ECC_CTRL, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %78, %40
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %7, align 8
  %61 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %58
  %65 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %6, align 8
  %66 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @JZ_REG_NAND_PAR0, align 8
  %69 = add nsw i64 %67, %68
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = call i32 @readb(i64 %72)
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  br label %78

78:                                               ; preds = %64
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %58

81:                                               ; preds = %58
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* @empty_block_ecc, align 4
  %84 = load i32, i32* @empty_block_ecc, align 4
  %85 = call i32 @ARRAY_SIZE(i32 %84)
  %86 = call i64 @memcmp(i32* %82, i32 %83, i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load i32*, i32** %9, align 8
  %90 = load i32, i32* @empty_block_ecc, align 4
  %91 = call i32 @ARRAY_SIZE(i32 %90)
  %92 = call i32 @memset(i32* %89, i32 255, i32 %91)
  br label %93

93:                                               ; preds = %88, %81
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %37
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @jz4740_ecc_reset(%struct.ingenic_ecc*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
