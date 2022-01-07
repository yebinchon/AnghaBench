; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_xcv.c_xcv_setup_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_xcv.c_xcv_setup_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@xcv = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [42 x i8] c"XCV init not done, probe may have failed\0A\00", align 1
@XCV_CTL = common dso_local global i64 0, align 8
@XCV_RESET = common dso_local global i64 0, align 8
@TX_DATA_RESET = common dso_local global i32 0, align 4
@RX_DATA_RESET = common dso_local global i32 0, align 4
@TX_PKT_RESET = common dso_local global i32 0, align 4
@RX_PKT_RESET = common dso_local global i32 0, align 4
@XCV_BATCH_CRD_RET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xcv_setup_link(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 2, i32* %6, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %110

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 100
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i32 1, i32* %6, align 4
  br label %20

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %18, %15
  br label %20

20:                                               ; preds = %19, %14
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %84

23:                                               ; preds = %20
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @XCV_CTL, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readq_relaxed(i64 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, -4
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @XCV_CTL, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writeq_relaxed(i32 %35, i64 %40)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @XCV_RESET, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @readq_relaxed(i64 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @TX_DATA_RESET, align 4
  %49 = load i32, i32* @RX_DATA_RESET, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @XCV_RESET, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writeq_relaxed(i32 %53, i64 %58)
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @XCV_RESET, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @readq_relaxed(i64 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @TX_PKT_RESET, align 4
  %67 = load i32, i32* @RX_PKT_RESET, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @XCV_RESET, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writeq_relaxed(i32 %71, i64 %76)
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @XCV_BATCH_CRD_RET, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writeq_relaxed(i32 1, i64 %82)
  br label %110

84:                                               ; preds = %20
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @XCV_RESET, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @readq_relaxed(i64 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* @TX_PKT_RESET, align 4
  %92 = load i32, i32* @RX_PKT_RESET, align 4
  %93 = or i32 %91, %92
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %5, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @XCV_RESET, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writeq_relaxed(i32 %97, i64 %102)
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xcv, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @XCV_RESET, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @readq_relaxed(i64 %108)
  br label %110

110:                                              ; preds = %9, %84, %23
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @readq_relaxed(i64) #1

declare dso_local i32 @writeq_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
