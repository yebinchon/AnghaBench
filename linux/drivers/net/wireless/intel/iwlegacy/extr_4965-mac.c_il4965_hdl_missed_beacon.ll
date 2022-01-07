; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_hdl_missed_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-mac.c_il4965_hdl_missed_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i64, i32 }
%struct.il_rx_buf = type { i32 }
%struct.il_rx_pkt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.il_missed_beacon_notif }
%struct.il_missed_beacon_notif = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"missed bcn cnsq %d totl %d rcd %d expctd %d\0A\00", align 1
@S_SCANNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.il_rx_buf*)* @il4965_hdl_missed_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il4965_hdl_missed_beacon(%struct.il_priv* %0, %struct.il_rx_buf* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rx_buf*, align 8
  %5 = alloca %struct.il_rx_pkt*, align 8
  %6 = alloca %struct.il_missed_beacon_notif*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_rx_buf* %1, %struct.il_rx_buf** %4, align 8
  %7 = load %struct.il_rx_buf*, %struct.il_rx_buf** %4, align 8
  %8 = call %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf* %7)
  store %struct.il_rx_pkt* %8, %struct.il_rx_pkt** %5, align 8
  %9 = load %struct.il_rx_pkt*, %struct.il_rx_pkt** %5, align 8
  %10 = getelementptr inbounds %struct.il_rx_pkt, %struct.il_rx_pkt* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.il_missed_beacon_notif* %11, %struct.il_missed_beacon_notif** %6, align 8
  %12 = load %struct.il_missed_beacon_notif*, %struct.il_missed_beacon_notif** %6, align 8
  %13 = getelementptr inbounds %struct.il_missed_beacon_notif, %struct.il_missed_beacon_notif* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @le32_to_cpu(i32 %14)
  %16 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %47

20:                                               ; preds = %2
  %21 = load %struct.il_missed_beacon_notif*, %struct.il_missed_beacon_notif** %6, align 8
  %22 = getelementptr inbounds %struct.il_missed_beacon_notif, %struct.il_missed_beacon_notif* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @le32_to_cpu(i32 %23)
  %25 = load %struct.il_missed_beacon_notif*, %struct.il_missed_beacon_notif** %6, align 8
  %26 = getelementptr inbounds %struct.il_missed_beacon_notif, %struct.il_missed_beacon_notif* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @le32_to_cpu(i32 %27)
  %29 = load %struct.il_missed_beacon_notif*, %struct.il_missed_beacon_notif** %6, align 8
  %30 = getelementptr inbounds %struct.il_missed_beacon_notif, %struct.il_missed_beacon_notif* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @le32_to_cpu(i32 %31)
  %33 = load %struct.il_missed_beacon_notif*, %struct.il_missed_beacon_notif** %6, align 8
  %34 = getelementptr inbounds %struct.il_missed_beacon_notif, %struct.il_missed_beacon_notif* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @le32_to_cpu(i32 %35)
  %37 = call i32 @D_CALIB(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %28, i64 %32, i64 %36)
  %38 = load i32, i32* @S_SCANNING, align 4
  %39 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %40 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %39, i32 0, i32 1
  %41 = call i32 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %20
  %44 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %45 = call i32 @il4965_init_sensitivity(%struct.il_priv* %44)
  br label %46

46:                                               ; preds = %43, %20
  br label %47

47:                                               ; preds = %46, %2
  ret void
}

declare dso_local %struct.il_rx_pkt* @rxb_addr(%struct.il_rx_buf*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @D_CALIB(i8*, i64, i64, i64, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @il4965_init_sensitivity(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
