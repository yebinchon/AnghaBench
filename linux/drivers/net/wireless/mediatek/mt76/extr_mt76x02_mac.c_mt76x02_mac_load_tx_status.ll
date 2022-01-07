; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_load_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_mac.c_mt76x02_mac_load_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }
%struct.mt76x02_tx_status = type { i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@MT_TX_STAT_FIFO_EXT = common dso_local global i32 0, align 4
@MT_TX_STAT_FIFO = common dso_local global i32 0, align 4
@MT_TX_STAT_FIFO_VALID = common dso_local global i32 0, align 4
@MT_TX_STAT_FIFO_SUCCESS = common dso_local global i32 0, align 4
@MT_TX_STAT_FIFO_AGGR = common dso_local global i32 0, align 4
@MT_TX_STAT_FIFO_ACKREQ = common dso_local global i32 0, align 4
@MT_TX_STAT_FIFO_WCID = common dso_local global i32 0, align 4
@MT_TX_STAT_FIFO_RATE = common dso_local global i32 0, align 4
@MT_TX_STAT_FIFO_EXT_RETRY = common dso_local global i32 0, align 4
@MT_TX_STAT_FIFO_EXT_PKTID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x02_mac_load_tx_status(%struct.mt76x02_dev* %0, %struct.mt76x02_tx_status* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca %struct.mt76x02_tx_status*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store %struct.mt76x02_tx_status* %1, %struct.mt76x02_tx_status** %5, align 8
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %9 = load i32, i32* @MT_TX_STAT_FIFO_EXT, align 4
  %10 = call i32 @mt76_rr(%struct.mt76x02_dev* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %12 = load i32, i32* @MT_TX_STAT_FIFO, align 4
  %13 = call i32 @mt76_rr(%struct.mt76x02_dev* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MT_TX_STAT_FIFO_VALID, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = load %struct.mt76x02_tx_status*, %struct.mt76x02_tx_status** %5, align 8
  %22 = getelementptr inbounds %struct.mt76x02_tx_status, %struct.mt76x02_tx_status* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.mt76x02_tx_status*, %struct.mt76x02_tx_status** %5, align 8
  %24 = getelementptr inbounds %struct.mt76x02_tx_status, %struct.mt76x02_tx_status* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @MT_TX_STAT_FIFO_SUCCESS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load %struct.mt76x02_tx_status*, %struct.mt76x02_tx_status** %5, align 8
  %37 = getelementptr inbounds %struct.mt76x02_tx_status, %struct.mt76x02_tx_status* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @MT_TX_STAT_FIFO_AGGR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load %struct.mt76x02_tx_status*, %struct.mt76x02_tx_status** %5, align 8
  %46 = getelementptr inbounds %struct.mt76x02_tx_status, %struct.mt76x02_tx_status* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @MT_TX_STAT_FIFO_ACKREQ, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load %struct.mt76x02_tx_status*, %struct.mt76x02_tx_status** %5, align 8
  %55 = getelementptr inbounds %struct.mt76x02_tx_status, %struct.mt76x02_tx_status* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @MT_TX_STAT_FIFO_WCID, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i8* @FIELD_GET(i32 %56, i32 %57)
  %59 = load %struct.mt76x02_tx_status*, %struct.mt76x02_tx_status** %5, align 8
  %60 = getelementptr inbounds %struct.mt76x02_tx_status, %struct.mt76x02_tx_status* %59, i32 0, i32 7
  store i8* %58, i8** %60, align 8
  %61 = load i32, i32* @MT_TX_STAT_FIFO_RATE, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i8* @FIELD_GET(i32 %61, i32 %62)
  %64 = load %struct.mt76x02_tx_status*, %struct.mt76x02_tx_status** %5, align 8
  %65 = getelementptr inbounds %struct.mt76x02_tx_status, %struct.mt76x02_tx_status* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* @MT_TX_STAT_FIFO_EXT_RETRY, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i8* @FIELD_GET(i32 %66, i32 %67)
  %69 = load %struct.mt76x02_tx_status*, %struct.mt76x02_tx_status** %5, align 8
  %70 = getelementptr inbounds %struct.mt76x02_tx_status, %struct.mt76x02_tx_status* %69, i32 0, i32 5
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @MT_TX_STAT_FIFO_EXT_PKTID, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i8* @FIELD_GET(i32 %71, i32 %72)
  %74 = load %struct.mt76x02_tx_status*, %struct.mt76x02_tx_status** %5, align 8
  %75 = getelementptr inbounds %struct.mt76x02_tx_status, %struct.mt76x02_tx_status* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %77 = load %struct.mt76x02_tx_status*, %struct.mt76x02_tx_status** %5, align 8
  %78 = call i32 @trace_mac_txstat_fetch(%struct.mt76x02_dev* %76, %struct.mt76x02_tx_status* %77)
  store i32 1, i32* %3, align 4
  br label %79

79:                                               ; preds = %28, %27
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i8* @FIELD_GET(i32, i32) #1

declare dso_local i32 @trace_mac_txstat_fetch(%struct.mt76x02_dev*, %struct.mt76x02_tx_status*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
