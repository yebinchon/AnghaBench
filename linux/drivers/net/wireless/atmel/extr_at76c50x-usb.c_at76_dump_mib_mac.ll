; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_dump_mib_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_dump_mib_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at76_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mib_mac = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@MIB_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"at76_get_mib (MAC) failed: %d\0A\00", align 1
@DBG_MIB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [302 x i8] c"%s: MIB MAC: max_tx_msdu_lifetime %d max_rx_lifetime %d frag_threshold %d rts_threshold %d cwmin %d cwmax %d short_retry_time %d long_retry_time %d scan_type %d scan_channel %d probe_delay %u min_channel_time %d max_channel_time %d listen_int %d desired_ssid %*phD desired_bssid %pM desired_bsstype %d\00", align 1
@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.at76_priv*)* @at76_dump_mib_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at76_dump_mib_mac(%struct.at76_priv* %0) #0 {
  %2 = alloca %struct.at76_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mib_mac*, align 8
  store %struct.at76_priv* %0, %struct.at76_priv** %2, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.mib_mac* @kmalloc(i32 68, i32 %5)
  store %struct.mib_mac* %6, %struct.mib_mac** %4, align 8
  %7 = load %struct.mib_mac*, %struct.mib_mac** %4, align 8
  %8 = icmp ne %struct.mib_mac* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %101

10:                                               ; preds = %1
  %11 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %12 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @MIB_MAC, align 4
  %15 = load %struct.mib_mac*, %struct.mib_mac** %4, align 8
  %16 = call i32 @at76_get_mib(i32 %13, i32 %14, %struct.mib_mac* %15, i32 68)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %10
  %20 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %21 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @wiphy_err(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %98

27:                                               ; preds = %10
  %28 = load i32, i32* @DBG_MIB, align 4
  %29 = load %struct.at76_priv*, %struct.at76_priv** %2, align 8
  %30 = getelementptr inbounds %struct.at76_priv, %struct.at76_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wiphy_name(i32 %33)
  %35 = load %struct.mib_mac*, %struct.mib_mac** %4, align 8
  %36 = getelementptr inbounds %struct.mib_mac, %struct.mib_mac* %35, i32 0, i32 16
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = load %struct.mib_mac*, %struct.mib_mac** %4, align 8
  %40 = getelementptr inbounds %struct.mib_mac, %struct.mib_mac* %39, i32 0, i32 15
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  %43 = load %struct.mib_mac*, %struct.mib_mac** %4, align 8
  %44 = getelementptr inbounds %struct.mib_mac, %struct.mib_mac* %43, i32 0, i32 14
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le16_to_cpu(i32 %45)
  %47 = load %struct.mib_mac*, %struct.mib_mac** %4, align 8
  %48 = getelementptr inbounds %struct.mib_mac, %struct.mib_mac* %47, i32 0, i32 13
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = load %struct.mib_mac*, %struct.mib_mac** %4, align 8
  %52 = getelementptr inbounds %struct.mib_mac, %struct.mib_mac* %51, i32 0, i32 12
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  %55 = load %struct.mib_mac*, %struct.mib_mac** %4, align 8
  %56 = getelementptr inbounds %struct.mib_mac, %struct.mib_mac* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le16_to_cpu(i32 %57)
  %59 = load %struct.mib_mac*, %struct.mib_mac** %4, align 8
  %60 = getelementptr inbounds %struct.mib_mac, %struct.mib_mac* %59, i32 0, i32 10
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mib_mac*, %struct.mib_mac** %4, align 8
  %63 = getelementptr inbounds %struct.mib_mac, %struct.mib_mac* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mib_mac*, %struct.mib_mac** %4, align 8
  %66 = getelementptr inbounds %struct.mib_mac, %struct.mib_mac* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mib_mac*, %struct.mib_mac** %4, align 8
  %69 = getelementptr inbounds %struct.mib_mac, %struct.mib_mac* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mib_mac*, %struct.mib_mac** %4, align 8
  %72 = getelementptr inbounds %struct.mib_mac, %struct.mib_mac* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le16_to_cpu(i32 %73)
  %75 = load %struct.mib_mac*, %struct.mib_mac** %4, align 8
  %76 = getelementptr inbounds %struct.mib_mac, %struct.mib_mac* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le16_to_cpu(i32 %77)
  %79 = load %struct.mib_mac*, %struct.mib_mac** %4, align 8
  %80 = getelementptr inbounds %struct.mib_mac, %struct.mib_mac* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @le16_to_cpu(i32 %81)
  %83 = load %struct.mib_mac*, %struct.mib_mac** %4, align 8
  %84 = getelementptr inbounds %struct.mib_mac, %struct.mib_mac* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le16_to_cpu(i32 %85)
  %87 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %88 = load %struct.mib_mac*, %struct.mib_mac** %4, align 8
  %89 = getelementptr inbounds %struct.mib_mac, %struct.mib_mac* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.mib_mac*, %struct.mib_mac** %4, align 8
  %92 = getelementptr inbounds %struct.mib_mac, %struct.mib_mac* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mib_mac*, %struct.mib_mac** %4, align 8
  %95 = getelementptr inbounds %struct.mib_mac, %struct.mib_mac* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @at76_dbg(i32 %28, i8* getelementptr inbounds ([302 x i8], [302 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %38, i32 %42, i32 %46, i32 %50, i32 %54, i32 %58, i32 %61, i32 %64, i32 %67, i32 %70, i32 %74, i32 %78, i32 %82, i32 %86, i32 %87, i32 %90, i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %27, %19
  %99 = load %struct.mib_mac*, %struct.mib_mac** %4, align 8
  %100 = call i32 @kfree(%struct.mib_mac* %99)
  br label %101

101:                                              ; preds = %98, %9
  ret void
}

declare dso_local %struct.mib_mac* @kmalloc(i32, i32) #1

declare dso_local i32 @at76_get_mib(i32, i32, %struct.mib_mac*, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32) #1

declare dso_local i32 @at76_dbg(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wiphy_name(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.mib_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
