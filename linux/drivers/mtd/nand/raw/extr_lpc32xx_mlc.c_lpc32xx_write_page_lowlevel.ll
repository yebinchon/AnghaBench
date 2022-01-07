; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_mlc.c_lpc32xx_write_page_lowlevel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_mlc.c_lpc32xx_write_page_lowlevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32* }
%struct.mtd_info = type { i32 }
%struct.lpc32xx_nand_host = type { i32, i32, i32* }

@use_dma = common dso_local global i64 0, align 8
@high_memory = common dso_local global i8* null, align 8
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @lpc32xx_write_page_lowlevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_write_page_lowlevel(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mtd_info*, align 8
  %11 = alloca %struct.lpc32xx_nand_host*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %18 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %17)
  store %struct.mtd_info* %18, %struct.mtd_info** %10, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %20 = call %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip* %19)
  store %struct.lpc32xx_nand_host* %20, %struct.lpc32xx_nand_host** %11, align 8
  %21 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %7, align 8
  store i32* %24, i32** %13, align 8
  %25 = load i64, i64* @use_dma, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %4
  %28 = load i32*, i32** %7, align 8
  %29 = bitcast i32* %28 to i8*
  %30 = load i8*, i8** @high_memory, align 8
  %31 = icmp uge i8* %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %34 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %13, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %39 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(i32* %36, i32* %37, i32 %40)
  br label %42

42:                                               ; preds = %32, %27, %4
  %43 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @nand_prog_page_begin_op(%struct.nand_chip* %43, i32 %44, i32 0, i32* null, i32 0)
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %118, %42
  %47 = load i32, i32* %15, align 4
  %48 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %49 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %121

52:                                               ; preds = %46
  %53 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %54 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @MLC_ECC_ENC_REG(i32 %55)
  %57 = call i32 @writeb(i32 0, i32 %56)
  %58 = load i64, i64* @use_dma, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %52
  %61 = load %struct.mtd_info*, %struct.mtd_info** %10, align 8
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %15, align 4
  %64 = mul nsw i32 %63, 512
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %68 = call i32 @lpc32xx_xmit_dma(%struct.mtd_info* %61, i32* %66, i32 512, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %5, align 4
  br label %124

73:                                               ; preds = %60
  br label %92

74:                                               ; preds = %52
  store i32 0, i32* %16, align 4
  br label %75

75:                                               ; preds = %88, %74
  %76 = load i32, i32* %16, align 4
  %77 = icmp slt i32 %76, 128
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %82 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @MLC_BUFF(i32 %83)
  %85 = call i32 @writel(i32 %80, i32 %84)
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  store i32* %87, i32** %7, align 8
  br label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %16, align 4
  br label %75

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91, %73
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %96 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @MLC_BUFF(i32 %97)
  %99 = call i32 @writel(i32 %94, i32 %98)
  %100 = load i32*, i32** %12, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  store i32* %101, i32** %12, align 8
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %105 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @MLC_BUFF(i32 %106)
  %108 = call i32 @writew(i32 %103, i32 %107)
  %109 = load i32*, i32** %12, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 12
  store i32* %110, i32** %12, align 8
  %111 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %11, align 8
  %112 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @MLC_ECC_AUTO_ENC_REG(i32 %113)
  %115 = call i32 @writeb(i32 0, i32 %114)
  %116 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %117 = call i32 @lpc32xx_waitfunc_controller(%struct.nand_chip* %116)
  br label %118

118:                                              ; preds = %92
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %15, align 4
  br label %46

121:                                              ; preds = %46
  %122 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %123 = call i32 @nand_prog_page_end_op(%struct.nand_chip* %122)
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %121, %71
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nand_prog_page_begin_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @MLC_ECC_ENC_REG(i32) #1

declare dso_local i32 @lpc32xx_xmit_dma(%struct.mtd_info*, i32*, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @MLC_BUFF(i32) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @MLC_ECC_AUTO_ENC_REG(i32) #1

declare dso_local i32 @lpc32xx_waitfunc_controller(%struct.nand_chip*) #1

declare dso_local i32 @nand_prog_page_end_op(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
