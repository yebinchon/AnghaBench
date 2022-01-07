; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_set_carrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_set_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i64, i32, %struct.TYPE_2__, i32, %struct.napi_struct, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32 (%struct.r8152.0*)*, i32 (%struct.r8152.1*)* }
%struct.r8152.0 = type opaque
%struct.r8152.1 = type opaque
%struct.napi_struct = type { i32 }
%struct.net_device = type { i32 }

@LINK_STATUS = common dso_local global i32 0, align 4
@RTL8152_SET_RX_MODE = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"carrier on\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"carrier off\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*)* @set_carrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_carrier(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.napi_struct*, align 8
  %5 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %6 = load %struct.r8152*, %struct.r8152** %2, align 8
  %7 = getelementptr inbounds %struct.r8152, %struct.r8152* %6, i32 0, i32 6
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.r8152*, %struct.r8152** %2, align 8
  %10 = getelementptr inbounds %struct.r8152, %struct.r8152* %9, i32 0, i32 4
  store %struct.napi_struct* %10, %struct.napi_struct** %4, align 8
  %11 = load %struct.r8152*, %struct.r8152** %2, align 8
  %12 = call i32 @rtl8152_get_speed(%struct.r8152* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @LINK_STATUS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %69

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = call i64 @netif_carrier_ok(%struct.net_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %52, label %21

21:                                               ; preds = %17
  %22 = load %struct.r8152*, %struct.r8152** %2, align 8
  %23 = getelementptr inbounds %struct.r8152, %struct.r8152* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32 (%struct.r8152.1*)*, i32 (%struct.r8152.1*)** %24, align 8
  %26 = load %struct.r8152*, %struct.r8152** %2, align 8
  %27 = bitcast %struct.r8152* %26 to %struct.r8152.1*
  %28 = call i32 %25(%struct.r8152.1* %27)
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @netif_stop_queue(%struct.net_device* %29)
  %31 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %32 = call i32 @napi_disable(%struct.napi_struct* %31)
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @netif_carrier_on(%struct.net_device* %33)
  %35 = load %struct.r8152*, %struct.r8152** %2, align 8
  %36 = call i32 @rtl_start_rx(%struct.r8152* %35)
  %37 = load i32, i32* @RTL8152_SET_RX_MODE, align 4
  %38 = load %struct.r8152*, %struct.r8152** %2, align 8
  %39 = getelementptr inbounds %struct.r8152, %struct.r8152* %38, i32 0, i32 5
  %40 = call i32 @clear_bit(i32 %37, i32* %39)
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @_rtl8152_set_rx_mode(%struct.net_device* %41)
  %43 = load %struct.r8152*, %struct.r8152** %2, align 8
  %44 = getelementptr inbounds %struct.r8152, %struct.r8152* %43, i32 0, i32 4
  %45 = call i32 @napi_enable(%struct.napi_struct* %44)
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @netif_wake_queue(%struct.net_device* %46)
  %48 = load %struct.r8152*, %struct.r8152** %2, align 8
  %49 = load i32, i32* @link, align 4
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @netif_info(%struct.r8152* %48, i32 %49, %struct.net_device* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %68

52:                                               ; preds = %17
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i64 @netif_queue_stopped(%struct.net_device* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load %struct.r8152*, %struct.r8152** %2, align 8
  %58 = getelementptr inbounds %struct.r8152, %struct.r8152* %57, i32 0, i32 3
  %59 = call i64 @skb_queue_len(i32* %58)
  %60 = load %struct.r8152*, %struct.r8152** %2, align 8
  %61 = getelementptr inbounds %struct.r8152, %struct.r8152* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = call i32 @netif_wake_queue(%struct.net_device* %65)
  br label %67

67:                                               ; preds = %64, %56, %52
  br label %68

68:                                               ; preds = %67, %21
  br label %98

69:                                               ; preds = %1
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = call i64 @netif_carrier_ok(%struct.net_device* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %69
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = call i32 @netif_carrier_off(%struct.net_device* %74)
  %76 = load %struct.r8152*, %struct.r8152** %2, align 8
  %77 = getelementptr inbounds %struct.r8152, %struct.r8152* %76, i32 0, i32 1
  %78 = call i32 @tasklet_disable(i32* %77)
  %79 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %80 = call i32 @napi_disable(%struct.napi_struct* %79)
  %81 = load %struct.r8152*, %struct.r8152** %2, align 8
  %82 = getelementptr inbounds %struct.r8152, %struct.r8152* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32 (%struct.r8152.0*)*, i32 (%struct.r8152.0*)** %83, align 8
  %85 = load %struct.r8152*, %struct.r8152** %2, align 8
  %86 = bitcast %struct.r8152* %85 to %struct.r8152.0*
  %87 = call i32 %84(%struct.r8152.0* %86)
  %88 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %89 = call i32 @napi_enable(%struct.napi_struct* %88)
  %90 = load %struct.r8152*, %struct.r8152** %2, align 8
  %91 = getelementptr inbounds %struct.r8152, %struct.r8152* %90, i32 0, i32 1
  %92 = call i32 @tasklet_enable(i32* %91)
  %93 = load %struct.r8152*, %struct.r8152** %2, align 8
  %94 = load i32, i32* @link, align 4
  %95 = load %struct.net_device*, %struct.net_device** %3, align 8
  %96 = call i32 @netif_info(%struct.r8152* %93, i32 %94, %struct.net_device* %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %97

97:                                               ; preds = %73, %69
  br label %98

98:                                               ; preds = %97, %68
  ret void
}

declare dso_local i32 @rtl8152_get_speed(%struct.r8152*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(%struct.napi_struct*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @rtl_start_rx(%struct.r8152*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @_rtl8152_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @napi_enable(%struct.napi_struct*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.r8152*, i32, %struct.net_device*, i8*) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @tasklet_disable(i32*) #1

declare dso_local i32 @tasklet_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
