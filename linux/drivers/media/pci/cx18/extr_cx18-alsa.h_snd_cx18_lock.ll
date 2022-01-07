; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-alsa.h_snd_cx18_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-alsa.h_snd_cx18_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_cx18_card = type { i32 }
%struct.cx18 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_cx18_card*)* @snd_cx18_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_cx18_lock(%struct.snd_cx18_card* %0) #0 {
  %2 = alloca %struct.snd_cx18_card*, align 8
  %3 = alloca %struct.cx18*, align 8
  store %struct.snd_cx18_card* %0, %struct.snd_cx18_card** %2, align 8
  %4 = load %struct.snd_cx18_card*, %struct.snd_cx18_card** %2, align 8
  %5 = getelementptr inbounds %struct.snd_cx18_card, %struct.snd_cx18_card* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.cx18* @to_cx18(i32 %6)
  store %struct.cx18* %7, %struct.cx18** %3, align 8
  %8 = load %struct.cx18*, %struct.cx18** %3, align 8
  %9 = getelementptr inbounds %struct.cx18, %struct.cx18* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  ret void
}

declare dso_local %struct.cx18* @to_cx18(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
