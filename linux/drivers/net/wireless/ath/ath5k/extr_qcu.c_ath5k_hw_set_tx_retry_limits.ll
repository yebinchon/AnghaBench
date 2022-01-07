; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_qcu.c_ath5k_hw_set_tx_retry_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_qcu.c_ath5k_hw_set_tx_retry_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i64, i32, i32, %struct.ath5k_txq_info* }
%struct.ath5k_txq_info = type { i32 }

@AR5K_AR5210 = common dso_local global i64 0, align 8
@AR5K_NODCU_RETRY_LMT_CW_MIN_S = common dso_local global i32 0, align 4
@AR5K_NODCU_RETRY_LMT_SLG_RETRY = common dso_local global i32 0, align 4
@AR5K_NODCU_RETRY_LMT_SSH_RETRY = common dso_local global i32 0, align 4
@AR5K_NODCU_RETRY_LMT_LG_RETRY = common dso_local global i32 0, align 4
@AR5K_NODCU_RETRY_LMT_SH_RETRY = common dso_local global i32 0, align 4
@AR5K_NODCU_RETRY_LMT = common dso_local global i32 0, align 4
@AR5K_DCU_RETRY_LMT_RTS = common dso_local global i32 0, align 4
@AR5K_DCU_RETRY_LMT_STA_RTS = common dso_local global i32 0, align 4
@AR5K_DCU_RETRY_LMT_STA_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath5k_hw_set_tx_retry_limits(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath5k_txq_info*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AR5K_AR5210, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %54

11:                                               ; preds = %2
  %12 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %12, i32 0, i32 3
  %14 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %14, i64 %16
  store %struct.ath5k_txq_info* %17, %struct.ath5k_txq_info** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = icmp ugt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %80

21:                                               ; preds = %11
  %22 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %23 = load %struct.ath5k_txq_info*, %struct.ath5k_txq_info** %5, align 8
  %24 = getelementptr inbounds %struct.ath5k_txq_info, %struct.ath5k_txq_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AR5K_NODCU_RETRY_LMT_CW_MIN_S, align 4
  %27 = shl i32 %25, %26
  %28 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %29 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AR5K_NODCU_RETRY_LMT_SLG_RETRY, align 4
  %32 = call i32 @AR5K_REG_SM(i32 %30, i32 %31)
  %33 = or i32 %27, %32
  %34 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %35 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @AR5K_NODCU_RETRY_LMT_SSH_RETRY, align 4
  %38 = call i32 @AR5K_REG_SM(i32 %36, i32 %37)
  %39 = or i32 %33, %38
  %40 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %41 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AR5K_NODCU_RETRY_LMT_LG_RETRY, align 4
  %44 = call i32 @AR5K_REG_SM(i32 %42, i32 %43)
  %45 = or i32 %39, %44
  %46 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %47 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @AR5K_NODCU_RETRY_LMT_SH_RETRY, align 4
  %50 = call i32 @AR5K_REG_SM(i32 %48, i32 %49)
  %51 = or i32 %45, %50
  %52 = load i32, i32* @AR5K_NODCU_RETRY_LMT, align 4
  %53 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %22, i32 %51, i32 %52)
  br label %80

54:                                               ; preds = %2
  %55 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %56 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %57 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @AR5K_DCU_RETRY_LMT_RTS, align 4
  %60 = call i32 @AR5K_REG_SM(i32 %58, i32 %59)
  %61 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %62 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AR5K_DCU_RETRY_LMT_STA_RTS, align 4
  %65 = call i32 @AR5K_REG_SM(i32 %63, i32 %64)
  %66 = or i32 %60, %65
  %67 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %68 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %71 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @max(i32 %69, i32 %72)
  %74 = load i32, i32* @AR5K_DCU_RETRY_LMT_STA_DATA, align 4
  %75 = call i32 @AR5K_REG_SM(i32 %73, i32 %74)
  %76 = or i32 %66, %75
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @AR5K_QUEUE_DFS_RETRY_LIMIT(i32 %77)
  %79 = call i32 @ath5k_hw_reg_write(%struct.ath5k_hw* %55, i32 %76, i32 %78)
  br label %80

80:                                               ; preds = %20, %54, %21
  ret void
}

declare dso_local i32 @ath5k_hw_reg_write(%struct.ath5k_hw*, i32, i32) #1

declare dso_local i32 @AR5K_REG_SM(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @AR5K_QUEUE_DFS_RETRY_LIMIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
