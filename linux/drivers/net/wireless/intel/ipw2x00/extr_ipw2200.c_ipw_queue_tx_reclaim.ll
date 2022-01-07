; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_queue_tx_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_queue_tx_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i32 }
%struct.clx2_tx_queue = type { %struct.clx2_queue }
%struct.clx2_queue = type { i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"Read index for DMA queue (%d) is out of range [0-%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, %struct.clx2_tx_queue*, i32)* @ipw_queue_tx_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_queue_tx_reclaim(%struct.ipw_priv* %0, %struct.clx2_tx_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.ipw_priv*, align 8
  %5 = alloca %struct.clx2_tx_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.clx2_queue*, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %4, align 8
  store %struct.clx2_tx_queue* %1, %struct.clx2_tx_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.clx2_tx_queue*, %struct.clx2_tx_queue** %5, align 8
  %11 = getelementptr inbounds %struct.clx2_tx_queue, %struct.clx2_tx_queue* %10, i32 0, i32 0
  store %struct.clx2_queue* %11, %struct.clx2_queue** %9, align 8
  %12 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %13 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %14 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @ipw_read32(%struct.ipw_priv* %12, i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %19 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %25 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @IPW_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %26)
  br label %54

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %43, %28
  %30 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %31 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %37 = load %struct.clx2_tx_queue*, %struct.clx2_tx_queue** %5, align 8
  %38 = call i32 @ipw_queue_tx_free_tfd(%struct.ipw_priv* %36, %struct.clx2_tx_queue* %37)
  %39 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %40 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %35
  %44 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %45 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %48 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @ipw_queue_inc_wrap(i64 %46, i64 %49)
  %51 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %52 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %29

53:                                               ; preds = %29
  br label %54

54:                                               ; preds = %53, %22
  %55 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %56 = call i64 @ipw_tx_queue_space(%struct.clx2_queue* %55)
  %57 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %58 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load %struct.ipw_priv*, %struct.ipw_priv** %4, align 8
  %66 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @netif_wake_queue(i32 %67)
  br label %69

69:                                               ; preds = %64, %61, %54
  %70 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %71 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %75 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %69
  %82 = load %struct.clx2_queue*, %struct.clx2_queue** %9, align 8
  %83 = getelementptr inbounds %struct.clx2_queue, %struct.clx2_queue* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %81, %69
  %90 = load i32, i32* %8, align 4
  ret i32 %90
}

declare dso_local i64 @ipw_read32(%struct.ipw_priv*, i32) #1

declare dso_local i32 @IPW_ERROR(i8*, i64, i64) #1

declare dso_local i32 @ipw_queue_tx_free_tfd(%struct.ipw_priv*, %struct.clx2_tx_queue*) #1

declare dso_local i64 @ipw_queue_inc_wrap(i64, i64) #1

declare dso_local i64 @ipw_tx_queue_space(%struct.clx2_queue*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
