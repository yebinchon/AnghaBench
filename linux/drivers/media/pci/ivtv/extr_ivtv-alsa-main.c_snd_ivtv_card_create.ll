; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-alsa-main.c_snd_ivtv_card_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-alsa-main.c_snd_ivtv_card_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_device = type { i32 }
%struct.snd_card = type { i32, %struct.snd_ivtv_card* }
%struct.snd_ivtv_card = type { %struct.snd_card*, %struct.v4l2_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_ivtv_card_private_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_device*, %struct.snd_card*, %struct.snd_ivtv_card**)* @snd_ivtv_card_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ivtv_card_create(%struct.v4l2_device* %0, %struct.snd_card* %1, %struct.snd_ivtv_card** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_device*, align 8
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca %struct.snd_ivtv_card**, align 8
  store %struct.v4l2_device* %0, %struct.v4l2_device** %5, align 8
  store %struct.snd_card* %1, %struct.snd_card** %6, align 8
  store %struct.snd_ivtv_card** %2, %struct.snd_ivtv_card*** %7, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.snd_ivtv_card* @kzalloc(i32 16, i32 %8)
  %10 = load %struct.snd_ivtv_card**, %struct.snd_ivtv_card*** %7, align 8
  store %struct.snd_ivtv_card* %9, %struct.snd_ivtv_card** %10, align 8
  %11 = load %struct.snd_ivtv_card**, %struct.snd_ivtv_card*** %7, align 8
  %12 = load %struct.snd_ivtv_card*, %struct.snd_ivtv_card** %11, align 8
  %13 = icmp eq %struct.snd_ivtv_card* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %33

17:                                               ; preds = %3
  %18 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %19 = load %struct.snd_ivtv_card**, %struct.snd_ivtv_card*** %7, align 8
  %20 = load %struct.snd_ivtv_card*, %struct.snd_ivtv_card** %19, align 8
  %21 = getelementptr inbounds %struct.snd_ivtv_card, %struct.snd_ivtv_card* %20, i32 0, i32 1
  store %struct.v4l2_device* %18, %struct.v4l2_device** %21, align 8
  %22 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %23 = load %struct.snd_ivtv_card**, %struct.snd_ivtv_card*** %7, align 8
  %24 = load %struct.snd_ivtv_card*, %struct.snd_ivtv_card** %23, align 8
  %25 = getelementptr inbounds %struct.snd_ivtv_card, %struct.snd_ivtv_card* %24, i32 0, i32 0
  store %struct.snd_card* %22, %struct.snd_card** %25, align 8
  %26 = load %struct.snd_ivtv_card**, %struct.snd_ivtv_card*** %7, align 8
  %27 = load %struct.snd_ivtv_card*, %struct.snd_ivtv_card** %26, align 8
  %28 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %29 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %28, i32 0, i32 1
  store %struct.snd_ivtv_card* %27, %struct.snd_ivtv_card** %29, align 8
  %30 = load i32, i32* @snd_ivtv_card_private_free, align 4
  %31 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %32 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %17, %14
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.snd_ivtv_card* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
