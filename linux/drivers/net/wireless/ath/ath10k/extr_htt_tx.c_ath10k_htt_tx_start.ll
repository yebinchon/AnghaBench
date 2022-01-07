; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_tx.c_ath10k_htt_tx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { i32, i32, i32, i32, %struct.ath10k* }
%struct.ath10k = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"htt tx max num pending tx %d\0A\00", align 1
@ATH10K_DEV_TYPE_HL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_htt_tx_start(%struct.ath10k_htt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_htt*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %3, align 8
  %6 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %7 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %6, i32 0, i32 4
  %8 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  store %struct.ath10k* %8, %struct.ath10k** %4, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %10 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %11 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %12 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ath10k_dbg(%struct.ath10k* %9, i32 %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %16 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %15, i32 0, i32 2
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %19 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %18, i32 0, i32 1
  %20 = call i32 @idr_init(i32* %19)
  %21 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %22 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

26:                                               ; preds = %1
  %27 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %28 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ATH10K_DEV_TYPE_HL, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %48

34:                                               ; preds = %26
  %35 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %36 = call i32 @ath10k_htt_tx_alloc_buf(%struct.ath10k_htt* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %43

40:                                               ; preds = %34
  %41 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %42 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  store i32 0, i32* %2, align 4
  br label %48

43:                                               ; preds = %39
  %44 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %45 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %44, i32 0, i32 1
  %46 = call i32 @idr_destroy(i32* %45)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %43, %40, %33, %25
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @ath10k_htt_tx_alloc_buf(%struct.ath10k_htt*) #1

declare dso_local i32 @idr_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
