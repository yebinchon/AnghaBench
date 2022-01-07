; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_ecc.c_mtk_ecc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_ecc.c_mtk_ecc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ecc = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@ECC_ENCODE = common dso_local global i32 0, align 4
@ECC_OP_ENABLE = common dso_local global i64 0, align 8
@ECC_DECODE = common dso_local global i32 0, align 4
@ECC_DECDONE = common dso_local global i64 0, align 8
@ECC_DECIRQ_EN = common dso_local global i64 0, align 8
@ECC_ENCIRQ_EN = common dso_local global i64 0, align 8
@ECC_OP_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mtk_ecc_disable(%struct.mtk_ecc* %0) #0 {
  %2 = alloca %struct.mtk_ecc*, align 8
  %3 = alloca i32, align 4
  store %struct.mtk_ecc* %0, %struct.mtk_ecc** %2, align 8
  %4 = load i32, i32* @ECC_ENCODE, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.mtk_ecc*, %struct.mtk_ecc** %2, align 8
  %6 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @ECC_CTL_REG(i32 %8)
  %10 = add nsw i64 %7, %9
  %11 = call i64 @readw(i64 %10)
  %12 = load i64, i64* @ECC_OP_ENABLE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ECC_DECODE, align 4
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = load %struct.mtk_ecc*, %struct.mtk_ecc** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @mtk_ecc_wait_idle(%struct.mtk_ecc* %17, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @ECC_DECODE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %16
  %24 = load %struct.mtk_ecc*, %struct.mtk_ecc** %2, align 8
  %25 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mtk_ecc*, %struct.mtk_ecc** %2, align 8
  %28 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @ECC_DECDONE, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %26, %34
  %36 = call i64 @readw(i64 %35)
  %37 = load %struct.mtk_ecc*, %struct.mtk_ecc** %2, align 8
  %38 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mtk_ecc*, %struct.mtk_ecc** %2, align 8
  %41 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @ECC_DECIRQ_EN, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %39, %47
  %49 = call i32 @writew(i32 0, i64 %48)
  br label %64

50:                                               ; preds = %16
  %51 = load %struct.mtk_ecc*, %struct.mtk_ecc** %2, align 8
  %52 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.mtk_ecc*, %struct.mtk_ecc** %2, align 8
  %55 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* @ECC_ENCIRQ_EN, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %53, %61
  %63 = call i32 @writew(i32 0, i64 %62)
  br label %64

64:                                               ; preds = %50, %23
  %65 = load i32, i32* @ECC_OP_DISABLE, align 4
  %66 = load %struct.mtk_ecc*, %struct.mtk_ecc** %2, align 8
  %67 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i64 @ECC_CTL_REG(i32 %69)
  %71 = add nsw i64 %68, %70
  %72 = call i32 @writew(i32 %65, i64 %71)
  %73 = load %struct.mtk_ecc*, %struct.mtk_ecc** %2, align 8
  %74 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  ret void
}

declare dso_local i64 @readw(i64) #1

declare dso_local i64 @ECC_CTL_REG(i32) #1

declare dso_local i32 @mtk_ecc_wait_idle(%struct.mtk_ecc*, i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
