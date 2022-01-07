; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac5.c_dwmac5_safety_feat_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac5.c_dwmac5_safety_feat_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.stmmac_safety_stats = type { i32 }

@dwmac5_all_errors = common dso_local global %struct.TYPE_5__* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwmac5_safety_feat_dump(%struct.stmmac_safety_stats* %0, i32 %1, i64* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.stmmac_safety_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  store %struct.stmmac_safety_stats* %0, %struct.stmmac_safety_stats** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sdiv i32 %13, 32
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = srem i32 %15, 32
  store i32 %16, i32* %11, align 4
  %17 = load %struct.stmmac_safety_stats*, %struct.stmmac_safety_stats** %6, align 8
  %18 = bitcast %struct.stmmac_safety_stats* %17 to i64*
  store i64* %18, i64** %12, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dwmac5_all_errors, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %20)
  %22 = icmp sge i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %69

26:                                               ; preds = %4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dwmac5_all_errors, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %26
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %69

42:                                               ; preds = %26
  %43 = load i64*, i64** %8, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i64*, i64** %12, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %8, align 8
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %45, %42
  %53 = load i8**, i8*** %9, align 8
  %54 = icmp ne i8** %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @dwmac5_all_errors, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i8**, i8*** %9, align 8
  store i8* %66, i8** %67, align 8
  br label %68

68:                                               ; preds = %55, %52
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %68, %39, %23
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
