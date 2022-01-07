; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_is_bnxt_fw_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_is_bnxt_fw_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.bnxt_fw_health* }
%struct.bnxt_fw_health = type { i64, i64 }

@BNXT_FW_HEARTBEAT_REG = common dso_local global i32 0, align 4
@BNXT_FW_RESET_CNT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @is_bnxt_fw_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_bnxt_fw_ok(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.bnxt_fw_health*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %8 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %9 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %8, i32 0, i32 0
  %10 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %9, align 8
  store %struct.bnxt_fw_health* %10, %struct.bnxt_fw_health** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %12 = load i32, i32* @BNXT_FW_HEARTBEAT_REG, align 4
  %13 = call i64 @bnxt_fw_health_readl(%struct.bnxt* %11, i32 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %4, align 8
  %16 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %22 = load i32, i32* @BNXT_FW_RESET_CNT_REG, align 4
  %23 = call i64 @bnxt_fw_health_readl(%struct.bnxt* %21, i32 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.bnxt_fw_health*, %struct.bnxt_fw_health** %4, align 8
  %26 = getelementptr inbounds %struct.bnxt_fw_health, %struct.bnxt_fw_health* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %20
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %38

37:                                               ; preds = %33, %30
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @bnxt_fw_health_readl(%struct.bnxt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
