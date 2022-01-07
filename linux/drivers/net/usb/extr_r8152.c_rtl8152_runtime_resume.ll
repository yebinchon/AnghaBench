; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32, %struct.TYPE_2__, i32, %struct.napi_struct, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32 (%struct.r8152.0*, i32)*, i32 (%struct.r8152.1*)* }
%struct.r8152.0 = type opaque
%struct.r8152.1 = type opaque
%struct.napi_struct = type { i32 }
%struct.net_device = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@WORK_ENABLE = common dso_local global i32 0, align 4
@LINK_STATUS = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"linking down\0A\00", align 1
@SELECTIVE_SUSPEND = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8152*)* @rtl8152_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8152_runtime_resume(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.napi_struct*, align 8
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %5 = load %struct.r8152*, %struct.r8152** %2, align 8
  %6 = getelementptr inbounds %struct.r8152, %struct.r8152* %5, i32 0, i32 5
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i64 @netif_running(%struct.net_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %83

11:                                               ; preds = %1
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_UP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %83

18:                                               ; preds = %11
  %19 = load %struct.r8152*, %struct.r8152** %2, align 8
  %20 = getelementptr inbounds %struct.r8152, %struct.r8152* %19, i32 0, i32 3
  store %struct.napi_struct* %20, %struct.napi_struct** %4, align 8
  %21 = load %struct.r8152*, %struct.r8152** %2, align 8
  %22 = getelementptr inbounds %struct.r8152, %struct.r8152* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.r8152.0*, i32)*, i32 (%struct.r8152.0*, i32)** %23, align 8
  %25 = load %struct.r8152*, %struct.r8152** %2, align 8
  %26 = bitcast %struct.r8152* %25 to %struct.r8152.0*
  %27 = call i32 %24(%struct.r8152.0* %26, i32 0)
  %28 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %29 = call i32 @napi_disable(%struct.napi_struct* %28)
  %30 = load i32, i32* @WORK_ENABLE, align 4
  %31 = load %struct.r8152*, %struct.r8152** %2, align 8
  %32 = getelementptr inbounds %struct.r8152, %struct.r8152* %31, i32 0, i32 0
  %33 = call i32 @set_bit(i32 %30, i32* %32)
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i64 @netif_carrier_ok(%struct.net_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %61

37:                                               ; preds = %18
  %38 = load %struct.r8152*, %struct.r8152** %2, align 8
  %39 = call i32 @rtl8152_get_speed(%struct.r8152* %38)
  %40 = load i32, i32* @LINK_STATUS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.r8152*, %struct.r8152** %2, align 8
  %45 = call i32 @rtl_start_rx(%struct.r8152* %44)
  br label %60

46:                                               ; preds = %37
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = call i32 @netif_carrier_off(%struct.net_device* %47)
  %49 = load %struct.r8152*, %struct.r8152** %2, align 8
  %50 = getelementptr inbounds %struct.r8152, %struct.r8152* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32 (%struct.r8152.1*)*, i32 (%struct.r8152.1*)** %51, align 8
  %53 = load %struct.r8152*, %struct.r8152** %2, align 8
  %54 = bitcast %struct.r8152* %53 to %struct.r8152.1*
  %55 = call i32 %52(%struct.r8152.1* %54)
  %56 = load %struct.r8152*, %struct.r8152** %2, align 8
  %57 = load i32, i32* @link, align 4
  %58 = load %struct.net_device*, %struct.net_device** %3, align 8
  %59 = call i32 @netif_info(%struct.r8152* %56, i32 %57, %struct.net_device* %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %46, %43
  br label %61

61:                                               ; preds = %60, %18
  %62 = load %struct.napi_struct*, %struct.napi_struct** %4, align 8
  %63 = call i32 @napi_enable(%struct.napi_struct* %62)
  %64 = load i32, i32* @SELECTIVE_SUSPEND, align 4
  %65 = load %struct.r8152*, %struct.r8152** %2, align 8
  %66 = getelementptr inbounds %struct.r8152, %struct.r8152* %65, i32 0, i32 0
  %67 = call i32 @clear_bit(i32 %64, i32* %66)
  %68 = call i32 (...) @smp_mb__after_atomic()
  %69 = load %struct.r8152*, %struct.r8152** %2, align 8
  %70 = getelementptr inbounds %struct.r8152, %struct.r8152* %69, i32 0, i32 4
  %71 = call i32 @list_empty(i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %61
  %74 = load %struct.r8152*, %struct.r8152** %2, align 8
  %75 = getelementptr inbounds %struct.r8152, %struct.r8152* %74, i32 0, i32 3
  %76 = call i32 @napi_schedule(%struct.napi_struct* %75)
  br label %77

77:                                               ; preds = %73, %61
  %78 = load %struct.r8152*, %struct.r8152** %2, align 8
  %79 = getelementptr inbounds %struct.r8152, %struct.r8152* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @GFP_NOIO, align 4
  %82 = call i32 @usb_submit_urb(i32 %80, i32 %81)
  br label %103

83:                                               ; preds = %11, %1
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IFF_UP, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load %struct.r8152*, %struct.r8152** %2, align 8
  %92 = getelementptr inbounds %struct.r8152, %struct.r8152* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32 (%struct.r8152.0*, i32)*, i32 (%struct.r8152.0*, i32)** %93, align 8
  %95 = load %struct.r8152*, %struct.r8152** %2, align 8
  %96 = bitcast %struct.r8152* %95 to %struct.r8152.0*
  %97 = call i32 %94(%struct.r8152.0* %96, i32 0)
  br label %98

98:                                               ; preds = %90, %83
  %99 = load i32, i32* @SELECTIVE_SUSPEND, align 4
  %100 = load %struct.r8152*, %struct.r8152** %2, align 8
  %101 = getelementptr inbounds %struct.r8152, %struct.r8152* %100, i32 0, i32 0
  %102 = call i32 @clear_bit(i32 %99, i32* %101)
  br label %103

103:                                              ; preds = %98, %77
  ret i32 0
}

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @napi_disable(%struct.napi_struct*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @rtl8152_get_speed(%struct.r8152*) #1

declare dso_local i32 @rtl_start_rx(%struct.r8152*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.r8152*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @napi_enable(%struct.napi_struct*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @napi_schedule(%struct.napi_struct*) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
