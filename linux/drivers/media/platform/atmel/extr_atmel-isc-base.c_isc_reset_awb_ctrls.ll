; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_reset_awb_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_reset_awb_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32* }

@ISC_HIS_CFG_MODE_GR = common dso_local global i32 0, align 4
@ISC_HIS_CFG_MODE_B = common dso_local global i32 0, align 4
@ISC_WB_O_ZERO_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isc_device*)* @isc_reset_awb_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isc_reset_awb_ctrls(%struct.isc_device* %0) #0 {
  %2 = alloca %struct.isc_device*, align 8
  %3 = alloca i32, align 4
  store %struct.isc_device* %0, %struct.isc_device** %2, align 8
  %4 = load i32, i32* @ISC_HIS_CFG_MODE_GR, align 4
  store i32 %4, i32* %3, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @ISC_HIS_CFG_MODE_B, align 4
  %8 = icmp ule i32 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %11 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 512, i32* %16, align 4
  %17 = load i32, i32* @ISC_WB_O_ZERO_VAL, align 4
  %18 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %19 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 %17, i32* %24, align 4
  br label %25

25:                                               ; preds = %9
  %26 = load i32, i32* %3, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %5

28:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
