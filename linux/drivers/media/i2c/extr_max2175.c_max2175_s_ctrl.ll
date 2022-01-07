; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32, i32 }
%struct.max2175 = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"s_ctrl: id 0x%x, val %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @max2175_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max2175_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca %struct.v4l2_ctrl*, align 8
  %3 = alloca %struct.max2175*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %2, align 8
  %4 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %5 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.max2175* @max2175_from_ctrl_hdl(i32 %6)
  store %struct.max2175* %7, %struct.max2175** %3, align 8
  %8 = load %struct.max2175*, %struct.max2175** %3, align 8
  %9 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %10 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mxm_dbg(%struct.max2175* %8, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %17 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %37 [
    i32 129, label %19
    i32 130, label %25
    i32 128, label %31
  ]

19:                                               ; preds = %1
  %20 = load %struct.max2175*, %struct.max2175** %3, align 8
  %21 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %22 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @max2175_i2s_enable(%struct.max2175* %20, i32 %23)
  br label %37

25:                                               ; preds = %1
  %26 = load %struct.max2175*, %struct.max2175** %3, align 8
  %27 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %28 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @max2175_set_hsls(%struct.max2175* %26, i32 %29)
  br label %37

31:                                               ; preds = %1
  %32 = load %struct.max2175*, %struct.max2175** %3, align 8
  %33 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %34 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @max2175_s_ctrl_rx_mode(%struct.max2175* %32, i32 %35)
  br label %37

37:                                               ; preds = %1, %31, %25, %19
  ret i32 0
}

declare dso_local %struct.max2175* @max2175_from_ctrl_hdl(i32) #1

declare dso_local i32 @mxm_dbg(%struct.max2175*, i8*, i32, i32) #1

declare dso_local i32 @max2175_i2s_enable(%struct.max2175*, i32) #1

declare dso_local i32 @max2175_set_hsls(%struct.max2175*, i32) #1

declare dso_local i32 @max2175_s_ctrl_rx_mode(%struct.max2175*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
