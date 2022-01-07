; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_disable_color_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_disable_color_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32 }

@OSD_OSDWIN0MD_TE0 = common dso_local global i32 0, align 4
@OSD_OSDWIN0MD = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD_TE1 = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osd_state*, i32)* @_osd_disable_color_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_osd_disable_color_key(%struct.osd_state* %0, i32 %1) #0 {
  %3 = alloca %struct.osd_state*, align 8
  %4 = alloca i32, align 4
  store %struct.osd_state* %0, %struct.osd_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %16 [
    i32 129, label %6
    i32 128, label %11
  ]

6:                                                ; preds = %2
  %7 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %8 = load i32, i32* @OSD_OSDWIN0MD_TE0, align 4
  %9 = load i32, i32* @OSD_OSDWIN0MD, align 4
  %10 = call i32 @osd_clear(%struct.osd_state* %7, i32 %8, i32 %9)
  br label %16

11:                                               ; preds = %2
  %12 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %13 = load i32, i32* @OSD_OSDWIN1MD_TE1, align 4
  %14 = load i32, i32* @OSD_OSDWIN1MD, align 4
  %15 = call i32 @osd_clear(%struct.osd_state* %12, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %2, %11, %6
  ret void
}

declare dso_local i32 @osd_clear(%struct.osd_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
