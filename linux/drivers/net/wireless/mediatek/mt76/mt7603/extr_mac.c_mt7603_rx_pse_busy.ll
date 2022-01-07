; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_rx_pse_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_rx_pse_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32 }

@MT_MCU_DEBUG_RESET = common dso_local global i32 0, align 4
@MT_MCU_DEBUG_RESET_QUEUES = common dso_local global i32 0, align 4
@MT_CLIENT_BASE_PHYS_ADDR = common dso_local global i64 0, align 8
@MT_CLIENT_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7603_dev*)* @mt7603_rx_pse_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7603_rx_pse_busy(%struct.mt7603_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7603_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %3, align 8
  %6 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %7 = load i32, i32* @MT_MCU_DEBUG_RESET, align 4
  %8 = call i32 @mt76_rr(%struct.mt7603_dev* %6, i32 %7)
  %9 = load i32, i32* @MT_MCU_DEBUG_RESET_QUEUES, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %15 = call i64 @mt7603_rx_fifo_busy(%struct.mt7603_dev* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %50

18:                                               ; preds = %13
  %19 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %20 = load i64, i64* @MT_CLIENT_BASE_PHYS_ADDR, align 8
  %21 = load i64, i64* @MT_CLIENT_STATUS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @mt7603_reg_map(%struct.mt7603_dev* %19, i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @mt76_wr(%struct.mt7603_dev* %24, i32 %25, i32 3)
  %27 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @mt76_rr(%struct.mt7603_dev* %27, i32 %28)
  %30 = ashr i32 %29, 16
  store i32 %30, i32* %5, align 4
  %31 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %32 = call i64 @is_mt7628(%struct.mt7603_dev* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %18
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, 16385
  %37 = icmp eq i32 %36, 16385
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %50

39:                                               ; preds = %34, %18
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, 32769
  %42 = icmp eq i32 %41, 32769
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %5, align 4
  %45 = and i32 %44, 57345
  %46 = icmp eq i32 %45, 57345
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi i1 [ true, %39 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %38, %17, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @mt76_rr(%struct.mt7603_dev*, i32) #1

declare dso_local i64 @mt7603_rx_fifo_busy(%struct.mt7603_dev*) #1

declare dso_local i32 @mt7603_reg_map(%struct.mt7603_dev*, i64) #1

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i64 @is_mt7628(%struct.mt7603_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
