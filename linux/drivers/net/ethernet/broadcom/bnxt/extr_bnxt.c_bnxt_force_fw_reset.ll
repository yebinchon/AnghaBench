; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_force_fw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_force_fw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, i64, i32, %struct.bnxt_fw_health* }
%struct.bnxt_fw_health = type { i32, i32, i32, i32, i32, i64 }

@BNXT_STATE_OPEN = common dso_local global i32 0, align 4
@BNXT_STATE_IN_FW_RESET = common dso_local global i32 0, align 4
@ERROR_RECOVERY_QCFG_RESP_FLAGS_CO_CPU = common dso_local global i32 0, align 4
@BNXT_FW_RESET_STATE_RESET_FW = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@BNXT_FW_RESET_STATE_ENABLE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_force_fw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_force_fw_reset(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca %struct.bnxt_fw_health*, align 8
  %4 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %5 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %6 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %5, i32 0, i32 5
  %7 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %6, align 8
  store %struct.bnxt_fw_health* %7, %struct.bnxt_fw_health** %3, align 8
  %8 = load i32, i32* @BNXT_STATE_OPEN, align 4
  %9 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 4
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @BNXT_STATE_IN_FW_RESET, align 4
  %15 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %16 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %15, i32 0, i32 4
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %1
  br label %79

20:                                               ; preds = %13
  %21 = load i32, i32* @BNXT_STATE_IN_FW_RESET, align 4
  %22 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %23 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %22, i32 0, i32 4
  %24 = call i32 @set_bit(i32 %21, i32* %23)
  %25 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %26 = call i32 @bnxt_fw_reset_close(%struct.bnxt* %25)
  %27 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %28 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %4, align 4
  %30 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %31 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %20
  %35 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %36 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ERROR_RECOVERY_QCFG_RESP_FLAGS_CO_CPU, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %34
  %43 = load i32, i32* @BNXT_FW_RESET_STATE_RESET_FW, align 4
  %44 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %45 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  br label %62

46:                                               ; preds = %20
  %47 = load i64, i64* @jiffies, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @HZ, align 4
  %50 = mul nsw i32 %48, %49
  %51 = sdiv i32 %50, 10
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %47, %52
  %54 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %55 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  %56 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %57 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* @BNXT_FW_RESET_STATE_ENABLE_DEV, align 4
  %60 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %61 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %46, %42
  %63 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %64 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %67 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %3, align 8
  %69 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %72 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @HZ, align 4
  %76 = mul nsw i32 %74, %75
  %77 = sdiv i32 %76, 10
  %78 = call i32 @bnxt_queue_fw_reset_work(%struct.bnxt* %73, i32 %77)
  br label %79

79:                                               ; preds = %62, %19
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bnxt_fw_reset_close(%struct.bnxt*) #1

declare dso_local i32 @bnxt_queue_fw_reset_work(%struct.bnxt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
