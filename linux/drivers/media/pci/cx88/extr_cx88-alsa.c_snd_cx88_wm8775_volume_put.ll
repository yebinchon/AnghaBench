; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-alsa.c_snd_cx88_wm8775_volume_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-alsa.c_snd_cx88_wm8775_volume_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.cx88_audio_dev = type { %struct.cx88_core* }
%struct.cx88_core = type { i32 }

@V4L2_CID_AUDIO_VOLUME = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_BALANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cx88_wm8775_volume_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cx88_wm8775_volume_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.cx88_audio_dev*, align 8
  %6 = alloca %struct.cx88_core*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %11 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %12 = call %struct.cx88_audio_dev* @snd_kcontrol_chip(%struct.snd_kcontrol* %11)
  store %struct.cx88_audio_dev* %12, %struct.cx88_audio_dev** %5, align 8
  %13 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %5, align 8
  %14 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %13, i32 0, i32 0
  %15 = load %struct.cx88_core*, %struct.cx88_core** %14, align 8
  store %struct.cx88_core* %15, %struct.cx88_core** %6, align 8
  %16 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %2
  %34 = load i32, i32* %7, align 4
  %35 = shl i32 %34, 10
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 32768, %39
  %41 = load i32, i32* %7, align 4
  %42 = sdiv i32 %40, %41
  br label %44

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %38
  %45 = phi i32 [ %42, %38 ], [ 32768, %43 ]
  store i32 %45, i32* %10, align 4
  br label %60

46:                                               ; preds = %2
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 %47, 10
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = mul nsw i32 32768, %52
  %54 = load i32, i32* %8, align 4
  %55 = sdiv i32 %53, %54
  %56 = sub nsw i32 65535, %55
  br label %58

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57, %51
  %59 = phi i32 [ %56, %51 ], [ 32768, %57 ]
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %58, %44
  %61 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %62 = load i32, i32* @V4L2_CID_AUDIO_VOLUME, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @wm8775_s_ctrl(%struct.cx88_core* %61, i32 %62, i32 %63)
  %65 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %66 = load i32, i32* @V4L2_CID_AUDIO_BALANCE, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @wm8775_s_ctrl(%struct.cx88_core* %65, i32 %66, i32 %67)
  ret void
}

declare dso_local %struct.cx88_audio_dev* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @wm8775_s_ctrl(%struct.cx88_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
