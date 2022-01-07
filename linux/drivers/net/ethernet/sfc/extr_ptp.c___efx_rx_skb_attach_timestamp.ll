; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c___efx_rx_skb_attach_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c___efx_rx_skb_attach_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i64, i64, i32, %struct.efx_nic* }
%struct.efx_nic = type { i32, %struct.efx_ptp_data* }
%struct.efx_ptp_data = type { %struct.TYPE_4__, i32 (i64, i64, i32)*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.sk_buff = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }

@SYNC_EVENTS_VALID = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"packet timestamp %x too far from sync event %x:%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__efx_rx_skb_attach_timestamp(%struct.efx_channel* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.efx_channel*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca %struct.efx_ptp_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.skb_shared_hwtstamps*, align 8
  store %struct.efx_channel* %0, %struct.efx_channel** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %13 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %12, i32 0, i32 3
  %14 = load %struct.efx_nic*, %struct.efx_nic** %13, align 8
  store %struct.efx_nic* %14, %struct.efx_nic** %5, align 8
  %15 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %16 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %15, i32 0, i32 1
  %17 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %16, align 8
  store %struct.efx_ptp_data* %17, %struct.efx_ptp_data** %6, align 8
  %18 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %19 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SYNC_EVENTS_VALID, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %118

24:                                               ; preds = %2
  %25 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @skb_mac_header(%struct.sk_buff* %26)
  %28 = call i64 @efx_rx_buf_timestamp_minor(%struct.efx_nic* %25, i32 %27)
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %31 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %36 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %24
  %40 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %41 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %39, %24
  %47 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %48 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %51 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = sub nsw i64 %53, %54
  %56 = icmp sge i64 %49, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %62 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sle i64 %60, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %46
  %67 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %68 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %10, align 8
  %72 = add nsw i64 %70, %71
  store i64 %72, i64* %7, align 8
  br label %103

73:                                               ; preds = %46
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %76 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %74, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %73
  %81 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %82 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %10, align 8
  %87 = add nsw i64 %85, %86
  store i64 %87, i64* %7, align 8
  br label %102

88:                                               ; preds = %73
  %89 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %90 = load i32, i32* @drv, align 4
  %91 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %92 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %96 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.efx_channel*, %struct.efx_channel** %3, align 8
  %99 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @netif_vdbg(%struct.efx_nic* %89, i32 %90, i32 %93, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %94, i32 %97, i64 %100)
  br label %118

102:                                              ; preds = %80
  br label %103

103:                                              ; preds = %102, %66
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %104)
  store %struct.skb_shared_hwtstamps* %105, %struct.skb_shared_hwtstamps** %11, align 8
  %106 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %107 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %106, i32 0, i32 1
  %108 = load i32 (i64, i64, i32)*, i32 (i64, i64, i32)** %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %6, align 8
  %112 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 %108(i64 %109, i64 %110, i32 %114)
  %116 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %11, align 8
  %117 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %103, %88, %23
  ret void
}

declare dso_local i64 @efx_rx_buf_timestamp_minor(%struct.efx_nic*, i32) #1

declare dso_local i32 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @netif_vdbg(%struct.efx_nic*, i32, i32, i8*, i64, i32, i64) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
