; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-g723.c_snd_solo_pcm_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-g723.c_snd_solo_pcm_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.solo_snd_pcm = type { i32, i32, %struct.solo_dev* }
%struct.solo_dev = type { i32 }

@SOLO_IRQ_G723 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_solo_pcm_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_solo_pcm_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.solo_snd_pcm*, align 8
  %6 = alloca %struct.solo_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.solo_snd_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.solo_snd_pcm* %9, %struct.solo_snd_pcm** %5, align 8
  %10 = load %struct.solo_snd_pcm*, %struct.solo_snd_pcm** %5, align 8
  %11 = getelementptr inbounds %struct.solo_snd_pcm, %struct.solo_snd_pcm* %10, i32 0, i32 2
  %12 = load %struct.solo_dev*, %struct.solo_dev** %11, align 8
  store %struct.solo_dev* %12, %struct.solo_dev** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.solo_snd_pcm*, %struct.solo_snd_pcm** %5, align 8
  %14 = getelementptr inbounds %struct.solo_snd_pcm, %struct.solo_snd_pcm* %13, i32 0, i32 1
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %53 [
    i32 129, label %17
    i32 128, label %35
  ]

17:                                               ; preds = %2
  %18 = load %struct.solo_snd_pcm*, %struct.solo_snd_pcm** %5, align 8
  %19 = getelementptr inbounds %struct.solo_snd_pcm, %struct.solo_snd_pcm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %24 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %23, i32 0, i32 0
  %25 = call i32 @atomic_inc_return(i32* %24)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %29 = load i32, i32* @SOLO_IRQ_G723, align 4
  %30 = call i32 @solo_irq_on(%struct.solo_dev* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.solo_snd_pcm*, %struct.solo_snd_pcm** %5, align 8
  %33 = getelementptr inbounds %struct.solo_snd_pcm, %struct.solo_snd_pcm* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %17
  br label %56

35:                                               ; preds = %2
  %36 = load %struct.solo_snd_pcm*, %struct.solo_snd_pcm** %5, align 8
  %37 = getelementptr inbounds %struct.solo_snd_pcm, %struct.solo_snd_pcm* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %42 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %41, i32 0, i32 0
  %43 = call i32 @atomic_dec_return(i32* %42)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %47 = load i32, i32* @SOLO_IRQ_G723, align 4
  %48 = call i32 @solo_irq_off(%struct.solo_dev* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.solo_snd_pcm*, %struct.solo_snd_pcm** %5, align 8
  %51 = getelementptr inbounds %struct.solo_snd_pcm, %struct.solo_snd_pcm* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %35
  br label %56

53:                                               ; preds = %2
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %52, %34
  %57 = load %struct.solo_snd_pcm*, %struct.solo_snd_pcm** %5, align 8
  %58 = getelementptr inbounds %struct.solo_snd_pcm, %struct.solo_snd_pcm* %57, i32 0, i32 1
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local %struct.solo_snd_pcm* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @solo_irq_on(%struct.solo_dev*, i32) #1

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i32 @solo_irq_off(%struct.solo_dev*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
