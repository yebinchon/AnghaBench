; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-audio.c_em28xx_cvol_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-audio.c_em28xx_cvol_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32 }
%struct.em28xx = type { i32 }
%struct.snd_kcontrol = type { i32 }
%struct.snd_kcontrol_new = type { i32, i8*, %struct.TYPE_2__, i32, i32, i32, i8* }
%struct.TYPE_2__ = type { i32 }

@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"%s Switch\00", align 1
@em28xx_vol_get_mute = common dso_local global i32 0, align 4
@em28xx_vol_put_mute = common dso_local global i32 0, align 4
@snd_ctl_boolean_mono_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Added control %s for ac97 volume control 0x%04x\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s Volume\00", align 1
@em28xx_vol_get = common dso_local global i32 0, align 4
@em28xx_vol_put = common dso_local global i32 0, align 4
@em28xx_vol_info = common dso_local global i32 0, align 4
@em28xx_db_scale = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.em28xx*, i8*, i32)* @em28xx_cvol_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_cvol_new(%struct.snd_card* %0, %struct.em28xx* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_card*, align 8
  %7 = alloca %struct.em28xx*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [44 x i8], align 16
  %12 = alloca %struct.snd_kcontrol*, align 8
  %13 = alloca %struct.snd_kcontrol_new, align 8
  store %struct.snd_card* %0, %struct.snd_card** %6, align 8
  store %struct.em28xx* %1, %struct.em28xx** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = call i32 @memset(%struct.snd_kcontrol_new* %13, i32 0, i32 40)
  %15 = load i8*, i8** @SNDRV_CTL_ELEM_IFACE_MIXER, align 8
  %16 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %13, i32 0, i32 6
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* %9, align 4
  %18 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %13, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds [44 x i8], [44 x i8]* %11, i64 0, i64 0
  %20 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %13, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds [44 x i8], [44 x i8]* %11, i64 0, i64 0
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @sprintf(i8* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* @em28xx_vol_get_mute, align 4
  %25 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %13, i32 0, i32 5
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @em28xx_vol_put_mute, align 4
  %27 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %13, i32 0, i32 4
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* @snd_ctl_boolean_mono_info, align 4
  %29 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %13, i32 0, i32 3
  store i32 %28, i32* %29, align 4
  %30 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %31 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %13, %struct.em28xx* %30)
  store %struct.snd_kcontrol* %31, %struct.snd_kcontrol** %12, align 8
  %32 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %33 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %34 = call i32 @snd_ctl_add(%struct.snd_card* %32, %struct.snd_kcontrol* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %75

39:                                               ; preds = %4
  %40 = getelementptr inbounds [44 x i8], [44 x i8]* %11, i64 0, i64 0
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %41)
  %43 = call i32 @memset(%struct.snd_kcontrol_new* %13, i32 0, i32 40)
  %44 = load i8*, i8** @SNDRV_CTL_ELEM_IFACE_MIXER, align 8
  %45 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %13, i32 0, i32 6
  store i8* %44, i8** %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %13, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds [44 x i8], [44 x i8]* %11, i64 0, i64 0
  %49 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %13, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = getelementptr inbounds [44 x i8], [44 x i8]* %11, i64 0, i64 0
  %51 = load i8*, i8** %8, align 8
  %52 = call i32 @sprintf(i8* %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  %53 = load i32, i32* @em28xx_vol_get, align 4
  %54 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %13, i32 0, i32 5
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @em28xx_vol_put, align 4
  %56 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %13, i32 0, i32 4
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* @em28xx_vol_info, align 4
  %58 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %13, i32 0, i32 3
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @em28xx_db_scale, align 4
  %60 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %13, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  %63 = call %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new* %13, %struct.em28xx* %62)
  store %struct.snd_kcontrol* %63, %struct.snd_kcontrol** %12, align 8
  %64 = load %struct.snd_card*, %struct.snd_card** %6, align 8
  %65 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %12, align 8
  %66 = call i32 @snd_ctl_add(%struct.snd_card* %64, %struct.snd_kcontrol* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %39
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %5, align 4
  br label %75

71:                                               ; preds = %39
  %72 = getelementptr inbounds [44 x i8], [44 x i8]* %11, i64 0, i64 0
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @dprintk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %72, i32 %73)
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %69, %37
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @memset(%struct.snd_kcontrol_new*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local %struct.snd_kcontrol* @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.em28xx*) #1

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, %struct.snd_kcontrol*) #1

declare dso_local i32 @dprintk(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
