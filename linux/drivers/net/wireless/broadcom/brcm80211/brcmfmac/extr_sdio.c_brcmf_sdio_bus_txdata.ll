; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_bus_txdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_sdio.c_brcmf_sdio_bus_txdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sk_buff = type { i32, i64, i32, i32 }
%struct.brcmf_bus = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.brcmf_sdio_dev* }
%struct.brcmf_sdio_dev = type { i64, %struct.brcmf_sdio* }
%struct.brcmf_sdio = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EBADE = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Enter: pkt: data %p len %d\0A\00", align 1
@BRCMF_SDIOD_DATA = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@PRIOMASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"deferring pktq len %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"out of bus->txq !!!\0A\00", align 1
@ENOSR = common dso_local global i32 0, align 4
@TXHI = common dso_local global i64 0, align 8
@qcount = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.sk_buff*)* @brcmf_sdio_bus_txdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_sdio_bus_txdata(%struct.device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.brcmf_bus*, align 8
  %9 = alloca %struct.brcmf_sdio_dev*, align 8
  %10 = alloca %struct.brcmf_sdio*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load i32, i32* @EBADE, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.brcmf_bus* @dev_get_drvdata(%struct.device* %13)
  store %struct.brcmf_bus* %14, %struct.brcmf_bus** %8, align 8
  %15 = load %struct.brcmf_bus*, %struct.brcmf_bus** %8, align 8
  %16 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %17, align 8
  store %struct.brcmf_sdio_dev* %18, %struct.brcmf_sdio_dev** %9, align 8
  %19 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %9, align 8
  %20 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %19, i32 0, i32 1
  %21 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %20, align 8
  store %struct.brcmf_sdio* %21, %struct.brcmf_sdio** %10, align 8
  %22 = load i32, i32* @TRACE, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i8*, i64, ...) @brcmf_dbg(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %26, i32 %29)
  %31 = load %struct.brcmf_sdio_dev*, %struct.brcmf_sdio_dev** %9, align 8
  %32 = getelementptr inbounds %struct.brcmf_sdio_dev, %struct.brcmf_sdio_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BRCMF_SDIOD_DATA, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %102

39:                                               ; preds = %2
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %42 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @skb_push(%struct.sk_buff* %40, i32 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PRIOMASK, align 4
  %49 = and i32 %47, %48
  %50 = call i64 @prio2prec(i32 %49)
  store i64 %50, i64* %7, align 8
  %51 = load i32, i32* @TRACE, align 4
  %52 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %53 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %52, i32 0, i32 1
  %54 = call i64 @pktq_len(i32* %53)
  %55 = call i32 (i32, i8*, i64, ...) @brcmf_dbg(i32 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %54)
  %56 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %57 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %62 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %61, i32 0, i32 2
  %63 = call i32 @spin_lock_bh(i32* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i64*
  store i64 0, i64* %67, align 8
  %68 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %69 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %68, i32 0, i32 1
  %70 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @brcmf_sdio_prec_enq(i32* %69, %struct.sk_buff* %70, i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %39
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %77 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @skb_pull(%struct.sk_buff* %75, i32 %78)
  %80 = call i32 @brcmf_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @ENOSR, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %84

83:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %74
  %85 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %86 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %85, i32 0, i32 1
  %87 = call i64 @pktq_len(i32* %86)
  %88 = load i64, i64* @TXHI, align 8
  %89 = icmp sge i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %92 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %91, i32 0, i32 0
  store i32 1, i32* %92, align 4
  %93 = load %struct.device*, %struct.device** %4, align 8
  %94 = call i32 @brcmf_proto_bcdc_txflowblock(%struct.device* %93, i32 1)
  br label %95

95:                                               ; preds = %90, %84
  %96 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %97 = getelementptr inbounds %struct.brcmf_sdio, %struct.brcmf_sdio* %96, i32 0, i32 2
  %98 = call i32 @spin_unlock_bh(i32* %97)
  %99 = load %struct.brcmf_sdio*, %struct.brcmf_sdio** %10, align 8
  %100 = call i32 @brcmf_sdio_trigger_dpc(%struct.brcmf_sdio* %99)
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %95, %36
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i64, ...) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i64 @prio2prec(i32) #1

declare dso_local i64 @pktq_len(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @brcmf_sdio_prec_enq(i32*, %struct.sk_buff*, i64) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @brcmf_err(i8*) #1

declare dso_local i32 @brcmf_proto_bcdc_txflowblock(%struct.device*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @brcmf_sdio_trigger_dpc(%struct.brcmf_sdio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
