; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-alsa.c_snd_cx88_switch_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-alsa.c_snd_cx88_switch_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.cx88_audio_dev = type { i32, %struct.cx88_core* }
%struct.cx88_core = type { i64 }

@AUD_VOL_CTL = common dso_local global i32 0, align 4
@SHADOW_AUD_VOL_CTL = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cx88_switch_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cx88_switch_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.cx88_audio_dev*, align 8
  %6 = alloca %struct.cx88_core*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %10 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %11 = call %struct.cx88_audio_dev* @snd_kcontrol_chip(%struct.snd_kcontrol* %10)
  store %struct.cx88_audio_dev* %11, %struct.cx88_audio_dev** %5, align 8
  %12 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %5, align 8
  %13 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %12, i32 0, i32 1
  %14 = load %struct.cx88_core*, %struct.cx88_core** %13, align 8
  store %struct.cx88_core* %14, %struct.cx88_core** %6, align 8
  %15 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %5, align 8
  %19 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load i32, i32* @AUD_VOL_CTL, align 4
  %22 = call i32 @cx_read(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = icmp ne i32 %29, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %2
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %9, align 4
  %40 = xor i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @SHADOW_AUD_VOL_CTL, align 4
  %42 = load i32, i32* @AUD_VOL_CTL, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @cx_swrite(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %46 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %37
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 64, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %49
  %53 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %54 = load i32, i32* @V4L2_CID_AUDIO_MUTE, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 0, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @wm8775_s_ctrl(%struct.cx88_core* %53, i32 %54, i32 %59)
  br label %61

61:                                               ; preds = %52, %49, %37
  store i32 1, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %2
  %63 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %5, align 8
  %64 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock_irq(i32* %64)
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local %struct.cx88_audio_dev* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @cx_swrite(i32, i32, i32) #1

declare dso_local i32 @wm8775_s_ctrl(%struct.cx88_core*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
