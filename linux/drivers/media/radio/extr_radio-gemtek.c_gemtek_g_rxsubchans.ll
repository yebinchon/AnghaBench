; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-gemtek.c_gemtek_g_rxsubchans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-gemtek.c_gemtek_g_rxsubchans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radio_isa_card = type { i32 }

@GEMTEK_NS = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radio_isa_card*)* @gemtek_g_rxsubchans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gemtek_g_rxsubchans(%struct.radio_isa_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radio_isa_card*, align 8
  store %struct.radio_isa_card* %0, %struct.radio_isa_card** %3, align 8
  %4 = load %struct.radio_isa_card*, %struct.radio_isa_card** %3, align 8
  %5 = getelementptr inbounds %struct.radio_isa_card, %struct.radio_isa_card* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @inb_p(i32 %6)
  %8 = load i32, i32* @GEMTEK_NS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  store i32 %12, i32* %2, align 4
  br label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

declare dso_local i32 @inb_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
