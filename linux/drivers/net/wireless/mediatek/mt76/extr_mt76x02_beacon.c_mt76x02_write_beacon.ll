; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_beacon.c_mt76x02_write_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_beacon.c_mt76x02_write_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32, %struct.mt76x02_txwi* }
%struct.mt76x02_txwi = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*, i32, %struct.sk_buff*)* @mt76x02_write_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x02_write_beacon(%struct.mt76x02_dev* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt76x02_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mt76x02_txwi, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %10 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %11 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = add i64 %20, 4
  %22 = icmp ult i64 %16, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON_ONCE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOSPC, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %52

29:                                               ; preds = %3
  %30 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @mt76x02_mac_write_txwi(%struct.mt76x02_dev* %30, %struct.mt76x02_txwi* %9, %struct.sk_buff* %31, i32* null, i32* null, i32 %34)
  %36 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @mt76_wr_copy(%struct.mt76x02_dev* %36, i32 %37, %struct.mt76x02_txwi* %9, i32 4)
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %6, align 4
  %43 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load %struct.mt76x02_txwi*, %struct.mt76x02_txwi** %46, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mt76_wr_copy(%struct.mt76x02_dev* %43, i32 %44, %struct.mt76x02_txwi* %47, i32 %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %29, %26
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @mt76x02_mac_write_txwi(%struct.mt76x02_dev*, %struct.mt76x02_txwi*, %struct.sk_buff*, i32*, i32*, i32) #1

declare dso_local i32 @mt76_wr_copy(%struct.mt76x02_dev*, i32, %struct.mt76x02_txwi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
