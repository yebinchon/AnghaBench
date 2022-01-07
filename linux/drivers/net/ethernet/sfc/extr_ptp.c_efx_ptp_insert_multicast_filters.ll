; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_insert_multicast_filters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_insert_multicast_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_ptp_data* }
%struct.efx_ptp_data = type { i32, i32, i32, i32 }
%struct.efx_filter_spec = type { i32 }

@EFX_FILTER_PRI_REQUIRED = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@PTP_ADDRESS = common dso_local global i32 0, align 4
@PTP_EVENT_PORT = common dso_local global i32 0, align 4
@PTP_GENERAL_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_ptp_insert_multicast_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ptp_insert_multicast_filters(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_ptp_data*, align 8
  %5 = alloca %struct.efx_filter_spec, align 4
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 0
  %9 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %8, align 8
  store %struct.efx_ptp_data* %9, %struct.efx_ptp_data** %4, align 8
  %10 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %11 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %16 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %85

20:                                               ; preds = %14
  %21 = load i32, i32* @EFX_FILTER_PRI_REQUIRED, align 4
  %22 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %23 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @efx_channel_get_rx_queue(i32 %24)
  %26 = call i32 @efx_rx_queue_index(i32 %25)
  %27 = call i32 @efx_filter_init_rx(%struct.efx_filter_spec* %5, i32 %21, i32 0, i32 %26)
  %28 = load i32, i32* @IPPROTO_UDP, align 4
  %29 = load i32, i32* @PTP_ADDRESS, align 4
  %30 = call i32 @htonl(i32 %29)
  %31 = load i32, i32* @PTP_EVENT_PORT, align 4
  %32 = call i32 @htons(i32 %31)
  %33 = call i32 @efx_filter_set_ipv4_local(%struct.efx_filter_spec* %5, i32 %28, i32 %30, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %85

38:                                               ; preds = %20
  %39 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %40 = call i32 @efx_filter_insert_filter(%struct.efx_nic* %39, %struct.efx_filter_spec* %5, i32 1)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %85

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %48 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @EFX_FILTER_PRI_REQUIRED, align 4
  %50 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %51 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @efx_channel_get_rx_queue(i32 %52)
  %54 = call i32 @efx_rx_queue_index(i32 %53)
  %55 = call i32 @efx_filter_init_rx(%struct.efx_filter_spec* %5, i32 %49, i32 0, i32 %54)
  %56 = load i32, i32* @IPPROTO_UDP, align 4
  %57 = load i32, i32* @PTP_ADDRESS, align 4
  %58 = call i32 @htonl(i32 %57)
  %59 = load i32, i32* @PTP_GENERAL_PORT, align 4
  %60 = call i32 @htons(i32 %59)
  %61 = call i32 @efx_filter_set_ipv4_local(%struct.efx_filter_spec* %5, i32 %56, i32 %58, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %45
  br label %77

65:                                               ; preds = %45
  %66 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %67 = call i32 @efx_filter_insert_filter(%struct.efx_nic* %66, %struct.efx_filter_spec* %5, i32 1)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %77

71:                                               ; preds = %65
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %74 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %76 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %75, i32 0, i32 0
  store i32 1, i32* %76, align 4
  store i32 0, i32* %2, align 4
  br label %85

77:                                               ; preds = %70, %64
  %78 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %79 = load i32, i32* @EFX_FILTER_PRI_REQUIRED, align 4
  %80 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %4, align 8
  %81 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @efx_filter_remove_id_safe(%struct.efx_nic* %78, i32 %79, i32 %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %77, %71, %43, %36, %19
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @efx_filter_init_rx(%struct.efx_filter_spec*, i32, i32, i32) #1

declare dso_local i32 @efx_rx_queue_index(i32) #1

declare dso_local i32 @efx_channel_get_rx_queue(i32) #1

declare dso_local i32 @efx_filter_set_ipv4_local(%struct.efx_filter_spec*, i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @efx_filter_insert_filter(%struct.efx_nic*, %struct.efx_filter_spec*, i32) #1

declare dso_local i32 @efx_filter_remove_id_safe(%struct.efx_nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
