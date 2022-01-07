; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_set_zoom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_set_zoom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32 }

@OSD_OSDWIN0MD_OHZ0_SHIFT = common dso_local global i32 0, align 4
@OSD_OSDWIN0MD_OVZ0_SHIFT = common dso_local global i32 0, align 4
@OSD_OSDWIN0MD_OHZ0 = common dso_local global i32 0, align 4
@OSD_OSDWIN0MD_OVZ0 = common dso_local global i32 0, align 4
@OSD_OSDWIN0MD = common dso_local global i32 0, align 4
@OSD_VIDWINMD_VHZ0_SHIFT = common dso_local global i32 0, align 4
@OSD_VIDWINMD_VVZ0_SHIFT = common dso_local global i32 0, align 4
@OSD_VIDWINMD_VHZ0 = common dso_local global i32 0, align 4
@OSD_VIDWINMD_VVZ0 = common dso_local global i32 0, align 4
@OSD_VIDWINMD = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD_OHZ1_SHIFT = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD_OVZ1_SHIFT = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD_OHZ1 = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD_OVZ1 = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD = common dso_local global i32 0, align 4
@OSD_VIDWINMD_VHZ1_SHIFT = common dso_local global i32 0, align 4
@OSD_VIDWINMD_VVZ1_SHIFT = common dso_local global i32 0, align 4
@OSD_VIDWINMD_VHZ1 = common dso_local global i32 0, align 4
@OSD_VIDWINMD_VVZ1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osd_state*, i32, i32, i32)* @_osd_set_zoom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_osd_set_zoom(%struct.osd_state* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.osd_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.osd_state* %0, %struct.osd_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %83 [
    i32 131, label %11
    i32 129, label %29
    i32 130, label %47
    i32 128, label %65
  ]

11:                                               ; preds = %4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @OSD_OSDWIN0MD_OHZ0_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = load i32, i32* %9, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @OSD_OSDWIN0MD_OVZ0_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = load i32, i32* %9, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %9, align 4
  %22 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %23 = load i32, i32* @OSD_OSDWIN0MD_OHZ0, align 4
  %24 = load i32, i32* @OSD_OSDWIN0MD_OVZ0, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @OSD_OSDWIN0MD, align 4
  %28 = call i32 @osd_modify(%struct.osd_state* %22, i32 %25, i32 %26, i32 %27)
  br label %83

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @OSD_VIDWINMD_VHZ0_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @OSD_VIDWINMD_VVZ0_SHIFT, align 4
  %37 = shl i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %41 = load i32, i32* @OSD_VIDWINMD_VHZ0, align 4
  %42 = load i32, i32* @OSD_VIDWINMD_VVZ0, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @OSD_VIDWINMD, align 4
  %46 = call i32 @osd_modify(%struct.osd_state* %40, i32 %43, i32 %44, i32 %45)
  br label %83

47:                                               ; preds = %4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @OSD_OSDWIN1MD_OHZ1_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %9, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @OSD_OSDWIN1MD_OVZ1_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %59 = load i32, i32* @OSD_OSDWIN1MD_OHZ1, align 4
  %60 = load i32, i32* @OSD_OSDWIN1MD_OVZ1, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @OSD_OSDWIN1MD, align 4
  %64 = call i32 @osd_modify(%struct.osd_state* %58, i32 %61, i32 %62, i32 %63)
  br label %83

65:                                               ; preds = %4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @OSD_VIDWINMD_VHZ1_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @OSD_VIDWINMD_VVZ1_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load %struct.osd_state*, %struct.osd_state** %5, align 8
  %77 = load i32, i32* @OSD_VIDWINMD_VHZ1, align 4
  %78 = load i32, i32* @OSD_VIDWINMD_VVZ1, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @OSD_VIDWINMD, align 4
  %82 = call i32 @osd_modify(%struct.osd_state* %76, i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %4, %65, %47, %29, %11
  ret void
}

declare dso_local i32 @osd_modify(%struct.osd_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
