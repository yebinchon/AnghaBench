; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_set_txpower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_set_txpower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.at86rf230_local* }
%struct.at86rf230_local = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.at86rf230_local*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, i32)* @at86rf230_set_txpower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at86rf230_set_txpower(%struct.ieee802154_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee802154_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.at86rf230_local*, align 8
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %6, i32 0, i32 0
  %8 = load %struct.at86rf230_local*, %struct.at86rf230_local** %7, align 8
  store %struct.at86rf230_local* %8, %struct.at86rf230_local** %5, align 8
  %9 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %10 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.at86rf230_local*, i32)*, i32 (%struct.at86rf230_local*, i32)** %12, align 8
  %14 = load %struct.at86rf230_local*, %struct.at86rf230_local** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 %13(%struct.at86rf230_local* %14, i32 %15)
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
