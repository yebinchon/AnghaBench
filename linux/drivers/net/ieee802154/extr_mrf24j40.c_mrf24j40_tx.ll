; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.mrf24j40* }
%struct.mrf24j40 = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"tx packet of %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, %struct.sk_buff*)* @mrf24j40_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrf24j40_tx(%struct.ieee802154_hw* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee802154_hw*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.mrf24j40*, align 8
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %6, i32 0, i32 0
  %8 = load %struct.mrf24j40*, %struct.mrf24j40** %7, align 8
  store %struct.mrf24j40* %8, %struct.mrf24j40** %5, align 8
  %9 = load %struct.mrf24j40*, %struct.mrf24j40** %5, align 8
  %10 = call i32 @printdev(%struct.mrf24j40* %9)
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load %struct.mrf24j40*, %struct.mrf24j40** %5, align 8
  %17 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %16, i32 0, i32 0
  store %struct.sk_buff* %15, %struct.sk_buff** %17, align 8
  %18 = load %struct.mrf24j40*, %struct.mrf24j40** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @write_tx_buf(%struct.mrf24j40* %18, i32 0, i32 %21, i32 %24)
  ret i32 %25
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @printdev(%struct.mrf24j40*) #1

declare dso_local i32 @write_tx_buf(%struct.mrf24j40*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
