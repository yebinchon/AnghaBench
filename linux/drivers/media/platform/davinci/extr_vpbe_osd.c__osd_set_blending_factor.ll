; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_set_blending_factor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_set_blending_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32 }

@OSD_OSDWIN0MD_BLND0 = common dso_local global i32 0, align 4
@OSD_OSDWIN0MD_BLND0_SHIFT = common dso_local global i32 0, align 4
@OSD_OSDWIN0MD = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD_BLND1 = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD_BLND1_SHIFT = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osd_state*, i32, i32)* @_osd_set_blending_factor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_osd_set_blending_factor(%struct.osd_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.osd_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.osd_state* %0, %struct.osd_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %24 [
    i32 129, label %8
    i32 128, label %16
  ]

8:                                                ; preds = %3
  %9 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %10 = load i32, i32* @OSD_OSDWIN0MD_BLND0, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @OSD_OSDWIN0MD_BLND0_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = load i32, i32* @OSD_OSDWIN0MD, align 4
  %15 = call i32 @osd_modify(%struct.osd_state* %9, i32 %10, i32 %13, i32 %14)
  br label %24

16:                                               ; preds = %3
  %17 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  %18 = load i32, i32* @OSD_OSDWIN1MD_BLND1, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @OSD_OSDWIN1MD_BLND1_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* @OSD_OSDWIN1MD, align 4
  %23 = call i32 @osd_modify(%struct.osd_state* %17, i32 %18, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %3, %16, %8
  ret void
}

declare dso_local i32 @osd_modify(%struct.osd_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
