; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-alsa.c_dsp_buffer_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-alsa.c_dsp_buffer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_audio_dev = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { %struct.cx88_riscmem }
%struct.cx88_riscmem = type { i32, i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Freeing buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx88_audio_dev*)* @dsp_buffer_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp_buffer_free(%struct.cx88_audio_dev* %0) #0 {
  %2 = alloca %struct.cx88_audio_dev*, align 8
  %3 = alloca %struct.cx88_riscmem*, align 8
  store %struct.cx88_audio_dev* %0, %struct.cx88_audio_dev** %2, align 8
  %4 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %5 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %4, i32 0, i32 0
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.cx88_riscmem* %7, %struct.cx88_riscmem** %3, align 8
  %8 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %9 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %17 = call i32 @cx88_alsa_dma_unmap(%struct.cx88_audio_dev* %16)
  %18 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %19 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = call i32 @cx88_alsa_dma_free(%struct.TYPE_3__* %20)
  %22 = load %struct.cx88_riscmem*, %struct.cx88_riscmem** %3, align 8
  %23 = getelementptr inbounds %struct.cx88_riscmem, %struct.cx88_riscmem* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %1
  %27 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %28 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.cx88_riscmem*, %struct.cx88_riscmem** %3, align 8
  %31 = getelementptr inbounds %struct.cx88_riscmem, %struct.cx88_riscmem* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.cx88_riscmem*, %struct.cx88_riscmem** %3, align 8
  %34 = getelementptr inbounds %struct.cx88_riscmem, %struct.cx88_riscmem* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.cx88_riscmem*, %struct.cx88_riscmem** %3, align 8
  %37 = getelementptr inbounds %struct.cx88_riscmem, %struct.cx88_riscmem* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pci_free_consistent(i32 %29, i32 %32, i64 %35, i32 %38)
  br label %40

40:                                               ; preds = %26, %1
  %41 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %42 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = call i32 @kfree(%struct.TYPE_3__* %43)
  %45 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %46 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %45, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %46, align 8
  ret i32 0
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @cx88_alsa_dma_unmap(%struct.cx88_audio_dev*) #1

declare dso_local i32 @cx88_alsa_dma_free(%struct.TYPE_3__*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
