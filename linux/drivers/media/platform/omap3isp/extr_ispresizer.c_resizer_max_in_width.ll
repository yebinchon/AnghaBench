; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_max_in_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispresizer.c_resizer_max_in_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_res_device = type { i64 }
%struct.isp_device = type { i64 }

@RESIZER_INPUT_MEMORY = common dso_local global i64 0, align 8
@MAX_IN_WIDTH_MEMORY_MODE = common dso_local global i32 0, align 4
@ISP_REVISION_1_0 = common dso_local global i64 0, align 8
@MAX_IN_WIDTH_ONTHEFLY_MODE_ES1 = common dso_local global i32 0, align 4
@MAX_IN_WIDTH_ONTHEFLY_MODE_ES2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_res_device*)* @resizer_max_in_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resizer_max_in_width(%struct.isp_res_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp_res_device*, align 8
  %4 = alloca %struct.isp_device*, align 8
  store %struct.isp_res_device* %0, %struct.isp_res_device** %3, align 8
  %5 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %6 = call %struct.isp_device* @to_isp_device(%struct.isp_res_device* %5)
  store %struct.isp_device* %6, %struct.isp_device** %4, align 8
  %7 = load %struct.isp_res_device*, %struct.isp_res_device** %3, align 8
  %8 = getelementptr inbounds %struct.isp_res_device, %struct.isp_res_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RESIZER_INPUT_MEMORY, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @MAX_IN_WIDTH_MEMORY_MODE, align 4
  store i32 %13, i32* %2, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %16 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ISP_REVISION_1_0, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @MAX_IN_WIDTH_ONTHEFLY_MODE_ES1, align 4
  store i32 %21, i32* %2, align 4
  br label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @MAX_IN_WIDTH_ONTHEFLY_MODE_ES2, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %20, %12
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.isp_device* @to_isp_device(%struct.isp_res_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
