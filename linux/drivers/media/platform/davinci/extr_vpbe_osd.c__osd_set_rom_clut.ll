; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_set_rom_clut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c__osd_set_rom_clut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32 }

@ROM_CLUT0 = common dso_local global i32 0, align 4
@OSD_MISCCTL_RSEL = common dso_local global i32 0, align 4
@OSD_MISCCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osd_state*, i32)* @_osd_set_rom_clut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_osd_set_rom_clut(%struct.osd_state* %0, i32 %1) #0 {
  %3 = alloca %struct.osd_state*, align 8
  %4 = alloca i32, align 4
  store %struct.osd_state* %0, %struct.osd_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @ROM_CLUT0, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %10 = load i32, i32* @OSD_MISCCTL_RSEL, align 4
  %11 = load i32, i32* @OSD_MISCCTL, align 4
  %12 = call i32 @osd_clear(%struct.osd_state* %9, i32 %10, i32 %11)
  br label %18

13:                                               ; preds = %2
  %14 = load %struct.osd_state*, %struct.osd_state** %3, align 8
  %15 = load i32, i32* @OSD_MISCCTL_RSEL, align 4
  %16 = load i32, i32* @OSD_MISCCTL, align 4
  %17 = call i32 @osd_set(%struct.osd_state* %14, i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %13, %8
  ret void
}

declare dso_local i32 @osd_clear(%struct.osd_state*, i32, i32) #1

declare dso_local i32 @osd_set(%struct.osd_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
