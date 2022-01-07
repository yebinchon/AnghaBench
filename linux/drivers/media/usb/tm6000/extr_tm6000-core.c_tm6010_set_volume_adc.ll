; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-core.c_tm6010_set_volume_adc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-core.c_tm6010_set_volume_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { i64 }

@TM6010 = common dso_local global i64 0, align 8
@TM6010_REQ08_RF2_LEFT_CHANNEL_VOL = common dso_local global i32 0, align 4
@TM6010_REQ08_RF3_RIGHT_CHANNEL_VOL = common dso_local global i32 0, align 4
@TM6000_REQ07_REC_VADC_AADC_LVOL = common dso_local global i32 0, align 4
@TM6000_REQ07_RED_VADC_AADC_RVOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tm6000_core*, i32)* @tm6010_set_volume_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tm6010_set_volume_adc(%struct.tm6000_core* %0, i32 %1) #0 {
  %3 = alloca %struct.tm6000_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tm6000_core* %0, %struct.tm6000_core** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, 16
  %8 = and i32 %7, 31
  store i32 %8, i32* %5, align 4
  %9 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %10 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TM6010, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %16 = load i32, i32* @TM6010_REQ08_RF2_LEFT_CHANNEL_VOL, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @tm6000_set_reg(%struct.tm6000_core* %15, i32 %16, i32 %17)
  %19 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %20 = load i32, i32* @TM6010_REQ08_RF3_RIGHT_CHANNEL_VOL, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @tm6000_set_reg(%struct.tm6000_core* %19, i32 %20, i32 %21)
  br label %32

23:                                               ; preds = %2
  %24 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %25 = load i32, i32* @TM6000_REQ07_REC_VADC_AADC_LVOL, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @tm6000_set_reg(%struct.tm6000_core* %24, i32 %25, i32 %26)
  %28 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %29 = load i32, i32* @TM6000_REQ07_RED_VADC_AADC_RVOL, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @tm6000_set_reg(%struct.tm6000_core* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %14
  ret void
}

declare dso_local i32 @tm6000_set_reg(%struct.tm6000_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
