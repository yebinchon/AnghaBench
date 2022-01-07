; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_ad_initialize_agg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_ad_initialize_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aggregator = type { i32*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aggregator*)* @ad_initialize_agg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad_initialize_agg(%struct.aggregator* %0) #0 {
  %2 = alloca %struct.aggregator*, align 8
  store %struct.aggregator* %0, %struct.aggregator** %2, align 8
  %3 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %4 = icmp ne %struct.aggregator* %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %7 = call i32 @ad_clear_agg(%struct.aggregator* %6)
  %8 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %9 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @eth_zero_addr(i32 %11)
  %13 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %14 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.aggregator*, %struct.aggregator** %2, align 8
  %16 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @ad_clear_agg(%struct.aggregator*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
