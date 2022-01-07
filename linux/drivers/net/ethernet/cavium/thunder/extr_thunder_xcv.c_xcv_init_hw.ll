; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_xcv.c_xcv_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_xcv.c_xcv_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@xcv = common dso_local global %struct.TYPE_2__* null, align 8
@XCV_RESET = common dso_local global i64 0, align 8
@DLL_RESET = common dso_local global i32 0, align 4
@CLK_RESET = common dso_local global i32 0, align 4
@XCV_DLL_CTL = common dso_local global i64 0, align 8
@CLKRX_BYP = common dso_local global i32 0, align 4
@COMP_EN = common dso_local global i32 0, align 4
@PORT_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xcv_init_hw() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @XCV_RESET, align 8
  %6 = add nsw i64 %4, %5
  %7 = call i32 @readq_relaxed(i64 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @DLL_RESET, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %1, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @XCV_RESET, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writeq_relaxed(i32 %12, i64 %17)
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @XCV_RESET, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readq_relaxed(i64 %23)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* @CLK_RESET, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %1, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %1, align 4
  %29 = load i32, i32* %1, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @XCV_RESET, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writeq_relaxed(i32 %29, i64 %34)
  %36 = call i32 @msleep(i32 1)
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @XCV_DLL_CTL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readq_relaxed(i64 %41)
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = and i32 %43, -65284
  store i32 %44, i32* %1, align 4
  %45 = load i32, i32* @CLKRX_BYP, align 4
  %46 = load i32, i32* %1, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %1, align 4
  %48 = load i32, i32* %1, align 4
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @XCV_DLL_CTL, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writeq_relaxed(i32 %48, i64 %53)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @XCV_RESET, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readq_relaxed(i64 %59)
  store i32 %60, i32* %1, align 4
  %61 = load i32, i32* @COMP_EN, align 4
  %62 = load i32, i32* %1, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %1, align 4
  %64 = load i32, i32* %1, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @XCV_RESET, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writeq_relaxed(i32 %64, i64 %69)
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @XCV_RESET, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @readq_relaxed(i64 %75)
  %77 = call i32 @msleep(i32 10)
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @XCV_RESET, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @readq_relaxed(i64 %82)
  store i32 %83, i32* %1, align 4
  %84 = load i32, i32* @PORT_EN, align 4
  %85 = load i32, i32* %1, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %1, align 4
  %87 = load i32, i32* %1, align 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @XCV_RESET, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writeq_relaxed(i32 %87, i64 %92)
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @XCV_RESET, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @readq_relaxed(i64 %98)
  store i32 %99, i32* %1, align 4
  %100 = load i32, i32* @CLK_RESET, align 4
  %101 = load i32, i32* %1, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %1, align 4
  %103 = load i32, i32* %1, align 4
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @XCV_RESET, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writeq_relaxed(i32 %103, i64 %108)
  ret void
}

declare dso_local i32 @readq_relaxed(i64) #1

declare dso_local i32 @writeq_relaxed(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
