; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_ecc.c_mtk_ecc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_ecc.c_mtk_ecc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ecc = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64* }

@ECC_DECIRQ_STA = common dso_local global i64 0, align 8
@ECC_IRQ_EN = common dso_local global i32 0, align 4
@ECC_DECDONE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ECC_ENCIRQ_STA = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mtk_ecc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_ecc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mtk_ecc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.mtk_ecc*
  store %struct.mtk_ecc* %10, %struct.mtk_ecc** %6, align 8
  %11 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %12 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %15 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @ECC_DECIRQ_STA, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %13, %21
  %23 = call i32 @readw(i64 %22)
  %24 = load i32, i32* @ECC_IRQ_EN, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %2
  %29 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %30 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %33 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @ECC_DECDONE, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %31, %39
  %41 = call i32 @readw(i64 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %44 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %28
  %49 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %50 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %53 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @ECC_DECIRQ_STA, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %51, %59
  %61 = call i32 @readw(i64 %60)
  %62 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %63 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %65 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %64, i32 0, i32 1
  %66 = call i32 @complete(i32* %65)
  br label %69

67:                                               ; preds = %28
  %68 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %68, i32* %3, align 4
  br label %97

69:                                               ; preds = %48
  br label %95

70:                                               ; preds = %2
  %71 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %72 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %75 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* @ECC_ENCIRQ_STA, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %73, %81
  %83 = call i32 @readl(i64 %82)
  %84 = load i32, i32* @ECC_IRQ_EN, align 4
  %85 = and i32 %83, %84
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %70
  %89 = load %struct.mtk_ecc*, %struct.mtk_ecc** %6, align 8
  %90 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %89, i32 0, i32 1
  %91 = call i32 @complete(i32* %90)
  br label %94

92:                                               ; preds = %70
  %93 = load i32, i32* @IRQ_NONE, align 4
  store i32 %93, i32* %3, align 4
  br label %97

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %69
  %96 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %92, %67
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
