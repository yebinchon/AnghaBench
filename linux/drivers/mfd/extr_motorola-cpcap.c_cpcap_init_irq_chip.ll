; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_motorola-cpcap.c_cpcap_init_irq_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_motorola-cpcap.c_cpcap_init_irq_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_irq_chip = type { i32, %struct.cpcap_ddata*, %struct.regmap_irq* }
%struct.cpcap_ddata = type { %struct.TYPE_2__*, i32*, i32, %struct.regmap_irq* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.regmap_irq = type { i32 }

@cpcap_irq_chip = common dso_local global %struct.regmap_irq_chip* null, align 8
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"could not add irq chip %i: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpcap_ddata*, i32, i32, i32)* @cpcap_init_irq_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_init_irq_chip(%struct.cpcap_ddata* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpcap_ddata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.regmap_irq_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.regmap_irq*, align 8
  store %struct.cpcap_ddata* %0, %struct.cpcap_ddata** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.regmap_irq_chip*, %struct.regmap_irq_chip** @cpcap_irq_chip, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.regmap_irq_chip, %struct.regmap_irq_chip* %14, i64 %16
  store %struct.regmap_irq_chip* %17, %struct.regmap_irq_chip** %10, align 8
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %11, align 4
  br label %19

19:                                               ; preds = %37, %4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %21, %22
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %6, align 8
  %27 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %26, i32 0, i32 3
  %28 = load %struct.regmap_irq*, %struct.regmap_irq** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.regmap_irq, %struct.regmap_irq* %28, i64 %30
  store %struct.regmap_irq* %31, %struct.regmap_irq** %13, align 8
  %32 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %6, align 8
  %33 = load %struct.regmap_irq*, %struct.regmap_irq** %13, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @cpcap_init_one_regmap_irq(%struct.cpcap_ddata* %32, %struct.regmap_irq* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %19

40:                                               ; preds = %19
  %41 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %6, align 8
  %42 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %41, i32 0, i32 3
  %43 = load %struct.regmap_irq*, %struct.regmap_irq** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.regmap_irq, %struct.regmap_irq* %43, i64 %45
  %47 = load %struct.regmap_irq_chip*, %struct.regmap_irq_chip** %10, align 8
  %48 = getelementptr inbounds %struct.regmap_irq_chip, %struct.regmap_irq_chip* %47, i32 0, i32 2
  store %struct.regmap_irq* %46, %struct.regmap_irq** %48, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.regmap_irq_chip*, %struct.regmap_irq_chip** %10, align 8
  %51 = getelementptr inbounds %struct.regmap_irq_chip, %struct.regmap_irq_chip* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %6, align 8
  %53 = load %struct.regmap_irq_chip*, %struct.regmap_irq_chip** %10, align 8
  %54 = getelementptr inbounds %struct.regmap_irq_chip, %struct.regmap_irq_chip* %53, i32 0, i32 1
  store %struct.cpcap_ddata* %52, %struct.cpcap_ddata** %54, align 8
  %55 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %6, align 8
  %56 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %6, align 8
  %60 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %6, align 8
  %63 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %6, align 8
  %68 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @irq_get_trigger_type(i32 %71)
  %73 = load i32, i32* @IRQF_SHARED, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.regmap_irq_chip*, %struct.regmap_irq_chip** %10, align 8
  %76 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %6, align 8
  %77 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i32 @devm_regmap_add_irq_chip(i32* %58, i32 %61, i32 %66, i32 %74, i32 -1, %struct.regmap_irq_chip* %75, i32* %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %40
  %86 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %6, align 8
  %87 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %5, align 4
  br label %95

94:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %85
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @cpcap_init_one_regmap_irq(%struct.cpcap_ddata*, %struct.regmap_irq*, i32, i32) #1

declare dso_local i32 @devm_regmap_add_irq_chip(i32*, i32, i32, i32, i32, %struct.regmap_irq_chip*, i32*) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
