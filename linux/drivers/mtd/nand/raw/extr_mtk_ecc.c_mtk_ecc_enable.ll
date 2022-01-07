; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_ecc.c_mtk_ecc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_ecc.c_mtk_ecc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ecc = type { i64, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64*, i64 }
%struct.mtk_ecc_config = type { i32, i64 }

@.str = private unnamed_addr constant [37 x i8] c"interrupted when attempting to lock\0A\00", align 1
@ECC_NFI_MODE = common dso_local global i64 0, align 8
@ECC_ENCODE = common dso_local global i32 0, align 4
@ECC_IRQ_EN = common dso_local global i32 0, align 4
@ECC_PG_IRQ_SEL = common dso_local global i32 0, align 4
@ECC_ENCIRQ_EN = common dso_local global i64 0, align 8
@ECC_DECIRQ_EN = common dso_local global i64 0, align 8
@ECC_OP_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_ecc_enable(%struct.mtk_ecc* %0, %struct.mtk_ecc_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_ecc*, align 8
  %5 = alloca %struct.mtk_ecc_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtk_ecc* %0, %struct.mtk_ecc** %4, align 8
  store %struct.mtk_ecc_config* %1, %struct.mtk_ecc_config** %5, align 8
  %9 = load %struct.mtk_ecc_config*, %struct.mtk_ecc_config** %5, align 8
  %10 = getelementptr inbounds %struct.mtk_ecc_config, %struct.mtk_ecc_config* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %13 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %12, i32 0, i32 3
  %14 = call i32 @mutex_lock_interruptible(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %19 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %112

23:                                               ; preds = %2
  %24 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @mtk_ecc_wait_idle(%struct.mtk_ecc* %24, i32 %25)
  %27 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %28 = load %struct.mtk_ecc_config*, %struct.mtk_ecc_config** %5, align 8
  %29 = call i32 @mtk_ecc_config(%struct.mtk_ecc* %27, %struct.mtk_ecc_config* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %34 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %33, i32 0, i32 3
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %112

37:                                               ; preds = %23
  %38 = load %struct.mtk_ecc_config*, %struct.mtk_ecc_config** %5, align 8
  %39 = getelementptr inbounds %struct.mtk_ecc_config, %struct.mtk_ecc_config* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ECC_NFI_MODE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @ECC_ENCODE, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %103

47:                                               ; preds = %43, %37
  %48 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %49 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %48, i32 0, i32 2
  %50 = call i32 @init_completion(i32* %49)
  %51 = load i32, i32* @ECC_IRQ_EN, align 4
  store i32 %51, i32* %7, align 4
  %52 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %53 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %47
  %59 = load %struct.mtk_ecc_config*, %struct.mtk_ecc_config** %5, align 8
  %60 = getelementptr inbounds %struct.mtk_ecc_config, %struct.mtk_ecc_config* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ECC_NFI_MODE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* @ECC_PG_IRQ_SEL, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %64, %58, %47
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @ECC_ENCODE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %75 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %78 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* @ECC_ENCIRQ_EN, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %76, %84
  %86 = call i32 @writew(i32 %73, i64 %85)
  br label %102

87:                                               ; preds = %68
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %90 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %93 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* @ECC_DECIRQ_EN, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %91, %99
  %101 = call i32 @writew(i32 %88, i64 %100)
  br label %102

102:                                              ; preds = %87, %72
  br label %103

103:                                              ; preds = %102, %43
  %104 = load i32, i32* @ECC_OP_ENABLE, align 4
  %105 = load %struct.mtk_ecc*, %struct.mtk_ecc** %4, align 8
  %106 = getelementptr inbounds %struct.mtk_ecc, %struct.mtk_ecc* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = call i64 @ECC_CTL_REG(i32 %108)
  %110 = add nsw i64 %107, %109
  %111 = call i32 @writew(i32 %104, i64 %110)
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %103, %32, %17
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mtk_ecc_wait_idle(%struct.mtk_ecc*, i32) #1

declare dso_local i32 @mtk_ecc_config(%struct.mtk_ecc*, %struct.mtk_ecc_config*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i64 @ECC_CTL_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
