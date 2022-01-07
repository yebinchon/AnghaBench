; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_rx_walk_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_rx_walk_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_cq = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ionic_cq*, i64)* @ionic_rx_walk_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ionic_rx_walk_cq(%struct.ionic_cq* %0, i64 %1) #0 {
  %3 = alloca %struct.ionic_cq*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ionic_cq* %0, %struct.ionic_cq** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %44, %2
  %7 = load %struct.ionic_cq*, %struct.ionic_cq** %3, align 8
  %8 = load %struct.ionic_cq*, %struct.ionic_cq** %3, align 8
  %9 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call i64 @ionic_rx_service(%struct.ionic_cq* %7, %struct.TYPE_2__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %45

13:                                               ; preds = %6
  %14 = load %struct.ionic_cq*, %struct.ionic_cq** %3, align 8
  %15 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load %struct.ionic_cq*, %struct.ionic_cq** %3, align 8
  %22 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = load %struct.ionic_cq*, %struct.ionic_cq** %3, align 8
  %28 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %20, %13
  %30 = load %struct.ionic_cq*, %struct.ionic_cq** %3, align 8
  %31 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load %struct.ionic_cq*, %struct.ionic_cq** %3, align 8
  %36 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %35, i32 0, i32 1
  store %struct.TYPE_2__* %34, %struct.TYPE_2__** %36, align 8
  %37 = load %struct.ionic_cq*, %struct.ionic_cq** %3, align 8
  %38 = call i32 @DEBUG_STATS_CQE_CNT(%struct.ionic_cq* %37)
  %39 = load i64, i64* %5, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %4, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %29
  br label %45

44:                                               ; preds = %29
  br label %6

45:                                               ; preds = %43, %6
  %46 = load i64, i64* %5, align 8
  ret i64 %46
}

declare dso_local i64 @ionic_rx_service(%struct.ionic_cq*, %struct.TYPE_2__*) #1

declare dso_local i32 @DEBUG_STATS_CQE_CNT(%struct.ionic_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
