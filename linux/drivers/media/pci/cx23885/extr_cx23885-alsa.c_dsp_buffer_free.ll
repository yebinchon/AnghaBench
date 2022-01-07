; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-alsa.c_dsp_buffer_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-alsa.c_dsp_buffer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_audio_dev = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.cx23885_riscmem }
%struct.cx23885_riscmem = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Freeing buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx23885_audio_dev*)* @dsp_buffer_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp_buffer_free(%struct.cx23885_audio_dev* %0) #0 {
  %2 = alloca %struct.cx23885_audio_dev*, align 8
  %3 = alloca %struct.cx23885_riscmem*, align 8
  store %struct.cx23885_audio_dev* %0, %struct.cx23885_audio_dev** %2, align 8
  %4 = load %struct.cx23885_audio_dev*, %struct.cx23885_audio_dev** %2, align 8
  %5 = getelementptr inbounds %struct.cx23885_audio_dev, %struct.cx23885_audio_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.cx23885_audio_dev*, %struct.cx23885_audio_dev** %2, align 8
  %13 = call i32 @cx23885_alsa_dma_unmap(%struct.cx23885_audio_dev* %12)
  %14 = load %struct.cx23885_audio_dev*, %struct.cx23885_audio_dev** %2, align 8
  %15 = getelementptr inbounds %struct.cx23885_audio_dev, %struct.cx23885_audio_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = call i32 @cx23885_alsa_dma_free(%struct.TYPE_3__* %16)
  %18 = load %struct.cx23885_audio_dev*, %struct.cx23885_audio_dev** %2, align 8
  %19 = getelementptr inbounds %struct.cx23885_audio_dev, %struct.cx23885_audio_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.cx23885_riscmem* %21, %struct.cx23885_riscmem** %3, align 8
  %22 = load %struct.cx23885_audio_dev*, %struct.cx23885_audio_dev** %2, align 8
  %23 = getelementptr inbounds %struct.cx23885_audio_dev, %struct.cx23885_audio_dev* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %3, align 8
  %26 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %3, align 8
  %29 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cx23885_riscmem*, %struct.cx23885_riscmem** %3, align 8
  %32 = getelementptr inbounds %struct.cx23885_riscmem, %struct.cx23885_riscmem* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pci_free_consistent(i32 %24, i32 %27, i32 %30, i32 %33)
  %35 = load %struct.cx23885_audio_dev*, %struct.cx23885_audio_dev** %2, align 8
  %36 = getelementptr inbounds %struct.cx23885_audio_dev, %struct.cx23885_audio_dev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = call i32 @kfree(%struct.TYPE_3__* %37)
  %39 = load %struct.cx23885_audio_dev*, %struct.cx23885_audio_dev** %2, align 8
  %40 = getelementptr inbounds %struct.cx23885_audio_dev, %struct.cx23885_audio_dev* %39, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %40, align 8
  %41 = load %struct.cx23885_audio_dev*, %struct.cx23885_audio_dev** %2, align 8
  %42 = getelementptr inbounds %struct.cx23885_audio_dev, %struct.cx23885_audio_dev* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @cx23885_alsa_dma_unmap(%struct.cx23885_audio_dev*) #1

declare dso_local i32 @cx23885_alsa_dma_free(%struct.TYPE_3__*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
