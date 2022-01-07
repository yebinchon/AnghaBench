; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_get_txq_props.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mac.c_ath9k_hw_get_txq_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath9k_tx_queue_info* }
%struct.ath9k_tx_queue_info = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_common = type { i32 }

@ATH9K_TX_QUEUE_INACTIVE = common dso_local global i64 0, align 8
@QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Get TXQ properties, inactive queue: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath9k_hw_get_txq_props(%struct.ath_hw* %0, i32 %1, %struct.ath9k_tx_queue_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath9k_tx_queue_info*, align 8
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca %struct.ath9k_tx_queue_info*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ath9k_tx_queue_info* %2, %struct.ath9k_tx_queue_info** %7, align 8
  %10 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %11 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %10)
  store %struct.ath_common* %11, %struct.ath_common** %8, align 8
  %12 = load %struct.ath_hw*, %struct.ath_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 0
  %14 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %14, i64 %16
  store %struct.ath9k_tx_queue_info* %17, %struct.ath9k_tx_queue_info** %9, align 8
  %18 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %19 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ATH9K_TX_QUEUE_INACTIVE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %25 = load i32, i32* @QUEUE, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @ath_dbg(%struct.ath_common* %24, i32 %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 0, i32* %4, align 4
  br label %99

28:                                               ; preds = %3
  %29 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %30 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %29, i32 0, i32 11
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %33 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %32, i32 0, i32 11
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %35 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %34, i32 0, i32 13
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %38 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %37, i32 0, i32 13
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %40 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %39, i32 0, i32 12
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %43 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %42, i32 0, i32 12
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %45 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %44, i32 0, i32 11
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %48 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %47, i32 0, i32 11
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %50 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %49, i32 0, i32 10
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %53 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %52, i32 0, i32 10
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %55 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %58 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %57, i32 0, i32 9
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %60 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %63 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %62, i32 0, i32 8
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %65 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %68 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %70 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %73 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %75 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %78 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %80 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %83 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %85 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %88 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %90 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %93 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %9, align 8
  %95 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.ath9k_tx_queue_info*, %struct.ath9k_tx_queue_info** %7, align 8
  %98 = getelementptr inbounds %struct.ath9k_tx_queue_info, %struct.ath9k_tx_queue_info* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  store i32 1, i32* %4, align 4
  br label %99

99:                                               ; preds = %28, %23
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
