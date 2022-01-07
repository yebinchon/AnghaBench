; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_update_mib_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_bcm_sysport_update_mib_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_stats = type { i32, i32, i64, i32 }
%struct.bcm_sysport_priv = type { i32, i32 }

@BCM_SYSPORT_STATS_LEN = common dso_local global i32 0, align 4
@bcm_sysport_gstrings_stats = common dso_local global %struct.bcm_sysport_stats* null, align 8
@UMAC_MIB_STAT_OFFSET = common dso_local global i64 0, align 8
@UMAC_MIB_START = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"updated MIB counters\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_sysport_priv*)* @bcm_sysport_update_mib_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sysport_update_mib_counters(%struct.bcm_sysport_priv* %0) #0 {
  %2 = alloca %struct.bcm_sysport_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_sysport_stats*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.bcm_sysport_priv* %0, %struct.bcm_sysport_priv** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %92, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @BCM_SYSPORT_STATS_LEN, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %95

13:                                               ; preds = %9
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.bcm_sysport_stats*, %struct.bcm_sysport_stats** @bcm_sysport_gstrings_stats, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.bcm_sysport_stats, %struct.bcm_sysport_stats* %14, i64 %16
  store %struct.bcm_sysport_stats* %17, %struct.bcm_sysport_stats** %5, align 8
  %18 = load %struct.bcm_sysport_stats*, %struct.bcm_sysport_stats** %5, align 8
  %19 = getelementptr inbounds %struct.bcm_sysport_stats, %struct.bcm_sysport_stats* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %74 [
    i32 133, label %21
    i32 132, label %21
    i32 128, label %21
    i32 135, label %22
    i32 134, label %22
    i32 130, label %22
    i32 129, label %44
    i32 131, label %59
  ]

21:                                               ; preds = %13, %13, %13
  br label %92

22:                                               ; preds = %13, %13, %13
  %23 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %24 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %92

28:                                               ; preds = %22
  %29 = load %struct.bcm_sysport_stats*, %struct.bcm_sysport_stats** %5, align 8
  %30 = getelementptr inbounds %struct.bcm_sysport_stats, %struct.bcm_sysport_stats* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 135
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i64, i64* @UMAC_MIB_STAT_OFFSET, align 8
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %33, %28
  %36 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %37 = load i32, i32* @UMAC_MIB_START, align 4
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %6, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @umac_readl(%struct.bcm_sysport_priv* %36, i64 %42)
  store i32 %43, i32* %7, align 4
  br label %74

44:                                               ; preds = %13
  %45 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %46 = load %struct.bcm_sysport_stats*, %struct.bcm_sysport_stats** %5, align 8
  %47 = getelementptr inbounds %struct.bcm_sysport_stats, %struct.bcm_sysport_stats* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @rxchk_readl(%struct.bcm_sysport_priv* %45, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %54 = load %struct.bcm_sysport_stats*, %struct.bcm_sysport_stats** %5, align 8
  %55 = getelementptr inbounds %struct.bcm_sysport_stats, %struct.bcm_sysport_stats* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @rxchk_writel(%struct.bcm_sysport_priv* %53, i32 0, i32 %56)
  br label %58

58:                                               ; preds = %52, %44
  br label %74

59:                                               ; preds = %13
  %60 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %61 = load %struct.bcm_sysport_stats*, %struct.bcm_sysport_stats** %5, align 8
  %62 = getelementptr inbounds %struct.bcm_sysport_stats, %struct.bcm_sysport_stats* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @rbuf_readl(%struct.bcm_sysport_priv* %60, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %65, -1
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %69 = load %struct.bcm_sysport_stats*, %struct.bcm_sysport_stats** %5, align 8
  %70 = getelementptr inbounds %struct.bcm_sysport_stats, %struct.bcm_sysport_stats* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @rbuf_writel(%struct.bcm_sysport_priv* %68, i32 0, i32 %71)
  br label %73

73:                                               ; preds = %67, %59
  br label %74

74:                                               ; preds = %13, %73, %58, %35
  %75 = load %struct.bcm_sysport_stats*, %struct.bcm_sysport_stats** %5, align 8
  %76 = getelementptr inbounds %struct.bcm_sysport_stats, %struct.bcm_sysport_stats* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %4, align 4
  %82 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %83 = bitcast %struct.bcm_sysport_priv* %82 to i8*
  %84 = load %struct.bcm_sysport_stats*, %struct.bcm_sysport_stats** %5, align 8
  %85 = getelementptr inbounds %struct.bcm_sysport_stats, %struct.bcm_sysport_stats* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %83, i64 %87
  store i8* %88, i8** %8, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = bitcast i8* %90 to i32*
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %74, %27, %21
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %9

95:                                               ; preds = %9
  %96 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %97 = load i32, i32* @hw, align 4
  %98 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %99 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @netif_dbg(%struct.bcm_sysport_priv* %96, i32 %97, i32 %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @umac_readl(%struct.bcm_sysport_priv*, i64) #1

declare dso_local i32 @rxchk_readl(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @rxchk_writel(%struct.bcm_sysport_priv*, i32, i32) #1

declare dso_local i32 @rbuf_readl(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @rbuf_writel(%struct.bcm_sysport_priv*, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.bcm_sysport_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
