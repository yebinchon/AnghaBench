; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_poll_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_poll_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mt76x02_tx_status = type { i32 }

@MT76_STATE_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_mac_poll_tx_status(%struct.mt76x02_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt76x02_tx_status, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = bitcast %struct.mt76x02_tx_status* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  store i32 1, i32* %6, align 4
  %9 = load i32, i32* @MT76_STATE_RUNNING, align 4
  %10 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @test_bit(i32 %9, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %57

16:                                               ; preds = %2
  %17 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %18 = call i32 @trace_mac_txstat_poll(%struct.mt76x02_dev* %17)
  br label %19

19:                                               ; preds = %51, %48, %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %24 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %23, i32 0, i32 0
  %25 = call i32 @kfifo_is_full(i32* %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %22, %19
  %29 = phi i1 [ true, %19 ], [ %27, %22 ]
  br i1 %29, label %30, label %57

30:                                               ; preds = %28
  %31 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %32 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %31, i32 0, i32 1
  %33 = call i32 @spin_trylock(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %57

36:                                               ; preds = %30
  %37 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %38 = call i32 @mt76x02_mac_load_tx_status(%struct.mt76x02_dev* %37, %struct.mt76x02_tx_status* %5)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  br label %57

45:                                               ; preds = %36
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %50 = call i32 @mt76x02_send_tx_status(%struct.mt76x02_dev* %49, %struct.mt76x02_tx_status* %5, i32* %6)
  br label %19

51:                                               ; preds = %45
  %52 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %53 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.mt76x02_tx_status, %struct.mt76x02_tx_status* %5, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @kfifo_put(i32* %53, i32 %55)
  br label %19

57:                                               ; preds = %15, %44, %35, %28
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @test_bit(i32, i32*) #2

declare dso_local i32 @trace_mac_txstat_poll(%struct.mt76x02_dev*) #2

declare dso_local i32 @kfifo_is_full(i32*) #2

declare dso_local i32 @spin_trylock(i32*) #2

declare dso_local i32 @mt76x02_mac_load_tx_status(%struct.mt76x02_dev*, %struct.mt76x02_tx_status*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @mt76x02_send_tx_status(%struct.mt76x02_dev*, %struct.mt76x02_tx_status*, i32*) #2

declare dso_local i32 @kfifo_put(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
