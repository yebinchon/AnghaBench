; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_phy.c_mt76x02_add_rate_power_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_phy.c_mt76x02_add_rate_power_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_rate_power = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_add_rate_power_offset(%struct.mt76_rate_power* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76_rate_power*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mt76_rate_power* %0, %struct.mt76_rate_power** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %20, %2
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = icmp ult i64 %8, 8
  br i1 %9, label %10, label %23

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.mt76_rate_power*, %struct.mt76_rate_power** %3, align 8
  %13 = getelementptr inbounds %struct.mt76_rate_power, %struct.mt76_rate_power* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, %11
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %10
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %6

23:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
