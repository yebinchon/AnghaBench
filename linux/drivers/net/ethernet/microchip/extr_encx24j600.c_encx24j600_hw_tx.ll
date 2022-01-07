; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_hw_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_hw_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encx24j600_priv = type { %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.net_device = type { i32 }

@tx_queued = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"TX Packet Len:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@EIR = common dso_local global i32 0, align 4
@TXABTIF = common dso_local global i32 0, align 4
@TXIF = common dso_local global i32 0, align 4
@EGPWRPT = common dso_local global i32 0, align 4
@ENC_TX_BUF_START = common dso_local global i32 0, align 4
@WGPDATA = common dso_local global i32 0, align 4
@ETXST = common dso_local global i32 0, align 4
@ETXLEN = common dso_local global i32 0, align 4
@SETTXRTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.encx24j600_priv*)* @encx24j600_hw_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encx24j600_hw_tx(%struct.encx24j600_priv* %0) #0 {
  %2 = alloca %struct.encx24j600_priv*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.encx24j600_priv* %0, %struct.encx24j600_priv** %2, align 8
  %4 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %5 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %4, i32 0, i32 1
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %8 = load i32, i32* @tx_queued, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %11 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @netif_info(%struct.encx24j600_priv* %7, i32 %8, %struct.net_device* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %17 = call i64 @netif_msg_pktdata(%struct.encx24j600_priv* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %21 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %26 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @dump_packet(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %24, i64 %29)
  br label %31

31:                                               ; preds = %19, %1
  %32 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %33 = load i32, i32* @EIR, align 4
  %34 = call i32 @encx24j600_read_reg(%struct.encx24j600_priv* %32, i32 %33)
  %35 = load i32, i32* @TXABTIF, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %40 = call i32 @encx24j600_reset_hw_tx(%struct.encx24j600_priv* %39)
  br label %41

41:                                               ; preds = %38, %31
  %42 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %43 = load i32, i32* @EIR, align 4
  %44 = load i32, i32* @TXIF, align 4
  %45 = call i32 @encx24j600_clr_bits(%struct.encx24j600_priv* %42, i32 %43, i32 %44)
  %46 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %47 = load i32, i32* @EGPWRPT, align 4
  %48 = load i32, i32* @ENC_TX_BUF_START, align 4
  %49 = call i32 @encx24j600_write_reg(%struct.encx24j600_priv* %46, i32 %47, i32 %48)
  %50 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %51 = load i32, i32* @WGPDATA, align 4
  %52 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %53 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  %58 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %59 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @encx24j600_raw_write(%struct.encx24j600_priv* %50, i32 %51, i32* %57, i32 %62)
  %64 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %65 = load i32, i32* @ETXST, align 4
  %66 = load i32, i32* @ENC_TX_BUF_START, align 4
  %67 = call i32 @encx24j600_write_reg(%struct.encx24j600_priv* %64, i32 %65, i32 %66)
  %68 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %69 = load i32, i32* @ETXLEN, align 4
  %70 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %71 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @encx24j600_write_reg(%struct.encx24j600_priv* %68, i32 %69, i32 %74)
  %76 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %77 = load i32, i32* @SETTXRTS, align 4
  %78 = call i32 @encx24j600_cmd(%struct.encx24j600_priv* %76, i32 %77)
  ret void
}

declare dso_local i32 @netif_info(%struct.encx24j600_priv*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i64 @netif_msg_pktdata(%struct.encx24j600_priv*) #1

declare dso_local i32 @dump_packet(i8*, i32, i64) #1

declare dso_local i32 @encx24j600_read_reg(%struct.encx24j600_priv*, i32) #1

declare dso_local i32 @encx24j600_reset_hw_tx(%struct.encx24j600_priv*) #1

declare dso_local i32 @encx24j600_clr_bits(%struct.encx24j600_priv*, i32, i32) #1

declare dso_local i32 @encx24j600_write_reg(%struct.encx24j600_priv*, i32, i32) #1

declare dso_local i32 @encx24j600_raw_write(%struct.encx24j600_priv*, i32, i32*, i32) #1

declare dso_local i32 @encx24j600_cmd(%struct.encx24j600_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
