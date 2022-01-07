; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_fw_health_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_fw_health_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, %struct.bnxt_fw_health* }
%struct.bnxt_fw_health = type { i64, i64, i64, i64, i32 }

@BNXT_STATE_IN_FW_RESET = common dso_local global i32 0, align 4
@BNXT_FW_HEARTBEAT_REG = common dso_local global i32 0, align 4
@BNXT_FW_RESET_CNT_REG = common dso_local global i32 0, align 4
@BNXT_FW_EXCEPTION_SP_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_fw_health_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_fw_health_check(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca %struct.bnxt_fw_health*, align 8
  %4 = alloca i64, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %5 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %6 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %5, i32 0, i32 2
  %7 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %6, align 8
  store %struct.bnxt_fw_health* %7, %struct.bnxt_fw_health** %3, align 8
  %8 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %9 = icmp ne %struct.bnxt_fw_health* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %12 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32, i32* @BNXT_STATE_IN_FW_RESET, align 4
  %17 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 1
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %10, %1
  br label %68

22:                                               ; preds = %15
  %23 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %24 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %29 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %29, align 8
  br label %68

32:                                               ; preds = %22
  %33 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %34 = load i32, i32* @BNXT_FW_HEARTBEAT_REG, align 4
  %35 = call i64 @bnxt_fw_health_readl(%struct.bnxt* %33, i32 %34)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %38 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %61

42:                                               ; preds = %32
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %45 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %47 = load i32, i32* @BNXT_FW_RESET_CNT_REG, align 4
  %48 = call i64 @bnxt_fw_health_readl(%struct.bnxt* %46, i32 %47)
  store i64 %48, i64* %4, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %51 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %61

55:                                               ; preds = %42
  %56 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %57 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %60 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  br label %68

61:                                               ; preds = %54, %41
  %62 = load i32, i32* @BNXT_FW_EXCEPTION_SP_EVENT, align 4
  %63 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %64 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %63, i32 0, i32 0
  %65 = call i32 @set_bit(i32 %62, i32* %64)
  %66 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %67 = call i32 @bnxt_queue_sp_work(%struct.bnxt* %66)
  br label %68

68:                                               ; preds = %61, %55, %27, %21
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @bnxt_fw_health_readl(%struct.bnxt*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bnxt_queue_sp_work(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
