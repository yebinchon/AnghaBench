; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_g_volatile_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_g_volatile_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32, i32 }
%struct.max2175 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @max2175_g_volatile_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max2175_g_volatile_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca %struct.v4l2_ctrl*, align 8
  %3 = alloca %struct.max2175*, align 8
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %2, align 8
  %4 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %5 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.max2175* @max2175_from_ctrl_hdl(i32 %6)
  store %struct.max2175* %7, %struct.max2175** %3, align 8
  %8 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %9 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %28 [
    i32 129, label %11
    i32 130, label %16
    i32 128, label %21
  ]

11:                                               ; preds = %1
  %12 = load %struct.max2175*, %struct.max2175** %3, align 8
  %13 = call i32 @max2175_get_lna_gain(%struct.max2175* %12)
  %14 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %15 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  br label %28

16:                                               ; preds = %1
  %17 = load %struct.max2175*, %struct.max2175** %3, align 8
  %18 = call i32 @max2175_read_bits(%struct.max2175* %17, i32 49, i32 4, i32 0)
  %19 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %20 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %28

21:                                               ; preds = %1
  %22 = load %struct.max2175*, %struct.max2175** %3, align 8
  %23 = call i32 @max2175_read_bits(%struct.max2175* %22, i32 60, i32 7, i32 6)
  %24 = icmp eq i32 %23, 3
  %25 = zext i1 %24 to i32
  %26 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %27 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %1, %21, %16, %11
  ret i32 0
}

declare dso_local %struct.max2175* @max2175_from_ctrl_hdl(i32) #1

declare dso_local i32 @max2175_get_lna_gain(%struct.max2175*) #1

declare dso_local i32 @max2175_read_bits(%struct.max2175*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
