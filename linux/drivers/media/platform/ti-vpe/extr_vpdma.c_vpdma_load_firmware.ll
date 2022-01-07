; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpdma_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@VPDMA_FIRMWARE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@vpdma_firmware_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"firmware not available %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"loading firmware %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpdma_data*)* @vpdma_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpdma_load_firmware(%struct.vpdma_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vpdma_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.vpdma_data* %0, %struct.vpdma_data** %3, align 8
  %6 = load %struct.vpdma_data*, %struct.vpdma_data** %3, align 8
  %7 = getelementptr inbounds %struct.vpdma_data, %struct.vpdma_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load i32, i32* @THIS_MODULE, align 4
  %11 = load i64, i64* @VPDMA_FIRMWARE, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load %struct.vpdma_data*, %struct.vpdma_data** %3, align 8
  %16 = load i32, i32* @vpdma_firmware_cb, align 4
  %17 = call i32 @request_firmware_nowait(i32 %10, i32 1, i8* %12, %struct.device* %13, i32 %14, %struct.vpdma_data* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load i64, i64* @VPDMA_FIRMWARE, align 8
  %23 = call i32 @dev_err(%struct.device* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %30

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load i64, i64* @VPDMA_FIRMWARE, align 8
  %28 = call i32 @dev_info(%struct.device* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  br label %29

29:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %20
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, %struct.device*, i32, %struct.vpdma_data*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
