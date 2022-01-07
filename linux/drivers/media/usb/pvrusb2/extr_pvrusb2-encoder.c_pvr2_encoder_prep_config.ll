; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-encoder.c_pvr2_encoder_prep_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-encoder.c_pvr2_encoder_prep_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@CX2341X_ENC_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*)* @pvr2_encoder_prep_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_encoder_prep_config(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca %struct.pvr2_hdw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %6 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %13

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %12, %11
  %14 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %15 = load i32, i32* @CX2341X_ENC_MISC, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 (%struct.pvr2_hdw*, i32, i32, i32, i32, ...) @pvr2_encoder_vcmd(%struct.pvr2_hdw* %14, i32 %15, i32 4, i32 3, i32 %16, i32 0, i32 0)
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %21 = load i32, i32* @CX2341X_ENC_MISC, align 4
  %22 = call i32 (%struct.pvr2_hdw*, i32, i32, i32, i32, ...) @pvr2_encoder_vcmd(%struct.pvr2_hdw* %20, i32 %21, i32 4, i32 8, i32 0, i32 0, i32 0)
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %26 = load i32, i32* @CX2341X_ENC_MISC, align 4
  %27 = call i32 (%struct.pvr2_hdw*, i32, i32, i32, i32, ...) @pvr2_encoder_vcmd(%struct.pvr2_hdw* %25, i32 %26, i32 4, i32 0, i32 3, i32 0, i32 0)
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %31 = load i32, i32* @CX2341X_ENC_MISC, align 4
  %32 = call i32 (%struct.pvr2_hdw*, i32, i32, i32, i32, ...) @pvr2_encoder_vcmd(%struct.pvr2_hdw* %30, i32 %31, i32 4, i32 15, i32 0, i32 0, i32 0)
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %36 = load i32, i32* @CX2341X_ENC_MISC, align 4
  %37 = call i32 (%struct.pvr2_hdw*, i32, i32, i32, i32, ...) @pvr2_encoder_vcmd(%struct.pvr2_hdw* %35, i32 %36, i32 2, i32 4, i32 1)
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @pvr2_encoder_vcmd(%struct.pvr2_hdw*, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
