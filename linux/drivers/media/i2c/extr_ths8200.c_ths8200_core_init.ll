; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ths8200.c_ths8200_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ths8200.c_ths8200_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@THS8200_CHIP_CTL = common dso_local global i32 0, align 4
@THS8200_DATA_CNTL = common dso_local global i32 0, align 4
@THS8200_DTG1_MODE = common dso_local global i32 0, align 4
@THS8200_DTG1_Y_SYNC_MSB = common dso_local global i32 0, align 4
@THS8200_DTG1_CBCR_SYNC_MSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @ths8200_core_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ths8200_core_init(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %3 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %4 = load i32, i32* @THS8200_CHIP_CTL, align 4
  %5 = call i32 @ths8200_write_and_or(%struct.v4l2_subdev* %3, i32 %4, i32 63, i32 192)
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %7 = load i32, i32* @THS8200_DATA_CNTL, align 4
  %8 = call i32 @ths8200_write(%struct.v4l2_subdev* %6, i32 %7, i32 112)
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %10 = load i32, i32* @THS8200_DTG1_MODE, align 4
  %11 = call i32 @ths8200_write(%struct.v4l2_subdev* %9, i32 %10, i32 135)
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %13 = load i32, i32* @THS8200_DTG1_Y_SYNC_MSB, align 4
  %14 = call i32 @ths8200_write(%struct.v4l2_subdev* %12, i32 %13, i32 0)
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %16 = load i32, i32* @THS8200_DTG1_CBCR_SYNC_MSB, align 4
  %17 = call i32 @ths8200_write(%struct.v4l2_subdev* %15, i32 %16, i32 0)
  ret void
}

declare dso_local i32 @ths8200_write_and_or(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @ths8200_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
