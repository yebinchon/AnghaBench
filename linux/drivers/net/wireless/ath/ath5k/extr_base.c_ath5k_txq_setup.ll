; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_txq_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_txq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_txq = type { i32, i32, i32, i64, i32, i64, i32, i32, i32* }
%struct.ath5k_hw = type { %struct.ath5k_txq* }
%struct.ath5k_txq_info = type { i32, i32, i32, i32, i32 }

@AR5K_TUNE_CWMAX = common dso_local global i32 0, align 4
@AR5K_TUNE_CWMIN = common dso_local global i32 0, align 4
@AR5K_TUNE_AIFS = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_TXEOLINT_ENABLE = common dso_local global i32 0, align 4
@AR5K_TXQ_FLAG_TXDESCINT_ENABLE = common dso_local global i32 0, align 4
@ATH5K_TXQ_LEN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ath5k_txq* (%struct.ath5k_hw*, i32, i32)* @ath5k_txq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ath5k_txq* @ath5k_txq_setup(%struct.ath5k_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ath5k_txq*, align 8
  %5 = alloca %struct.ath5k_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath5k_txq*, align 8
  %9 = alloca %struct.ath5k_txq_info, align 4
  %10 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %9, i32 0, i32 0
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %9, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %9, i32 0, i32 2
  %15 = load i32, i32* @AR5K_TUNE_CWMAX, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %9, i32 0, i32 3
  %17 = load i32, i32* @AR5K_TUNE_CWMIN, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %9, i32 0, i32 4
  %19 = load i32, i32* @AR5K_TUNE_AIFS, align 4
  store i32 %19, i32* %18, align 4
  %20 = load i32, i32* @AR5K_TXQ_FLAG_TXEOLINT_ENABLE, align 4
  %21 = load i32, i32* @AR5K_TXQ_FLAG_TXDESCINT_ENABLE, align 4
  %22 = or i32 %20, %21
  %23 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %9, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ath5k_hw_setup_tx_queue(%struct.ath5k_hw* %24, i32 %25, %struct.ath5k_txq_info* %9)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* %10, align 4
  %31 = call %struct.ath5k_txq* @ERR_PTR(i32 %30)
  store %struct.ath5k_txq* %31, %struct.ath5k_txq** %4, align 8
  br label %73

32:                                               ; preds = %3
  %33 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %34 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %33, i32 0, i32 0
  %35 = load %struct.ath5k_txq*, %struct.ath5k_txq** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %35, i64 %37
  store %struct.ath5k_txq* %38, %struct.ath5k_txq** %8, align 8
  %39 = load %struct.ath5k_txq*, %struct.ath5k_txq** %8, align 8
  %40 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %66, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.ath5k_txq*, %struct.ath5k_txq** %8, align 8
  %46 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ath5k_txq*, %struct.ath5k_txq** %8, align 8
  %48 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %47, i32 0, i32 8
  store i32* null, i32** %48, align 8
  %49 = load %struct.ath5k_txq*, %struct.ath5k_txq** %8, align 8
  %50 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %49, i32 0, i32 7
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = load %struct.ath5k_txq*, %struct.ath5k_txq** %8, align 8
  %53 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %52, i32 0, i32 6
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load %struct.ath5k_txq*, %struct.ath5k_txq** %8, align 8
  %56 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.ath5k_txq*, %struct.ath5k_txq** %8, align 8
  %58 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @ATH5K_TXQ_LEN_MAX, align 4
  %60 = load %struct.ath5k_txq*, %struct.ath5k_txq** %8, align 8
  %61 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ath5k_txq*, %struct.ath5k_txq** %8, align 8
  %63 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %62, i32 0, i32 2
  store i32 0, i32* %63, align 8
  %64 = load %struct.ath5k_txq*, %struct.ath5k_txq** %8, align 8
  %65 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %43, %32
  %67 = load %struct.ath5k_hw*, %struct.ath5k_hw** %5, align 8
  %68 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %67, i32 0, i32 0
  %69 = load %struct.ath5k_txq*, %struct.ath5k_txq** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ath5k_txq, %struct.ath5k_txq* %69, i64 %71
  store %struct.ath5k_txq* %72, %struct.ath5k_txq** %4, align 8
  br label %73

73:                                               ; preds = %66, %29
  %74 = load %struct.ath5k_txq*, %struct.ath5k_txq** %4, align 8
  ret %struct.ath5k_txq* %74
}

declare dso_local i32 @ath5k_hw_setup_tx_queue(%struct.ath5k_hw*, i32, %struct.ath5k_txq_info*) #1

declare dso_local %struct.ath5k_txq* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
