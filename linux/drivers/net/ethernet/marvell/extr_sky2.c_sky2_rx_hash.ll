; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_rx_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_rx_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_port = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@PKT_HASH_TYPE_L3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_port*, i32)* @sky2_rx_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_rx_hash(%struct.sky2_port* %0, i32 %1) #0 {
  %3 = alloca %struct.sky2_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.sky2_port* %0, %struct.sky2_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %7 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load %struct.sky2_port*, %struct.sky2_port** %3, align 8
  %10 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @le32_to_cpu(i32 %16)
  %18 = load i32, i32* @PKT_HASH_TYPE_L3, align 4
  %19 = call i32 @skb_set_hash(%struct.sk_buff* %15, i32 %17, i32 %18)
  ret void
}

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
