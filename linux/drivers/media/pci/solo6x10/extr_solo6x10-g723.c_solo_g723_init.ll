; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-g723.c_solo_g723_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-g723.c_solo_g723_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_device_ops = type { i32 }
%struct.snd_kcontrol_new = type { i32 }
%struct.solo_dev = type { %struct.TYPE_4__*, i32, %struct.snd_card*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.snd_card = type { i8*, i8*, i8*, i32 }
%struct.TYPE_3__ = type { i32 }

@solo_g723_init.ops = internal global %struct.snd_device_ops zeroinitializer, align 4
@.str = private unnamed_addr constant [12 x i8] c"Softlogic%d\00", align 1
@SNDRV_DEFAULT_IDX1 = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@SOLO6X10_NAME = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"SOLO-6x10 Audio\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s on %s IRQ %d\00", align 1
@SNDRV_DEV_LOWLEVEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"SOLO-6x10\00", align 1
@snd_solo_capture_volume = common dso_local global %struct.snd_kcontrol_new zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Alsa sound card as %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @solo_g723_init(%struct.solo_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.solo_dev*, align 8
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.snd_kcontrol_new, align 4
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %3, align 8
  %8 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %9 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %8, i32 0, i32 4
  %10 = call i32 @atomic_set(i32* %9, i32 0)
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %12 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %13 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, i8*, ...) @sprintf(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %19 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* @SNDRV_DEFAULT_IDX1, align 4
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %24 = load i32, i32* @THIS_MODULE, align 4
  %25 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %26 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %25, i32 0, i32 2
  %27 = call i32 @snd_card_new(i32* %21, i32 %22, i8* %23, i32 %24, i32 0, %struct.snd_card** %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %113

32:                                               ; preds = %1
  %33 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %34 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %33, i32 0, i32 2
  %35 = load %struct.snd_card*, %struct.snd_card** %34, align 8
  store %struct.snd_card* %35, %struct.snd_card** %4, align 8
  %36 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %37 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** @SOLO6X10_NAME, align 8
  %40 = call i32 @strscpy(i8* %38, i8* %39, i32 8)
  %41 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %42 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @strscpy(i8* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %45 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %46 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %51 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %54 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = call i8* @pci_name(%struct.TYPE_4__* %55)
  %57 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %58 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %52, i8* %56, i32 %61)
  %63 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %64 = load i32, i32* @SNDRV_DEV_LOWLEVEL, align 4
  %65 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %66 = call i32 @snd_device_new(%struct.snd_card* %63, i32 %64, %struct.solo_dev* %65, %struct.snd_device_ops* @solo_g723_init.ops)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %32
  br label %109

70:                                               ; preds = %32
  %71 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %72 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @strscpy(i8* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %75 = bitcast %struct.snd_kcontrol_new* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 bitcast (%struct.snd_kcontrol_new* @snd_solo_capture_volume to i8*), i64 4, i1 false)
  %76 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %77 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  %80 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %81 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %82 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %5, %struct.solo_dev* %81)
  %83 = call i32 @snd_ctl_add(%struct.snd_card* %80, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %70
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %2, align 4
  br label %113

88:                                               ; preds = %70
  %89 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %90 = call i32 @solo_snd_pcm_init(%struct.solo_dev* %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %109

94:                                               ; preds = %88
  %95 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %96 = call i32 @snd_card_register(%struct.snd_card* %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %109

100:                                              ; preds = %94
  %101 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %102 = call i32 @solo_g723_config(%struct.solo_dev* %101)
  %103 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %104 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %108 = call i32 @dev_info(i32* %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %107)
  store i32 0, i32* %2, align 4
  br label %113

109:                                              ; preds = %99, %93, %69
  %110 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %111 = call i32 @snd_card_free(%struct.snd_card* %110)
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %109, %100, %86, %30
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @snd_card_new(i32*, i32, i8*, i32, i32, %struct.snd_card**) #1

declare dso_local i32 @strscpy(i8*, i8*, i32) #1

declare dso_local i8* @pci_name(%struct.TYPE_4__*) #1

declare dso_local i32 @snd_device_new(%struct.snd_card*, i32, %struct.solo_dev*, %struct.snd_device_ops*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_ctl_add(%struct.snd_card*, i32) #1

declare dso_local i32 @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.solo_dev*) #1

declare dso_local i32 @solo_snd_pcm_init(%struct.solo_dev*) #1

declare dso_local i32 @snd_card_register(%struct.snd_card*) #1

declare dso_local i32 @solo_g723_config(%struct.solo_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
