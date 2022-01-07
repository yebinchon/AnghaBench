; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_update_mib_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_update_mib_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_stats = type { i32, i32, i64, i64 }
%struct.bcmgenet_priv = type { i32 }

@BCMGENET_STATS_LEN = common dso_local global i32 0, align 4
@bcmgenet_gstrings_stats = common dso_local global %struct.bcmgenet_stats* null, align 8
@BCMGENET_STAT_OFFSET = common dso_local global i64 0, align 8
@UMAC_MIB_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcmgenet_priv*)* @bcmgenet_update_mib_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmgenet_update_mib_counters(%struct.bcmgenet_priv* %0) #0 {
  %2 = alloca %struct.bcmgenet_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcmgenet_stats*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %83, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @BCMGENET_STATS_LEN, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %86

13:                                               ; preds = %9
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.bcmgenet_stats*, %struct.bcmgenet_stats** @bcmgenet_gstrings_stats, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bcmgenet_stats, %struct.bcmgenet_stats* %14, i64 %16
  store %struct.bcmgenet_stats* %17, %struct.bcmgenet_stats** %5, align 8
  %18 = load %struct.bcmgenet_stats*, %struct.bcmgenet_stats** %5, align 8
  %19 = getelementptr inbounds %struct.bcmgenet_stats, %struct.bcmgenet_stats* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %65 [
    i32 130, label %21
    i32 128, label %21
    i32 129, label %22
    i32 132, label %26
    i32 133, label %30
    i32 131, label %39
  ]

21:                                               ; preds = %13, %13
  br label %83

22:                                               ; preds = %13
  %23 = load i64, i64* @BCMGENET_STAT_OFFSET, align 8
  %24 = load i64, i64* %6, align 8
  %25 = add nsw i64 %24, %23
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %13, %22
  %27 = load i64, i64* @BCMGENET_STAT_OFFSET, align 8
  %28 = load i64, i64* %6, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %13, %26
  %31 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %32 = load i32, i32* @UMAC_MIB_START, align 4
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* %6, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv* %31, i64 %37)
  store i32 %38, i32* %7, align 4
  store i64 0, i64* %6, align 8
  br label %65

39:                                               ; preds = %13
  %40 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %41 = call i32 @GENET_IS_V1(%struct.bcmgenet_priv* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %45 = load %struct.bcmgenet_stats*, %struct.bcmgenet_stats** %5, align 8
  %46 = getelementptr inbounds %struct.bcmgenet_stats, %struct.bcmgenet_stats* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv* %44, i64 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %53 = load %struct.bcmgenet_stats*, %struct.bcmgenet_stats** %5, align 8
  %54 = getelementptr inbounds %struct.bcmgenet_stats, %struct.bcmgenet_stats* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv* %52, i32 0, i64 %55)
  br label %57

57:                                               ; preds = %51, %43
  br label %64

58:                                               ; preds = %39
  %59 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %60 = load %struct.bcmgenet_stats*, %struct.bcmgenet_stats** %5, align 8
  %61 = getelementptr inbounds %struct.bcmgenet_stats, %struct.bcmgenet_stats* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @bcmgenet_update_stat_misc(%struct.bcmgenet_priv* %59, i64 %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %58, %57
  br label %65

65:                                               ; preds = %13, %64, %30
  %66 = load %struct.bcmgenet_stats*, %struct.bcmgenet_stats** %5, align 8
  %67 = getelementptr inbounds %struct.bcmgenet_stats, %struct.bcmgenet_stats* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %4, align 4
  %73 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %74 = bitcast %struct.bcmgenet_priv* %73 to i8*
  %75 = load %struct.bcmgenet_stats*, %struct.bcmgenet_stats** %5, align 8
  %76 = getelementptr inbounds %struct.bcmgenet_stats, %struct.bcmgenet_stats* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %74, i64 %78
  store i8* %79, i8** %8, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = bitcast i8* %81 to i32*
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %65, %21
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %9

86:                                               ; preds = %9
  ret void
}

declare dso_local i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv*, i64) #1

declare dso_local i32 @GENET_IS_V1(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv*, i32, i64) #1

declare dso_local i32 @bcmgenet_update_stat_misc(%struct.bcmgenet_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
