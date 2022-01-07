; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/lmc/extr_lmc_main.c_lmc_mii_writereg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/lmc/extr_lmc_main.c_lmc_mii_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"lmc_mii_writereg in\00", align 1
@csr_9 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"lmc_mii_writereg out\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lmc_mii_writereg(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 32, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 %12, 23
  %14 = or i32 1342308352, %13
  %15 = load i32, i32* %7, align 4
  %16 = shl i32 %15, 18
  %17 = or i32 %14, %16
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @lmc_trace(i32 %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = call i32 @LMC_MII_SYNC(%struct.TYPE_5__* %24)
  store i32 31, i32* %9, align 4
  br label %26

26:                                               ; preds = %37, %4
  %27 = load i32, i32* %9, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %26
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = shl i32 1, %31
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 131072, i32* %11, align 4
  br label %37

36:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = load i32, i32* @csr_9, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @LMC_CSR_WRITE(%struct.TYPE_5__* %38, i32 %39, i32 %40)
  %42 = call i32 (...) @lmc_delay()
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = load i32, i32* @csr_9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, 65536
  %47 = call i32 @LMC_CSR_WRITE(%struct.TYPE_5__* %43, i32 %44, i32 %46)
  %48 = call i32 (...) @lmc_delay()
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %9, align 4
  br label %26

51:                                               ; preds = %26
  store i32 2, i32* %9, align 4
  br label %52

52:                                               ; preds = %55, %51
  %53 = load i32, i32* %9, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = load i32, i32* @csr_9, align 4
  %58 = call i32 @LMC_CSR_WRITE(%struct.TYPE_5__* %56, i32 %57, i32 262144)
  %59 = call i32 (...) @lmc_delay()
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %61 = load i32, i32* @csr_9, align 4
  %62 = call i32 @LMC_CSR_WRITE(%struct.TYPE_5__* %60, i32 %61, i32 327680)
  %63 = call i32 (...) @lmc_delay()
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %9, align 4
  br label %52

66:                                               ; preds = %52
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @lmc_trace(i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @lmc_trace(i32, i8*) #1

declare dso_local i32 @LMC_MII_SYNC(%struct.TYPE_5__*) #1

declare dso_local i32 @LMC_CSR_WRITE(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @lmc_delay(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
