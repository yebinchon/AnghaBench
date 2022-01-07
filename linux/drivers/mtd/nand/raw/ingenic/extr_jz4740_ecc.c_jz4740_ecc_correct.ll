; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4740_ecc.c_jz4740_ecc_correct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/ingenic/extr_jz4740_ecc.c_jz4740_ecc_correct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_ecc = type { i64 }
%struct.ingenic_ecc_params = type { i32, i32 }

@JZ_REG_NAND_PAR0 = common dso_local global i64 0, align 8
@JZ_REG_NAND_ECC_CTRL = common dso_local global i64 0, align 8
@JZ_NAND_ECC_CTRL_PAR_READY = common dso_local global i32 0, align 4
@JZ_REG_NAND_IRQ_STAT = common dso_local global i64 0, align 8
@JZ_NAND_STATUS_DEC_FINISH = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@JZ_NAND_ECC_CTRL_ENABLE = common dso_local global i32 0, align 4
@JZ_NAND_STATUS_ERROR = common dso_local global i32 0, align 4
@JZ_NAND_STATUS_UNCOR_ERROR = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@JZ_NAND_STATUS_ERR_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ingenic_ecc*, %struct.ingenic_ecc_params*, i32*, i32*)* @jz4740_ecc_correct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz4740_ecc_correct(%struct.ingenic_ecc* %0, %struct.ingenic_ecc_params* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ingenic_ecc*, align 8
  %7 = alloca %struct.ingenic_ecc_params*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ingenic_ecc* %0, %struct.ingenic_ecc** %6, align 8
  store %struct.ingenic_ecc_params* %1, %struct.ingenic_ecc_params** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 1000, i32* %16, align 4
  %17 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %6, align 8
  %18 = call i32 @jz4740_ecc_reset(%struct.ingenic_ecc* %17, i32 0)
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %40, %4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %7, align 8
  %22 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %19
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %6, align 8
  %32 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @JZ_REG_NAND_PAR0, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = call i32 @writeb(i32 %30, i64 %38)
  br label %40

40:                                               ; preds = %25
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %19

43:                                               ; preds = %19
  %44 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %6, align 8
  %45 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @JZ_REG_NAND_ECC_CTRL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl(i64 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* @JZ_NAND_ECC_CTRL_PAR_READY, align 4
  %51 = load i32, i32* %13, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %6, align 8
  %55 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @JZ_REG_NAND_ECC_CTRL, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  br label %60

60:                                               ; preds = %76, %43
  %61 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %6, align 8
  %62 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @JZ_REG_NAND_IRQ_STAT, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @readl(i64 %65)
  store i32 %66, i32* %14, align 4
  br label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @JZ_NAND_STATUS_DEC_FINISH, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %16, align 4
  %74 = add i32 %73, -1
  store i32 %74, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %72, %67
  %77 = phi i1 [ false, %67 ], [ %75, %72 ]
  br i1 %77, label %60, label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %16, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* @ETIMEDOUT, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %156

84:                                               ; preds = %78
  %85 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %6, align 8
  %86 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @JZ_REG_NAND_ECC_CTRL, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @readl(i64 %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* @JZ_NAND_ECC_CTRL_ENABLE, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %13, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %6, align 8
  %97 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @JZ_REG_NAND_ECC_CTRL, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel(i32 %95, i64 %100)
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @JZ_NAND_STATUS_ERROR, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %155

106:                                              ; preds = %84
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @JZ_NAND_STATUS_UNCOR_ERROR, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* @EBADMSG, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %5, align 4
  br label %156

114:                                              ; preds = %106
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @JZ_NAND_STATUS_ERR_COUNT, align 4
  %117 = and i32 %115, %116
  %118 = ashr i32 %117, 29
  store i32 %118, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %119

119:                                              ; preds = %150, %114
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %153

123:                                              ; preds = %119
  %124 = load %struct.ingenic_ecc*, %struct.ingenic_ecc** %6, align 8
  %125 = getelementptr inbounds %struct.ingenic_ecc, %struct.ingenic_ecc* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i64 @JZ_REG_NAND_ERR(i32 %127)
  %129 = add nsw i64 %126, %128
  %130 = call i32 @readl(i64 %129)
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %15, align 4
  %132 = ashr i32 %131, 16
  %133 = and i32 %132, 511
  %134 = sub nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp sge i32 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %123
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.ingenic_ecc_params*, %struct.ingenic_ecc_params** %7, align 8
  %140 = getelementptr inbounds %struct.ingenic_ecc_params, %struct.ingenic_ecc_params* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %137
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %15, align 4
  %147 = and i32 %146, 511
  %148 = call i32 @jz_nand_correct_data(i32* %144, i32 %145, i32 %147)
  br label %149

149:                                              ; preds = %143, %137, %123
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %119

153:                                              ; preds = %119
  %154 = load i32, i32* %11, align 4
  store i32 %154, i32* %5, align 4
  br label %156

155:                                              ; preds = %84
  store i32 0, i32* %5, align 4
  br label %156

156:                                              ; preds = %155, %153, %111, %81
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @jz4740_ecc_reset(%struct.ingenic_ecc*, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @JZ_REG_NAND_ERR(i32) #1

declare dso_local i32 @jz_nand_correct_data(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
