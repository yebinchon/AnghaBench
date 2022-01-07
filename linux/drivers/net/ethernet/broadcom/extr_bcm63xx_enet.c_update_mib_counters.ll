; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_update_mib_counters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcm63xx_enet.c_update_mib_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_enet_stats = type { i32, i32, i32 }
%struct.bcm_enet_priv = type { i32 }

@BCM_ENET_STATS_LEN = common dso_local global i32 0, align 4
@bcm_enet_gstrings_stats = common dso_local global %struct.bcm_enet_stats* null, align 8
@unused_mib_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_enet_priv*)* @update_mib_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_mib_counters(%struct.bcm_enet_priv* %0) #0 {
  %2 = alloca %struct.bcm_enet_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_enet_stats*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.bcm_enet_priv* %0, %struct.bcm_enet_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %55, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @BCM_ENET_STATS_LEN, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %58

11:                                               ; preds = %7
  %12 = load %struct.bcm_enet_stats*, %struct.bcm_enet_stats** @bcm_enet_gstrings_stats, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.bcm_enet_stats, %struct.bcm_enet_stats* %12, i64 %14
  store %struct.bcm_enet_stats* %15, %struct.bcm_enet_stats** %4, align 8
  %16 = load %struct.bcm_enet_stats*, %struct.bcm_enet_stats** %4, align 8
  %17 = getelementptr inbounds %struct.bcm_enet_stats, %struct.bcm_enet_stats* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %55

21:                                               ; preds = %11
  %22 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %2, align 8
  %23 = load %struct.bcm_enet_stats*, %struct.bcm_enet_stats** %4, align 8
  %24 = getelementptr inbounds %struct.bcm_enet_stats, %struct.bcm_enet_stats* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ENET_MIB_REG(i32 %25)
  %27 = call i64 @enet_readl(%struct.bcm_enet_priv* %22, i32 %26)
  store i64 %27, i64* %5, align 8
  %28 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %2, align 8
  %29 = bitcast %struct.bcm_enet_priv* %28 to i8*
  %30 = load %struct.bcm_enet_stats*, %struct.bcm_enet_stats** %4, align 8
  %31 = getelementptr inbounds %struct.bcm_enet_stats, %struct.bcm_enet_stats* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  store i8* %34, i8** %6, align 8
  %35 = load %struct.bcm_enet_stats*, %struct.bcm_enet_stats** %4, align 8
  %36 = getelementptr inbounds %struct.bcm_enet_stats, %struct.bcm_enet_stats* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp eq i64 %38, 4
  br i1 %39, label %40, label %48

40:                                               ; preds = %21
  %41 = load i64, i64* %5, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = bitcast i8* %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %41
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 4
  br label %54

48:                                               ; preds = %21
  %49 = load i64, i64* %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = bitcast i8* %50 to i64*
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  br label %54

54:                                               ; preds = %48, %40
  br label %55

55:                                               ; preds = %54, %20
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %7

58:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %73, %58
  %60 = load i32, i32* %3, align 4
  %61 = load i32*, i32** @unused_mib_regs, align 8
  %62 = call i32 @ARRAY_SIZE(i32* %61)
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load %struct.bcm_enet_priv*, %struct.bcm_enet_priv** %2, align 8
  %66 = load i32*, i32** @unused_mib_regs, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ENET_MIB_REG(i32 %70)
  %72 = call i64 @enet_readl(%struct.bcm_enet_priv* %65, i32 %71)
  br label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %59

76:                                               ; preds = %59
  ret void
}

declare dso_local i64 @enet_readl(%struct.bcm_enet_priv*, i32) #1

declare dso_local i32 @ENET_MIB_REG(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
