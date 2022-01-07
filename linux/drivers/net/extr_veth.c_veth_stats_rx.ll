; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_stats_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_stats_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.veth_rq_stats = type { i64, i64, i64, i32 }
%struct.net_device = type { i32 }
%struct.veth_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.veth_rq_stats }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.veth_rq_stats*, %struct.net_device*)* @veth_stats_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @veth_stats_rx(%struct.veth_rq_stats* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.veth_rq_stats*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.veth_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.veth_rq_stats*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.veth_rq_stats* %0, %struct.veth_rq_stats** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.veth_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.veth_priv* %13, %struct.veth_priv** %5, align 8
  %14 = load %struct.veth_rq_stats*, %struct.veth_rq_stats** %3, align 8
  %15 = getelementptr inbounds %struct.veth_rq_stats, %struct.veth_rq_stats* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.veth_rq_stats*, %struct.veth_rq_stats** %3, align 8
  %17 = getelementptr inbounds %struct.veth_rq_stats, %struct.veth_rq_stats* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.veth_rq_stats*, %struct.veth_rq_stats** %3, align 8
  %19 = getelementptr inbounds %struct.veth_rq_stats, %struct.veth_rq_stats* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %69, %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %72

26:                                               ; preds = %20
  %27 = load %struct.veth_priv*, %struct.veth_priv** %5, align 8
  %28 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store %struct.veth_rq_stats* %33, %struct.veth_rq_stats** %7, align 8
  br label %34

34:                                               ; preds = %47, %26
  %35 = load %struct.veth_rq_stats*, %struct.veth_rq_stats** %7, align 8
  %36 = getelementptr inbounds %struct.veth_rq_stats, %struct.veth_rq_stats* %35, i32 0, i32 3
  %37 = call i32 @u64_stats_fetch_begin_irq(i32* %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.veth_rq_stats*, %struct.veth_rq_stats** %7, align 8
  %39 = getelementptr inbounds %struct.veth_rq_stats, %struct.veth_rq_stats* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %8, align 8
  %41 = load %struct.veth_rq_stats*, %struct.veth_rq_stats** %7, align 8
  %42 = getelementptr inbounds %struct.veth_rq_stats, %struct.veth_rq_stats* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %9, align 8
  %44 = load %struct.veth_rq_stats*, %struct.veth_rq_stats** %7, align 8
  %45 = getelementptr inbounds %struct.veth_rq_stats, %struct.veth_rq_stats* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %34
  %48 = load %struct.veth_rq_stats*, %struct.veth_rq_stats** %7, align 8
  %49 = getelementptr inbounds %struct.veth_rq_stats, %struct.veth_rq_stats* %48, i32 0, i32 3
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @u64_stats_fetch_retry_irq(i32* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %34, label %53

53:                                               ; preds = %47
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.veth_rq_stats*, %struct.veth_rq_stats** %3, align 8
  %56 = getelementptr inbounds %struct.veth_rq_stats, %struct.veth_rq_stats* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.veth_rq_stats*, %struct.veth_rq_stats** %3, align 8
  %61 = getelementptr inbounds %struct.veth_rq_stats, %struct.veth_rq_stats* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %59
  store i64 %63, i64* %61, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.veth_rq_stats*, %struct.veth_rq_stats** %3, align 8
  %66 = getelementptr inbounds %struct.veth_rq_stats, %struct.veth_rq_stats* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, %64
  store i64 %68, i64* %66, align 8
  br label %69

69:                                               ; preds = %53
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %20

72:                                               ; preds = %20
  ret void
}

declare dso_local %struct.veth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
