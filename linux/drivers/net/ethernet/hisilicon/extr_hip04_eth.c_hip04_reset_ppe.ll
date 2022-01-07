; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_reset_ppe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_reset_ppe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hip04_priv = type { i32, i32 }

@PPE_CURR_BUF_CNT = common dso_local global i64 0, align 8
@PPE_CFG_RX_ADDR = common dso_local global i64 0, align 8
@RESET_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hip04_priv*)* @hip04_reset_ppe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hip04_reset_ppe(%struct.hip04_priv* %0) #0 {
  %2 = alloca %struct.hip04_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hip04_priv* %0, %struct.hip04_priv** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %36, %1
  %7 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %8 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %11 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* @PPE_CURR_BUF_CNT, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @regmap_read(i32 %9, i64 %16, i32* %3)
  %18 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %19 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hip04_priv*, %struct.hip04_priv** %2, align 8
  %22 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* @PPE_CFG_RX_ADDR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @regmap_read(i32 %20, i64 %27, i32* %4)
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  %31 = sext i32 %29 to i64
  %32 = load i64, i64* @RESET_TIMEOUT, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %6
  br label %40

35:                                               ; preds = %6
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, 4095
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %6, label %40

40:                                               ; preds = %36, %34
  ret void
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
