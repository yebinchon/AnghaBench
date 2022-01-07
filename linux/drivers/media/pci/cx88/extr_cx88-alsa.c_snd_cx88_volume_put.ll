; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-alsa.c_snd_cx88_volume_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-alsa.c_snd_cx88_volume_put.c"
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
@AUD_BAL_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cx88_volume_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cx88_volume_put(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.cx88_audio_dev*, align 8
  %6 = alloca %struct.cx88_core*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %14 = call %struct.cx88_audio_dev* @snd_kcontrol_chip(%struct.snd_kcontrol* %13)
  store %struct.cx88_audio_dev* %14, %struct.cx88_audio_dev** %5, align 8
  %15 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %5, align 8
  %16 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %15, i32 0, i32 1
  %17 = load %struct.cx88_core*, %struct.cx88_core** %16, align 8
  store %struct.cx88_core* %17, %struct.cx88_core** %6, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.cx88_core*, %struct.cx88_core** %6, align 8
  %19 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %24 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %25 = call i32 @snd_cx88_wm8775_volume_put(%struct.snd_kcontrol* %23, %struct.snd_ctl_elem_value* %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %28 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 63
  store i32 %34, i32* %7, align 4
  %35 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %36 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 63
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %26
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 63, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sub nsw i32 0, %51
  %53 = or i32 %52, 64
  store i32 %53, i32* %10, align 4
  br label %57

54:                                               ; preds = %26
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 63, %55
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %54, %48
  %58 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %5, align 8
  %59 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %58, i32 0, i32 0
  %60 = call i32 @spin_lock_irq(i32* %59)
  %61 = load i32, i32* @AUD_VOL_CTL, align 4
  %62 = call i32 @cx_read(i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %12, align 4
  %65 = and i32 %64, 63
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %57
  %68 = load i32, i32* @SHADOW_AUD_VOL_CTL, align 4
  %69 = load i32, i32* @AUD_VOL_CTL, align 4
  %70 = load i32, i32* %12, align 4
  %71 = and i32 %70, -64
  %72 = load i32, i32* %9, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @cx_swrite(i32 %68, i32 %69, i32 %73)
  store i32 1, i32* %11, align 4
  br label %75

75:                                               ; preds = %67, %57
  %76 = load i32, i32* @AUD_BAL_CTL, align 4
  %77 = call i32 @cx_read(i32 %76)
  %78 = and i32 %77, 127
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load i32, i32* @AUD_BAL_CTL, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @cx_write(i32 %82, i32 %83)
  store i32 1, i32* %11, align 4
  br label %85

85:                                               ; preds = %81, %75
  %86 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %5, align 8
  %87 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %86, i32 0, i32 0
  %88 = call i32 @spin_unlock_irq(i32* %87)
  %89 = load i32, i32* %11, align 4
  ret i32 %89
}

declare dso_local %struct.cx88_audio_dev* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local i32 @snd_cx88_wm8775_volume_put(%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @cx_swrite(i32, i32, i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
