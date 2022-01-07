; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-alsa.c_snd_card_saa7134_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-alsa.c_snd_card_saa7134_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i32* }
%struct.snd_pcm_hw_params = type { i32 }
%struct.TYPE_7__ = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_card_saa7134_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_card_saa7134_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.saa7134_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = call %struct.TYPE_7__* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %6, align 8
  %13 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %14 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %16 = call i32 @params_periods(%struct.snd_pcm_hw_params* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ult i32 %17, 256
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = icmp ugt i32 %20, 65536
  br i1 %21, label %22, label %25

22:                                               ; preds = %19, %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %187

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  %27 = icmp ult i32 %26, 4
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %187

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = mul i32 %32, %33
  %35 = icmp ugt i32 %34, 1048576
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %187

39:                                               ; preds = %31
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.saa7134_dev*, %struct.saa7134_dev** %41, align 8
  store %struct.saa7134_dev* %42, %struct.saa7134_dev** %7, align 8
  %43 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %44 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %51 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %187

57:                                               ; preds = %49, %39
  %58 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %59 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %80

64:                                               ; preds = %57
  %65 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %66 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %69 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  %71 = call i32 @saa7134_pgtable_free(i32 %67, i32* %70)
  %72 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %73 = call i32 @saa7134_alsa_dma_unmap(%struct.saa7134_dev* %72)
  %74 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %75 = call i32 @dsp_buffer_free(%struct.saa7134_dev* %74)
  %76 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %64, %57
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %83 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %87 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = mul i32 %89, %90
  %92 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %93 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 8
  %95 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %96 = call i32 @dsp_buffer_init(%struct.saa7134_dev* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 0, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %80
  %100 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %101 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i32 0, i32* %102, align 8
  %103 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %104 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store i32 0, i32* %105, align 4
  %106 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %107 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  store i32 0, i32* %108, align 8
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %3, align 4
  br label %187

110:                                              ; preds = %80
  %111 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %112 = call i32 @saa7134_alsa_dma_map(%struct.saa7134_dev* %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %117 = call i32 @dsp_buffer_free(%struct.saa7134_dev* %116)
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %3, align 4
  br label %187

119:                                              ; preds = %110
  %120 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %121 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %124 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 4
  %126 = call i32 @saa7134_pgtable_alloc(i32 %122, i32* %125)
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %119
  %130 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %131 = call i32 @saa7134_alsa_dma_unmap(%struct.saa7134_dev* %130)
  %132 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %133 = call i32 @dsp_buffer_free(%struct.saa7134_dev* %132)
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %3, align 4
  br label %187

135:                                              ; preds = %119
  %136 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %137 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %140 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 4
  %142 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %143 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %147 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @saa7134_pgtable_build(i32 %138, i32* %141, i32 %145, i32 %149, i32 0)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %135
  %154 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %155 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %158 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 4
  %160 = call i32 @saa7134_pgtable_free(i32 %156, i32* %159)
  %161 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %162 = call i32 @saa7134_alsa_dma_unmap(%struct.saa7134_dev* %161)
  %163 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %164 = call i32 @dsp_buffer_free(%struct.saa7134_dev* %163)
  %165 = load i32, i32* %10, align 4
  store i32 %165, i32* %3, align 4
  br label %187

166:                                              ; preds = %135
  %167 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %168 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %172 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %171, i32 0, i32 0
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  store i32* %170, i32** %174, align 8
  %175 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %176 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %180 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %179, i32 0, i32 0
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  store i32 %178, i32* %182, align 8
  %183 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %184 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %183, i32 0, i32 0
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  store i64 0, i64* %186, align 8
  store i32 0, i32* %3, align 4
  br label %187

187:                                              ; preds = %166, %153, %129, %115, %99, %56, %36, %28, %22
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local %struct.TYPE_7__* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_periods(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @saa7134_pgtable_free(i32, i32*) #1

declare dso_local i32 @saa7134_alsa_dma_unmap(%struct.saa7134_dev*) #1

declare dso_local i32 @dsp_buffer_free(%struct.saa7134_dev*) #1

declare dso_local i32 @dsp_buffer_init(%struct.saa7134_dev*) #1

declare dso_local i32 @saa7134_alsa_dma_map(%struct.saa7134_dev*) #1

declare dso_local i32 @saa7134_pgtable_alloc(i32, i32*) #1

declare dso_local i32 @saa7134_pgtable_build(i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
