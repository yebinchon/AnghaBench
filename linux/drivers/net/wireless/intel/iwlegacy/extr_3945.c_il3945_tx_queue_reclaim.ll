; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_tx_queue_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_tx_queue_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, %struct.TYPE_2__*, i32, %struct.il_tx_queue* }
%struct.TYPE_2__ = type { i32 (%struct.il_priv*, %struct.il_tx_queue*)* }
%struct.il_tx_queue = type { %struct.il_queue, %struct.sk_buff** }
%struct.il_queue = type { i32, i64, i32 }
%struct.sk_buff = type { i32 }

@IL39_CMD_QUEUE_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, i32, i32)* @il3945_tx_queue_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il3945_tx_queue_reclaim(%struct.il_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.il_tx_queue*, align 8
  %8 = alloca %struct.il_queue*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 3
  %12 = load %struct.il_tx_queue*, %struct.il_tx_queue** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %12, i64 %14
  store %struct.il_tx_queue* %15, %struct.il_tx_queue** %7, align 8
  %16 = load %struct.il_tx_queue*, %struct.il_tx_queue** %7, align 8
  %17 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %16, i32 0, i32 0
  store %struct.il_queue* %17, %struct.il_queue** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @IL39_CMD_QUEUE_NUM, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.il_queue*, %struct.il_queue** %8, align 8
  %25 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @il_queue_inc_wrap(i32 %23, i32 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %68, %3
  %30 = load %struct.il_queue*, %struct.il_queue** %8, align 8
  %31 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %79

35:                                               ; preds = %29
  %36 = load %struct.il_tx_queue*, %struct.il_tx_queue** %7, align 8
  %37 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %36, i32 0, i32 1
  %38 = load %struct.sk_buff**, %struct.sk_buff*** %37, align 8
  %39 = load %struct.il_tx_queue*, %struct.il_tx_queue** %7, align 8
  %40 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %38, i64 %43
  %45 = load %struct.sk_buff*, %struct.sk_buff** %44, align 8
  store %struct.sk_buff* %45, %struct.sk_buff** %9, align 8
  %46 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %47 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = call i32 @ieee80211_tx_status_irqsafe(i32 %48, %struct.sk_buff* %49)
  %51 = load %struct.il_tx_queue*, %struct.il_tx_queue** %7, align 8
  %52 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %51, i32 0, i32 1
  %53 = load %struct.sk_buff**, %struct.sk_buff*** %52, align 8
  %54 = load %struct.il_tx_queue*, %struct.il_tx_queue** %7, align 8
  %55 = getelementptr inbounds %struct.il_tx_queue, %struct.il_tx_queue* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %53, i64 %58
  store %struct.sk_buff* null, %struct.sk_buff** %59, align 8
  %60 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %61 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32 (%struct.il_priv*, %struct.il_tx_queue*)*, i32 (%struct.il_priv*, %struct.il_tx_queue*)** %63, align 8
  %65 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %66 = load %struct.il_tx_queue*, %struct.il_tx_queue** %7, align 8
  %67 = call i32 %64(%struct.il_priv* %65, %struct.il_tx_queue* %66)
  br label %68

68:                                               ; preds = %35
  %69 = load %struct.il_queue*, %struct.il_queue** %8, align 8
  %70 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.il_queue*, %struct.il_queue** %8, align 8
  %73 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @il_queue_inc_wrap(i32 %71, i32 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.il_queue*, %struct.il_queue** %8, align 8
  %78 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %29

79:                                               ; preds = %29
  %80 = load %struct.il_queue*, %struct.il_queue** %8, align 8
  %81 = call i64 @il_queue_space(%struct.il_queue* %80)
  %82 = load %struct.il_queue*, %struct.il_queue** %8, align 8
  %83 = getelementptr inbounds %struct.il_queue, %struct.il_queue* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %81, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %79
  %87 = load i32, i32* %5, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @IL39_CMD_QUEUE_NUM, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %95 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %100 = load %struct.il_tx_queue*, %struct.il_tx_queue** %7, align 8
  %101 = call i32 @il_wake_queue(%struct.il_priv* %99, %struct.il_tx_queue* %100)
  br label %102

102:                                              ; preds = %98, %93, %89, %86, %79
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @il_queue_inc_wrap(i32, i32) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(i32, %struct.sk_buff*) #1

declare dso_local i64 @il_queue_space(%struct.il_queue*) #1

declare dso_local i32 @il_wake_queue(%struct.il_priv*, %struct.il_tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
