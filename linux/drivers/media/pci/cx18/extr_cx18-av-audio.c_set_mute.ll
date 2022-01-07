; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-audio.c_set_mute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-audio.c_set_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { %struct.cx18_av_state }
%struct.cx18_av_state = type { i64 }

@CX18_AV_AUDIO_SERIAL2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*, i32)* @set_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_mute(%struct.cx18* %0, i32 %1) #0 {
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx18_av_state*, align 8
  %6 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cx18*, %struct.cx18** %3, align 8
  %8 = getelementptr inbounds %struct.cx18, %struct.cx18* %7, i32 0, i32 0
  store %struct.cx18_av_state* %8, %struct.cx18_av_state** %5, align 8
  %9 = load %struct.cx18_av_state*, %struct.cx18_av_state** %5, align 8
  %10 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CX18_AV_AUDIO_SERIAL2, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %2
  %15 = load %struct.cx18*, %struct.cx18** %3, align 8
  %16 = call i32 @cx18_av_read(%struct.cx18* %15, i32 2051)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, -17
  store i32 %21, i32* %6, align 4
  %22 = load %struct.cx18*, %struct.cx18** %3, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @cx18_av_write_expect(%struct.cx18* %22, i32 2051, i32 %23, i32 %24, i32 31)
  %26 = load %struct.cx18*, %struct.cx18** %3, align 8
  %27 = call i32 @cx18_av_write(%struct.cx18* %26, i32 2259, i32 31)
  br label %35

28:                                               ; preds = %14
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, 16
  store i32 %30, i32* %6, align 4
  %31 = load %struct.cx18*, %struct.cx18** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @cx18_av_write_expect(%struct.cx18* %31, i32 2051, i32 %32, i32 %33, i32 31)
  br label %35

35:                                               ; preds = %28, %19
  br label %43

36:                                               ; preds = %2
  %37 = load %struct.cx18*, %struct.cx18** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 2, i32 0
  %42 = call i32 @cx18_av_and_or(%struct.cx18* %37, i32 2259, i32 -3, i32 %41)
  br label %43

43:                                               ; preds = %36, %35
  ret void
}

declare dso_local i32 @cx18_av_read(%struct.cx18*, i32) #1

declare dso_local i32 @cx18_av_write_expect(%struct.cx18*, i32, i32, i32, i32) #1

declare dso_local i32 @cx18_av_write(%struct.cx18*, i32, i32) #1

declare dso_local i32 @cx18_av_and_or(%struct.cx18*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
