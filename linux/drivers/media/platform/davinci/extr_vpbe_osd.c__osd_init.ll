; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i64 }

@OSD_MODE = common dso_local global i32 0, align 4
@OSD_VIDWINMD = common dso_local global i32 0, align 4
@OSD_OSDWIN0MD = common dso_local global i32 0, align 4
@OSD_OSDWIN1MD = common dso_local global i32 0, align 4
@OSD_RECTCUR = common dso_local global i32 0, align 4
@OSD_MISCCTL = common dso_local global i32 0, align 4
@VPBE_VERSION_3 = common dso_local global i64 0, align 8
@OSD_VBNDRY = common dso_local global i32 0, align 4
@OSD_EXTMODE = common dso_local global i32 0, align 4
@OSD_MISCCTL_DMANG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osd_state*)* @_osd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_osd_init(%struct.osd_state* %0) #0 {
  %2 = alloca %struct.osd_state*, align 8
  store %struct.osd_state* %0, %struct.osd_state** %2, align 8
  %3 = load %struct.osd_state*, %struct.osd_state** %2, align 8
  %4 = load i32, i32* @OSD_MODE, align 4
  %5 = call i32 @osd_write(%struct.osd_state* %3, i32 0, i32 %4)
  %6 = load %struct.osd_state*, %struct.osd_state** %2, align 8
  %7 = load i32, i32* @OSD_VIDWINMD, align 4
  %8 = call i32 @osd_write(%struct.osd_state* %6, i32 0, i32 %7)
  %9 = load %struct.osd_state*, %struct.osd_state** %2, align 8
  %10 = load i32, i32* @OSD_OSDWIN0MD, align 4
  %11 = call i32 @osd_write(%struct.osd_state* %9, i32 0, i32 %10)
  %12 = load %struct.osd_state*, %struct.osd_state** %2, align 8
  %13 = load i32, i32* @OSD_OSDWIN1MD, align 4
  %14 = call i32 @osd_write(%struct.osd_state* %12, i32 0, i32 %13)
  %15 = load %struct.osd_state*, %struct.osd_state** %2, align 8
  %16 = load i32, i32* @OSD_RECTCUR, align 4
  %17 = call i32 @osd_write(%struct.osd_state* %15, i32 0, i32 %16)
  %18 = load %struct.osd_state*, %struct.osd_state** %2, align 8
  %19 = load i32, i32* @OSD_MISCCTL, align 4
  %20 = call i32 @osd_write(%struct.osd_state* %18, i32 0, i32 %19)
  %21 = load %struct.osd_state*, %struct.osd_state** %2, align 8
  %22 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VPBE_VERSION_3, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %1
  %27 = load %struct.osd_state*, %struct.osd_state** %2, align 8
  %28 = load i32, i32* @OSD_VBNDRY, align 4
  %29 = call i32 @osd_write(%struct.osd_state* %27, i32 0, i32 %28)
  %30 = load %struct.osd_state*, %struct.osd_state** %2, align 8
  %31 = load i32, i32* @OSD_EXTMODE, align 4
  %32 = call i32 @osd_write(%struct.osd_state* %30, i32 0, i32 %31)
  %33 = load %struct.osd_state*, %struct.osd_state** %2, align 8
  %34 = load i32, i32* @OSD_MISCCTL_DMANG, align 4
  %35 = load i32, i32* @OSD_MISCCTL, align 4
  %36 = call i32 @osd_write(%struct.osd_state* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @osd_write(%struct.osd_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
