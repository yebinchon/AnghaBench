; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-g723.c_snd_solo_pcm_copy_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-g723.c_snd_solo_pcm_copy_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.solo_snd_pcm = type { i32, i32, %struct.solo_dev* }
%struct.solo_dev = type { i32 }

@G723_FRAMES_PER_PAGE = common dso_local global i64 0, align 8
@G723_PERIOD_BLOCK = common dso_local global i32 0, align 4
@G723_PERIOD_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32, i64, i8*, i64)* @snd_solo_pcm_copy_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_solo_pcm_copy_kernel(%struct.snd_pcm_substream* %0, i32 %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_pcm_substream*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.solo_snd_pcm*, align 8
  %13 = alloca %struct.solo_dev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %18 = call %struct.solo_snd_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %17)
  store %struct.solo_snd_pcm* %18, %struct.solo_snd_pcm** %12, align 8
  %19 = load %struct.solo_snd_pcm*, %struct.solo_snd_pcm** %12, align 8
  %20 = getelementptr inbounds %struct.solo_snd_pcm, %struct.solo_snd_pcm* %19, i32 0, i32 2
  %21 = load %struct.solo_dev*, %struct.solo_dev** %20, align 8
  store %struct.solo_dev* %21, %struct.solo_dev** %13, align 8
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %72, %5
  %23 = load i32, i32* %15, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @G723_FRAMES_PER_PAGE, align 8
  %27 = udiv i64 %25, %26
  %28 = icmp ult i64 %24, %27
  br i1 %28, label %29, label %75

29:                                               ; preds = %22
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @G723_FRAMES_PER_PAGE, align 8
  %32 = udiv i64 %30, %31
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = add i64 %32, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %16, align 4
  %37 = load %struct.solo_dev*, %struct.solo_dev** %13, align 8
  %38 = load %struct.solo_snd_pcm*, %struct.solo_snd_pcm** %12, align 8
  %39 = getelementptr inbounds %struct.solo_snd_pcm, %struct.solo_snd_pcm* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.solo_dev*, %struct.solo_dev** %13, align 8
  %42 = call i64 @SOLO_G723_EXT_ADDR(%struct.solo_dev* %41)
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* @G723_PERIOD_BLOCK, align 4
  %45 = mul nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %42, %46
  %48 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %7, align 8
  %49 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @G723_PERIOD_BYTES, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %47, %53
  %55 = load i32, i32* @G723_PERIOD_BYTES, align 4
  %56 = call i32 @solo_p2m_dma_t(%struct.solo_dev* %37, i32 0, i32 %40, i64 %54, i32 %55, i32 0, i32 0)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %29
  %60 = load i32, i32* %14, align 4
  store i32 %60, i32* %6, align 4
  br label %76

61:                                               ; preds = %29
  %62 = load i8*, i8** %10, align 8
  %63 = load %struct.solo_snd_pcm*, %struct.solo_snd_pcm** %12, align 8
  %64 = getelementptr inbounds %struct.solo_snd_pcm, %struct.solo_snd_pcm* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @G723_PERIOD_BYTES, align 4
  %67 = call i32 @memcpy(i8* %62, i32 %65, i32 %66)
  %68 = load i32, i32* @G723_PERIOD_BYTES, align 4
  %69 = load i8*, i8** %10, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr i8, i8* %69, i64 %70
  store i8* %71, i8** %10, align 8
  br label %72

72:                                               ; preds = %61
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  br label %22

75:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %59
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local %struct.solo_snd_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @solo_p2m_dma_t(%struct.solo_dev*, i32, i32, i64, i32, i32, i32) #1

declare dso_local i64 @SOLO_G723_EXT_ADDR(%struct.solo_dev*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
