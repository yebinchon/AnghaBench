; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_enable_layer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_enable_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32 }

@OSD_OSDWIN0MD_OACT0 = common dso_local global i32 0, align 4
@OSD_OSDWIN0MD = common dso_local global i32 0, align 4
@OSD_VIDWINMD_ACT0 = common dso_local global i32 0, align 4
@OSD_VIDWINMD = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD_OASW = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD_OACT1 = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD = common dso_local global i32 0, align 4
@OSD_VIDWINMD_ACT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osd_state*, i32)* @_osd_enable_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_osd_enable_layer(%struct.osd_state* %0, i32 %1) #0 {
  %3 = alloca %struct.osd_state*, align 8
  %4 = alloca i32, align 4
  store %struct.osd_state* %0, %struct.osd_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %29 [
    i32 131, label %6
    i32 129, label %11
    i32 130, label %16
    i32 128, label %24
  ]

6:                                                ; preds = %2
  %7 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %8 = load i32, i32* @OSD_OSDWIN0MD_OACT0, align 4
  %9 = load i32, i32* @OSD_OSDWIN0MD, align 4
  %10 = call i32 @osd_set(%struct.osd_state* %7, i32 %8, i32 %9)
  br label %29

11:                                               ; preds = %2
  %12 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %13 = load i32, i32* @OSD_VIDWINMD_ACT0, align 4
  %14 = load i32, i32* @OSD_VIDWINMD, align 4
  %15 = call i32 @osd_set(%struct.osd_state* %12, i32 %13, i32 %14)
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %18 = load i32, i32* @OSD_OSDWIN1MD_OASW, align 4
  %19 = load i32, i32* @OSD_OSDWIN1MD_OACT1, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @OSD_OSDWIN1MD_OACT1, align 4
  %22 = load i32, i32* @OSD_OSDWIN1MD, align 4
  %23 = call i32 @osd_modify(%struct.osd_state* %17, i32 %20, i32 %21, i32 %22)
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %26 = load i32, i32* @OSD_VIDWINMD_ACT1, align 4
  %27 = load i32, i32* @OSD_VIDWINMD, align 4
  %28 = call i32 @osd_set(%struct.osd_state* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %2, %24, %16, %11, %6
  ret void
}

declare dso_local i32 @osd_set(%struct.osd_state*, i32, i32) #1

declare dso_local i32 @osd_modify(%struct.osd_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
