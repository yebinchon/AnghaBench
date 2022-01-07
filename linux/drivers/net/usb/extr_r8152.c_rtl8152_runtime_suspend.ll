; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { %struct.napi_struct, %struct.TYPE_2__, i32, i32, %struct.net_device* }
%struct.napi_struct = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.r8152.0*, i32)* }
%struct.r8152.0 = type opaque
%struct.net_device = type { i32 }

@SELECTIVE_SUSPEND = common dso_local global i32 0, align 4
@WORK_ENABLE = common dso_local global i32 0, align 4
@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@PLA_RCR = common dso_local global i32 0, align 4
@RCR_ACPT_ALL = common dso_local global i32 0, align 4
@PLA_OOB_CTRL = common dso_local global i32 0, align 4
@RXFIFO_EMPTY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8152*)* @rtl8152_runtime_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8152_runtime_suspend(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.napi_struct*, align 8
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %8 = load %struct.r8152*, %struct.r8152** %2, align 8
  %9 = getelementptr inbounds %struct.r8152, %struct.r8152* %8, i32 0, i32 4
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load i32, i32* @SELECTIVE_SUSPEND, align 4
  %12 = load %struct.r8152*, %struct.r8152** %2, align 8
  %13 = getelementptr inbounds %struct.r8152, %struct.r8152* %12, i32 0, i32 3
  %14 = call i32 @set_bit(i32 %11, i32* %13)
  %15 = call i32 (...) @smp_mb__after_atomic()
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i64 @netif_running(%struct.net_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %114

19:                                               ; preds = %1
  %20 = load i32, i32* @WORK_ENABLE, align 4
  %21 = load %struct.r8152*, %struct.r8152** %2, align 8
  %22 = getelementptr inbounds %struct.r8152, %struct.r8152* %21, i32 0, i32 3
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %114

25:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i64 @netif_carrier_ok(%struct.net_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %69

29:                                               ; preds = %25
  %30 = load %struct.r8152*, %struct.r8152** %2, align 8
  %31 = load i32, i32* @MCU_TYPE_PLA, align 4
  %32 = load i32, i32* @PLA_RCR, align 4
  %33 = call i32 @ocp_read_dword(%struct.r8152* %30, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @RCR_ACPT_ALL, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  store i32 %37, i32* %6, align 4
  %38 = load %struct.r8152*, %struct.r8152** %2, align 8
  %39 = load i32, i32* @MCU_TYPE_PLA, align 4
  %40 = load i32, i32* @PLA_RCR, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @ocp_write_dword(%struct.r8152* %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.r8152*, %struct.r8152** %2, align 8
  %44 = call i32 @rxdy_gated_en(%struct.r8152* %43, i32 1)
  %45 = load %struct.r8152*, %struct.r8152** %2, align 8
  %46 = load i32, i32* @MCU_TYPE_PLA, align 4
  %47 = load i32, i32* @PLA_OOB_CTRL, align 4
  %48 = call i32 @ocp_read_byte(%struct.r8152* %45, i32 %46, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @RXFIFO_EMPTY, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %29
  %54 = load %struct.r8152*, %struct.r8152** %2, align 8
  %55 = call i32 @rxdy_gated_en(%struct.r8152* %54, i32 0)
  %56 = load %struct.r8152*, %struct.r8152** %2, align 8
  %57 = load i32, i32* @MCU_TYPE_PLA, align 4
  %58 = load i32, i32* @PLA_RCR, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @ocp_write_dword(%struct.r8152* %56, i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* @SELECTIVE_SUSPEND, align 4
  %62 = load %struct.r8152*, %struct.r8152** %2, align 8
  %63 = getelementptr inbounds %struct.r8152, %struct.r8152* %62, i32 0, i32 3
  %64 = call i32 @clear_bit(i32 %61, i32* %63)
  %65 = call i32 (...) @smp_mb__after_atomic()
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %115

68:                                               ; preds = %29
  br label %69

69:                                               ; preds = %68, %25
  %70 = load i32, i32* @WORK_ENABLE, align 4
  %71 = load %struct.r8152*, %struct.r8152** %2, align 8
  %72 = getelementptr inbounds %struct.r8152, %struct.r8152* %71, i32 0, i32 3
  %73 = call i32 @clear_bit(i32 %70, i32* %72)
  %74 = load %struct.r8152*, %struct.r8152** %2, align 8
  %75 = getelementptr inbounds %struct.r8152, %struct.r8152* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @usb_kill_urb(i32 %76)
  %78 = load %struct.r8152*, %struct.r8152** %2, align 8
  %79 = getelementptr inbounds %struct.r8152, %struct.r8152* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32 (%struct.r8152.0*, i32)*, i32 (%struct.r8152.0*, i32)** %80, align 8
  %82 = load %struct.r8152*, %struct.r8152** %2, align 8
  %83 = bitcast %struct.r8152* %82 to %struct.r8152.0*
  %84 = call i32 %81(%struct.r8152.0* %83, i32 1)
  %85 = load %struct.net_device*, %struct.net_device** %3, align 8
  %86 = call i64 @netif_carrier_ok(%struct.net_device* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %69
  %89 = load %struct.r8152*, %struct.r8152** %2, align 8
  %90 = getelementptr inbounds %struct.r8152, %struct.r8152* %89, i32 0, i32 0
  store %struct.napi_struct* %90, %struct.napi_struct** %7, align 8
  %91 = load %struct.napi_struct*, %struct.napi_struct** %7, align 8
  %92 = call i32 @napi_disable(%struct.napi_struct* %91)
  %93 = load %struct.r8152*, %struct.r8152** %2, align 8
  %94 = call i32 @rtl_stop_rx(%struct.r8152* %93)
  %95 = load %struct.r8152*, %struct.r8152** %2, align 8
  %96 = call i32 @rxdy_gated_en(%struct.r8152* %95, i32 0)
  %97 = load %struct.r8152*, %struct.r8152** %2, align 8
  %98 = load i32, i32* @MCU_TYPE_PLA, align 4
  %99 = load i32, i32* @PLA_RCR, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @ocp_write_dword(%struct.r8152* %97, i32 %98, i32 %99, i32 %100)
  %102 = load %struct.napi_struct*, %struct.napi_struct** %7, align 8
  %103 = call i32 @napi_enable(%struct.napi_struct* %102)
  br label %104

104:                                              ; preds = %88, %69
  %105 = load %struct.r8152*, %struct.r8152** %2, align 8
  %106 = call i64 @delay_autosuspend(%struct.r8152* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load %struct.r8152*, %struct.r8152** %2, align 8
  %110 = call i32 @rtl8152_runtime_resume(%struct.r8152* %109)
  %111 = load i32, i32* @EBUSY, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %108, %104
  br label %114

114:                                              ; preds = %113, %19, %1
  br label %115

115:                                              ; preds = %114, %53
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @ocp_read_dword(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_dword(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @rxdy_gated_en(%struct.r8152*, i32) #1

declare dso_local i32 @ocp_read_byte(%struct.r8152*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @napi_disable(%struct.napi_struct*) #1

declare dso_local i32 @rtl_stop_rx(%struct.r8152*) #1

declare dso_local i32 @napi_enable(%struct.napi_struct*) #1

declare dso_local i64 @delay_autosuspend(%struct.r8152*) #1

declare dso_local i32 @rtl8152_runtime_resume(%struct.r8152*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
