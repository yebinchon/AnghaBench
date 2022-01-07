; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/mmc/siano/extr_smssdio.c_smssdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/mmc/siano/extr_smssdio.c_smssdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.sdio_device_id = type { i32 }
%struct.smssdio_device = type { i32, %struct.sdio_func* }
%struct.smsdevice_params_t = type { i32, i32, i64, i32, i32, i32, %struct.smssdio_device*, i32* }
%struct.TYPE_2__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"sdio\\%s\00", align 1
@smssdio_sendrequest = common dso_local global i32 0, align 4
@SMS_STELLAR = common dso_local global i64 0, align 8
@SMS_DEVICE_FAMILY2 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@SMSSDIO_BLOCK_SIZE = common dso_local global i32 0, align 4
@smssdio_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, %struct.sdio_device_id*)* @smssdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smssdio_probe(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.smssdio_device*, align 8
  %9 = alloca %struct.smsdevice_params_t, align 8
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  %10 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %11 = getelementptr inbounds %struct.sdio_device_id, %struct.sdio_device_id* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.smssdio_device* @kzalloc(i32 16, i32 %13)
  store %struct.smssdio_device* %14, %struct.smssdio_device** %8, align 8
  %15 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %16 = icmp ne %struct.smssdio_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %124

20:                                               ; preds = %2
  %21 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %22 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %23 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %22, i32 0, i32 1
  store %struct.sdio_func* %21, %struct.sdio_func** %23, align 8
  %24 = call i32 @memset(%struct.smsdevice_params_t* %9, i32 0, i32 48)
  %25 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %26 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %9, i32 0, i32 7
  store i32* %26, i32** %27, align 8
  %28 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %9, i32 0, i32 0
  store i32 20480, i32* %28, align 8
  %29 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %9, i32 0, i32 1
  store i32 22, i32* %29, align 4
  %30 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %31 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %9, i32 0, i32 6
  store %struct.smssdio_device* %30, %struct.smssdio_device** %31, align 8
  %32 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %9, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %35 = call i8* @sdio_func_id(%struct.sdio_func* %34)
  %36 = call i32 @snprintf(i32 %33, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @smssdio_sendrequest, align 4
  %38 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %9, i32 0, i32 4
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call %struct.TYPE_2__* @sms_get_board(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %9, i32 0, i32 2
  store i64 %42, i64* %43, align 8
  %44 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %9, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SMS_STELLAR, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %20
  %49 = load i32, i32* @SMS_DEVICE_FAMILY2, align 4
  %50 = getelementptr inbounds %struct.smsdevice_params_t, %struct.smsdevice_params_t* %9, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 8
  br label %56

53:                                               ; preds = %20
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %120

56:                                               ; preds = %48
  %57 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %58 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %57, i32 0, i32 0
  %59 = load i32, i32* @GFP_DMA, align 4
  %60 = call i32 @smscore_register_device(%struct.smsdevice_params_t* %9, i32* %58, i32 %59, i32* null)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %120

64:                                               ; preds = %56
  %65 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %66 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @smscore_set_board_id(i32 %67, i32 %68)
  %70 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %71 = call i32 @sdio_claim_host(%struct.sdio_func* %70)
  %72 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %73 = call i32 @sdio_enable_func(%struct.sdio_func* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  br label %113

77:                                               ; preds = %64
  %78 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %79 = load i32, i32* @SMSSDIO_BLOCK_SIZE, align 4
  %80 = call i32 @sdio_set_block_size(%struct.sdio_func* %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %110

84:                                               ; preds = %77
  %85 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %86 = load i32, i32* @smssdio_interrupt, align 4
  %87 = call i32 @sdio_claim_irq(%struct.sdio_func* %85, i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %110

91:                                               ; preds = %84
  %92 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %93 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %94 = call i32 @sdio_set_drvdata(%struct.sdio_func* %92, %struct.smssdio_device* %93)
  %95 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %96 = call i32 @sdio_release_host(%struct.sdio_func* %95)
  %97 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %98 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @smscore_start_device(i32 %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  br label %105

104:                                              ; preds = %91
  store i32 0, i32* %3, align 4
  br label %124

105:                                              ; preds = %103
  %106 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %107 = call i32 @sdio_claim_host(%struct.sdio_func* %106)
  %108 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %109 = call i32 @sdio_release_irq(%struct.sdio_func* %108)
  br label %110

110:                                              ; preds = %105, %90, %83
  %111 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %112 = call i32 @sdio_disable_func(%struct.sdio_func* %111)
  br label %113

113:                                              ; preds = %110, %76
  %114 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %115 = call i32 @sdio_release_host(%struct.sdio_func* %114)
  %116 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %117 = getelementptr inbounds %struct.smssdio_device, %struct.smssdio_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @smscore_unregister_device(i32 %118)
  br label %120

120:                                              ; preds = %113, %63, %53
  %121 = load %struct.smssdio_device*, %struct.smssdio_device** %8, align 8
  %122 = call i32 @kfree(%struct.smssdio_device* %121)
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %120, %104, %17
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.smssdio_device* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.smsdevice_params_t*, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @sdio_func_id(%struct.sdio_func*) #1

declare dso_local %struct.TYPE_2__* @sms_get_board(i32) #1

declare dso_local i32 @smscore_register_device(%struct.smsdevice_params_t*, i32*, i32, i32*) #1

declare dso_local i32 @smscore_set_board_id(i32, i32) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_enable_func(%struct.sdio_func*) #1

declare dso_local i32 @sdio_set_block_size(%struct.sdio_func*, i32) #1

declare dso_local i32 @sdio_claim_irq(%struct.sdio_func*, i32) #1

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, %struct.smssdio_device*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @smscore_start_device(i32) #1

declare dso_local i32 @sdio_release_irq(%struct.sdio_func*) #1

declare dso_local i32 @sdio_disable_func(%struct.sdio_func*) #1

declare dso_local i32 @smscore_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.smssdio_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
