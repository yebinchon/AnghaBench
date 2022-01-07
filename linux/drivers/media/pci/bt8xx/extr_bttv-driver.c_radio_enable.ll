; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_radio_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_radio_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32, i32 }

@tuner = common dso_local global i32 0, align 4
@s_radio = common dso_local global i32 0, align 4
@TVAUDIO_INPUT_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @radio_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radio_enable(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %3 = load %struct.bttv*, %struct.bttv** %2, align 8
  %4 = getelementptr inbounds %struct.bttv, %struct.bttv* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %1
  %8 = load %struct.bttv*, %struct.bttv** %2, align 8
  %9 = getelementptr inbounds %struct.bttv, %struct.bttv* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.bttv*, %struct.bttv** %2, align 8
  %11 = load i32, i32* @tuner, align 4
  %12 = load i32, i32* @s_radio, align 4
  %13 = call i32 @bttv_call_all(%struct.bttv* %10, i32 %11, i32 %12)
  %14 = load i32, i32* @TVAUDIO_INPUT_RADIO, align 4
  %15 = load %struct.bttv*, %struct.bttv** %2, align 8
  %16 = getelementptr inbounds %struct.bttv, %struct.bttv* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.bttv*, %struct.bttv** %2, align 8
  %18 = load %struct.bttv*, %struct.bttv** %2, align 8
  %19 = getelementptr inbounds %struct.bttv, %struct.bttv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @audio_input(%struct.bttv* %17, i32 %20)
  br label %22

22:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @bttv_call_all(%struct.bttv*, i32, i32) #1

declare dso_local i32 @audio_input(%struct.bttv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
