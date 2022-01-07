; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_update_hw_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_update_hw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@REG_MAC_RX_STATUS_BIN = common dso_local global i64 0, align 8
@REG_MAC_RX_STATUS_END = common dso_local global i64 0, align 8
@REG_MAC_TX_STATUS_BIN = common dso_local global i64 0, align 8
@REG_MAC_TX_STATUS_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_adapter*)* @atl1c_update_hw_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_update_hw_stats(%struct.atl1c_adapter* %0) #0 {
  %2 = alloca %struct.atl1c_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %2, align 8
  store i64 0, i64* %3, align 8
  store i64* null, i64** %4, align 8
  %6 = load i64, i64* @REG_MAC_RX_STATUS_BIN, align 8
  store i64 %6, i64* %3, align 8
  %7 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i64* %9, i64** %4, align 8
  br label %10

10:                                               ; preds = %14, %1
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @REG_MAC_RX_STATUS_END, align 8
  %13 = icmp sle i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %15, i32 0, i32 0
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @AT_READ_REG(i32* %16, i64 %17, i64* %5)
  %19 = load i64, i64* %5, align 8
  %20 = load i64*, i64** %4, align 8
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, %19
  store i64 %22, i64* %20, align 8
  %23 = load i64*, i64** %4, align 8
  %24 = getelementptr inbounds i64, i64* %23, i32 1
  store i64* %24, i64** %4, align 8
  %25 = load i64, i64* %3, align 8
  %26 = add nsw i64 %25, 4
  store i64 %26, i64* %3, align 8
  br label %10

27:                                               ; preds = %10
  %28 = load i64, i64* @REG_MAC_TX_STATUS_BIN, align 8
  store i64 %28, i64* %3, align 8
  %29 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i64* %31, i64** %4, align 8
  br label %32

32:                                               ; preds = %36, %27
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @REG_MAC_TX_STATUS_END, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %2, align 8
  %38 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %37, i32 0, i32 0
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @AT_READ_REG(i32* %38, i64 %39, i64* %5)
  %41 = load i64, i64* %5, align 8
  %42 = load i64*, i64** %4, align 8
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, %41
  store i64 %44, i64* %42, align 8
  %45 = load i64*, i64** %4, align 8
  %46 = getelementptr inbounds i64, i64* %45, i32 1
  store i64* %46, i64** %4, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add nsw i64 %47, 4
  store i64 %48, i64* %3, align 8
  br label %32

49:                                               ; preds = %32
  ret void
}

declare dso_local i32 @AT_READ_REG(i32*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
