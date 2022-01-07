; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_get_opt_media_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_get_opt_media_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.velocity_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VELOCITY_AUTONEG_ENABLE = common dso_local global i32 0, align 4
@VELOCITY_SPEED_100 = common dso_local global i32 0, align 4
@VELOCITY_DUPLEX_FULL = common dso_local global i32 0, align 4
@VELOCITY_SPEED_10 = common dso_local global i32 0, align 4
@VELOCITY_SPEED_1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.velocity_info*)* @velocity_get_opt_media_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @velocity_get_opt_media_mode(%struct.velocity_info* %0) #0 {
  %2 = alloca %struct.velocity_info*, align 8
  %3 = alloca i32, align 4
  store %struct.velocity_info* %0, %struct.velocity_info** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %5 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %26 [
    i32 128, label %8
    i32 132, label %10
    i32 130, label %14
    i32 131, label %18
    i32 129, label %20
    i32 133, label %22
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @VELOCITY_AUTONEG_ENABLE, align 4
  store i32 %9, i32* %3, align 4
  br label %26

10:                                               ; preds = %1
  %11 = load i32, i32* @VELOCITY_SPEED_100, align 4
  %12 = load i32, i32* @VELOCITY_DUPLEX_FULL, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %3, align 4
  br label %26

14:                                               ; preds = %1
  %15 = load i32, i32* @VELOCITY_SPEED_10, align 4
  %16 = load i32, i32* @VELOCITY_DUPLEX_FULL, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %3, align 4
  br label %26

18:                                               ; preds = %1
  %19 = load i32, i32* @VELOCITY_SPEED_100, align 4
  store i32 %19, i32* %3, align 4
  br label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @VELOCITY_SPEED_10, align 4
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @VELOCITY_SPEED_1000, align 4
  %24 = load i32, i32* @VELOCITY_DUPLEX_FULL, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %1, %22, %20, %18, %14, %10, %8
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %29 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
