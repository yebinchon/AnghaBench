; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_hdl_alive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945-mac.c_il3945_hdl_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, %struct.delayed_work, i32, %struct.delayed_work, i32 }
%struct.delayed_work = type { i32 }
%struct.il_rx_buf = type { i32 }
%struct.il_rx_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.il_alive_resp }
%struct.il_alive_resp = type { i64, i64, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Alive ucode status 0x%08X revision 0x%01X 0x%01X\0A\00", align 1
@INITIALIZE_SUBTYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Initialization Alive received.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Runtime Alive received.\0A\00", align 1
@UCODE_VALID_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"uCode did not respond OK.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.il_rx_buf*)* @il3945_hdl_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il3945_hdl_alive(%struct.il_priv* %0, %struct.il_rx_buf* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_buf*, align 8
  %5 = alloca %struct.il_rx_pkt*, align 8
  %6 = alloca %struct.il_alive_resp*, align 8
  %7 = alloca %struct.delayed_work*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_rx_buf* %1, %struct.il_rx_buf** %4, align 8
  %8 = load %struct.il_rx_buf*, %struct.il_rx_buf** %4, align 8
  %9 = call %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf* %8)
  store %struct.il_rx_pkt* %9, %struct.il_rx_pkt** %5, align 8
  %10 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %11 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.il_alive_resp* %12, %struct.il_alive_resp** %6, align 8
  %13 = load %struct.il_alive_resp*, %struct.il_alive_resp** %6, align 8
  %14 = getelementptr inbounds %struct.il_alive_resp, %struct.il_alive_resp* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.il_alive_resp*, %struct.il_alive_resp** %6, align 8
  %17 = getelementptr inbounds %struct.il_alive_resp, %struct.il_alive_resp* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.il_alive_resp*, %struct.il_alive_resp** %6, align 8
  %20 = getelementptr inbounds %struct.il_alive_resp, %struct.il_alive_resp* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %15, i32 %18, i64 %21)
  %23 = load %struct.il_alive_resp*, %struct.il_alive_resp** %6, align 8
  %24 = getelementptr inbounds %struct.il_alive_resp, %struct.il_alive_resp* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @INITIALIZE_SUBTYPE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %2
  %29 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %31 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %30, i32 0, i32 4
  %32 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %33 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @memcpy(i32* %31, %struct.il_alive_resp* %34, i32 24)
  %36 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %37 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %36, i32 0, i32 3
  store %struct.delayed_work* %37, %struct.delayed_work** %7, align 8
  br label %50

38:                                               ; preds = %2
  %39 = call i32 (i8*, ...) @D_INFO(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %41 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %40, i32 0, i32 2
  %42 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %43 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i32 @memcpy(i32* %41, %struct.il_alive_resp* %44, i32 24)
  %46 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %47 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %46, i32 0, i32 1
  store %struct.delayed_work* %47, %struct.delayed_work** %7, align 8
  %48 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %49 = call i32 @il3945_disable_events(%struct.il_priv* %48)
  br label %50

50:                                               ; preds = %38, %28
  %51 = load %struct.il_alive_resp*, %struct.il_alive_resp** %6, align 8
  %52 = getelementptr inbounds %struct.il_alive_resp, %struct.il_alive_resp* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @UCODE_VALID_OK, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %58 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.delayed_work*, %struct.delayed_work** %7, align 8
  %61 = call i32 @msecs_to_jiffies(i32 5)
  %62 = call i32 @queue_delayed_work(i32 %59, %struct.delayed_work* %60, i32 %61)
  br label %65

63:                                               ; preds = %50
  %64 = call i32 @IL_WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %56
  ret void
}

declare dso_local %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf*) #1

declare dso_local i32 @D_INFO(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, %struct.il_alive_resp*, i32) #1

declare dso_local i32 @il3945_disable_events(%struct.il_priv*) #1

declare dso_local i32 @queue_delayed_work(i32, %struct.delayed_work*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @IL_WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
