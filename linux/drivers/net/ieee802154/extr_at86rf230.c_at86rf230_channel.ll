; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.at86rf230_local* }
%struct.at86rf230_local = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.at86rf230_local*, i32, i32)*, i64 }

@jiffies = common dso_local global i64 0, align 8
@AT86RF2XX_CAL_LOOP_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, i32, i32)* @at86rf230_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at86rf230_channel(%struct.ieee802154_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee802154_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.at86rf230_local*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %9, i32 0, i32 0
  %11 = load %struct.at86rf230_local*, %struct.at86rf230_local** %10, align 8
  store %struct.at86rf230_local* %11, %struct.at86rf230_local** %7, align 8
  %12 = load %struct.at86rf230_local*, %struct.at86rf230_local** %7, align 8
  %13 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.at86rf230_local*, i32, i32)*, i32 (%struct.at86rf230_local*, i32, i32)** %15, align 8
  %17 = load %struct.at86rf230_local*, %struct.at86rf230_local** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 %16(%struct.at86rf230_local* %17, i32 %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.at86rf230_local*, %struct.at86rf230_local** %7, align 8
  %22 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.at86rf230_local*, %struct.at86rf230_local** %7, align 8
  %27 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 10
  %32 = call i32 @usleep_range(i64 %25, i64 %31)
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i64, i64* @AT86RF2XX_CAL_LOOP_TIMEOUT, align 8
  %35 = add nsw i64 %33, %34
  %36 = load %struct.at86rf230_local*, %struct.at86rf230_local** %7, align 8
  %37 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local i32 @usleep_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
