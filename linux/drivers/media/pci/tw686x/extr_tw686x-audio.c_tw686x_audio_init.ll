; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-audio.c_tw686x_audio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-audio.c_tw686x_audio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw686x_dev = type { %struct.snd_card*, %struct.tw686x_audio_channel*, %struct.pci_dev* }
%struct.snd_card = type { i32, i32, i32 }
%struct.tw686x_audio_channel = type { i32, %struct.tw686x_dev*, i32 }
%struct.pci_dev = type { i32 }

@AUDIO_CONTROL1 = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_IDX1 = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_STR1 = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"tw686x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw686x_audio_init(%struct.tw686x_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tw686x_dev*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tw686x_audio_channel*, align 8
  store %struct.tw686x_dev* %0, %struct.tw686x_dev** %3, align 8
  %9 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %10 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %9, i32 0, i32 2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  store %struct.pci_dev* %11, %struct.pci_dev** %4, align 8
  %12 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %13 = load i32, i32* @AUDIO_CONTROL1, align 4
  %14 = call i32 @BIT(i32 0)
  %15 = call i32 @reg_write(%struct.tw686x_dev* %12, i32 %13, i32 %14)
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  %18 = load i32, i32* @SNDRV_DEFAULT_IDX1, align 4
  %19 = load i32, i32* @SNDRV_DEFAULT_STR1, align 4
  %20 = load i32, i32* @THIS_MODULE, align 4
  %21 = call i32 @snd_card_new(i32* %17, i32 %18, i32 %19, i32 %20, i32 0, %struct.snd_card** %5)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %127

26:                                               ; preds = %1
  %27 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %28 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %29 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %28, i32 0, i32 0
  store %struct.snd_card* %27, %struct.snd_card** %29, align 8
  %30 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %31 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @strscpy(i32 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4)
  %34 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %35 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strscpy(i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 4)
  %38 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %39 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = call i8* @pci_name(%struct.pci_dev* %41)
  %43 = call i32 @strscpy(i32 %40, i8* %42, i32 4)
  %44 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = call i32 @snd_card_set_dev(%struct.snd_card* %44, i32* %46)
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %76, %26
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %51 = call i32 @max_channels(%struct.tw686x_dev* %50)
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %48
  %54 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %55 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %54, i32 0, i32 1
  %56 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %56, i64 %58
  store %struct.tw686x_audio_channel* %59, %struct.tw686x_audio_channel** %8, align 8
  %60 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %8, align 8
  %61 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %60, i32 0, i32 2
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %64 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %8, align 8
  %65 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %64, i32 0, i32 1
  store %struct.tw686x_dev* %63, %struct.tw686x_dev** %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %8, align 8
  %68 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %70 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %8, align 8
  %71 = call i32 @tw686x_audio_dma_alloc(%struct.tw686x_dev* %69, %struct.tw686x_audio_channel* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %53
  br label %92

75:                                               ; preds = %53
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %48

79:                                               ; preds = %48
  %80 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %81 = call i32 @tw686x_snd_pcm_init(%struct.tw686x_dev* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %92

85:                                               ; preds = %79
  %86 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %87 = call i32 @snd_card_register(%struct.snd_card* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %127

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91, %84, %74
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %118, %92
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %96 = call i32 @max_channels(%struct.tw686x_dev* %95)
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %121

98:                                               ; preds = %93
  %99 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %100 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %99, i32 0, i32 1
  %101 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %101, i64 %103
  %105 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %104, i32 0, i32 1
  %106 = load %struct.tw686x_dev*, %struct.tw686x_dev** %105, align 8
  %107 = icmp ne %struct.tw686x_dev* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %98
  br label %118

109:                                              ; preds = %98
  %110 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %111 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %112 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %111, i32 0, i32 1
  %113 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %113, i64 %115
  %117 = call i32 @tw686x_audio_dma_free(%struct.tw686x_dev* %110, %struct.tw686x_audio_channel* %116)
  br label %118

118:                                              ; preds = %109, %108
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %93

121:                                              ; preds = %93
  %122 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %123 = call i32 @snd_card_free(%struct.snd_card* %122)
  %124 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %125 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %124, i32 0, i32 0
  store %struct.snd_card* null, %struct.snd_card** %125, align 8
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %121, %90, %24
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @reg_write(%struct.tw686x_dev*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @snd_card_new(i32*, i32, i32, i32, i32, %struct.snd_card**) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i8* @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @snd_card_set_dev(%struct.snd_card*, i32*) #1

declare dso_local i32 @max_channels(%struct.tw686x_dev*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tw686x_audio_dma_alloc(%struct.tw686x_dev*, %struct.tw686x_audio_channel*) #1

declare dso_local i32 @tw686x_snd_pcm_init(%struct.tw686x_dev*) #1

declare dso_local i32 @snd_card_register(%struct.snd_card*) #1

declare dso_local i32 @tw686x_audio_dma_free(%struct.tw686x_dev*, %struct.tw686x_audio_channel*) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
