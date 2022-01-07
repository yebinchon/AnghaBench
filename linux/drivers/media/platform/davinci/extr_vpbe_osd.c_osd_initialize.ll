; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c_osd_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c_osd_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i64, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@PIXFMT_YCBCRI = common dso_local global i32 0, align 4
@VPBE_VERSION_3 = common dso_local global i64 0, align 8
@ROM_CLUT1 = common dso_local global i32 0, align 4
@WIN_OSD0 = common dso_local global i32 0, align 4
@WIN_VID0 = common dso_local global i32 0, align 4
@WIN_OSD1 = common dso_local global i32 0, align 4
@WIN_VID1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.osd_state*)* @osd_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osd_initialize(%struct.osd_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.osd_state*, align 8
  store %struct.osd_state* %0, %struct.osd_state** %3, align 8
  %4 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %5 = icmp eq %struct.osd_state* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %2, align 4
  br label %47

9:                                                ; preds = %1
  %10 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %11 = call i32 @_osd_init(%struct.osd_state* %10)
  %12 = load i32, i32* @PIXFMT_YCBCRI, align 4
  %13 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %14 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %16 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VPBE_VERSION_3, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %9
  %21 = load i32, i32* @ROM_CLUT1, align 4
  %22 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %23 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %20, %9
  %25 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %26 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %27 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @_osd_set_field_inversion(%struct.osd_state* %25, i32 %28)
  %30 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %31 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %32 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @_osd_set_rom_clut(%struct.osd_state* %30, i32 %33)
  %35 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %36 = load i32, i32* @WIN_OSD0, align 4
  %37 = call i32 @osd_init_layer(%struct.osd_state* %35, i32 %36)
  %38 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %39 = load i32, i32* @WIN_VID0, align 4
  %40 = call i32 @osd_init_layer(%struct.osd_state* %38, i32 %39)
  %41 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %42 = load i32, i32* @WIN_OSD1, align 4
  %43 = call i32 @osd_init_layer(%struct.osd_state* %41, i32 %42)
  %44 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %45 = load i32, i32* @WIN_VID1, align 4
  %46 = call i32 @osd_init_layer(%struct.osd_state* %44, i32 %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %24, %6
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @_osd_init(%struct.osd_state*) #1

declare dso_local i32 @_osd_set_field_inversion(%struct.osd_state*, i32) #1

declare dso_local i32 @_osd_set_rom_clut(%struct.osd_state*, i32) #1

declare dso_local i32 @osd_init_layer(%struct.osd_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
