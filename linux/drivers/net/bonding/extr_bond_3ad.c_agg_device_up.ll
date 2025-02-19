; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_agg_device_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_agg_device_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aggregator = type { %struct.port* }
%struct.port = type { %struct.TYPE_2__*, %struct.port* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aggregator*)* @agg_device_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agg_device_up(%struct.aggregator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aggregator*, align 8
  %4 = alloca %struct.port*, align 8
  store %struct.aggregator* %0, %struct.aggregator** %3, align 8
  %5 = load %struct.aggregator*, %struct.aggregator** %3, align 8
  %6 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %5, i32 0, i32 0
  %7 = load %struct.port*, %struct.port** %6, align 8
  store %struct.port* %7, %struct.port** %4, align 8
  %8 = load %struct.port*, %struct.port** %4, align 8
  %9 = icmp ne %struct.port* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

11:                                               ; preds = %1
  %12 = load %struct.aggregator*, %struct.aggregator** %3, align 8
  %13 = getelementptr inbounds %struct.aggregator, %struct.aggregator* %12, i32 0, i32 0
  %14 = load %struct.port*, %struct.port** %13, align 8
  store %struct.port* %14, %struct.port** %4, align 8
  br label %15

15:                                               ; preds = %36, %11
  %16 = load %struct.port*, %struct.port** %4, align 8
  %17 = icmp ne %struct.port* %16, null
  br i1 %17, label %18, label %40

18:                                               ; preds = %15
  %19 = load %struct.port*, %struct.port** %4, align 8
  %20 = getelementptr inbounds %struct.port, %struct.port* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @netif_running(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %18
  %27 = load %struct.port*, %struct.port** %4, align 8
  %28 = getelementptr inbounds %struct.port, %struct.port* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @netif_carrier_ok(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %41

35:                                               ; preds = %26, %18
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.port*, %struct.port** %4, align 8
  %38 = getelementptr inbounds %struct.port, %struct.port* %37, i32 0, i32 1
  %39 = load %struct.port*, %struct.port** %38, align 8
  store %struct.port* %39, %struct.port** %4, align 8
  br label %15

40:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %34, %10
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @netif_running(i32) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
