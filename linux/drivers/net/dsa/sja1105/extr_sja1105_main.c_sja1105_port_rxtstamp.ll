; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_port_rxtstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_port_rxtstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.sja1105_private* }
%struct.sja1105_private = type { %struct.sja1105_tagger_data }
%struct.sja1105_tagger_data = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@SJA1105_HWTS_RX_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, %struct.sk_buff*, i32)* @sja1105_port_rxtstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_port_rxtstamp(%struct.dsa_switch* %0, i32 %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sja1105_private*, align 8
  %11 = alloca %struct.sja1105_tagger_data*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %13 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %12, i32 0, i32 0
  %14 = load %struct.sja1105_private*, %struct.sja1105_private** %13, align 8
  store %struct.sja1105_private* %14, %struct.sja1105_private** %10, align 8
  %15 = load %struct.sja1105_private*, %struct.sja1105_private** %10, align 8
  %16 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %15, i32 0, i32 0
  store %struct.sja1105_tagger_data* %16, %struct.sja1105_tagger_data** %11, align 8
  %17 = load i32, i32* @SJA1105_HWTS_RX_EN, align 4
  %18 = load %struct.sja1105_tagger_data*, %struct.sja1105_tagger_data** %11, align 8
  %19 = getelementptr inbounds %struct.sja1105_tagger_data, %struct.sja1105_tagger_data* %18, i32 0, i32 2
  %20 = call i32 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %31

23:                                               ; preds = %4
  %24 = load %struct.sja1105_tagger_data*, %struct.sja1105_tagger_data** %11, align 8
  %25 = getelementptr inbounds %struct.sja1105_tagger_data, %struct.sja1105_tagger_data* %24, i32 0, i32 1
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = call i32 @skb_queue_tail(i32* %25, %struct.sk_buff* %26)
  %28 = load %struct.sja1105_tagger_data*, %struct.sja1105_tagger_data** %11, align 8
  %29 = getelementptr inbounds %struct.sja1105_tagger_data, %struct.sja1105_tagger_data* %28, i32 0, i32 0
  %30 = call i32 @schedule_work(i32* %29)
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %23, %22
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
