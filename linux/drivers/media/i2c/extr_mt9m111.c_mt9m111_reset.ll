; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9m111 = type { i32 }
%struct.i2c_client = type { i32 }

@RESET = common dso_local global i32 0, align 4
@MT9M111_RESET_RESET_MODE = common dso_local global i32 0, align 4
@MT9M111_RESET_RESET_SOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9m111*)* @mt9m111_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_reset(%struct.mt9m111* %0) #0 {
  %2 = alloca %struct.mt9m111*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  store %struct.mt9m111* %0, %struct.mt9m111** %2, align 8
  %5 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %6 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %5, i32 0, i32 0
  %7 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load i32, i32* @RESET, align 4
  %9 = load i32, i32* @MT9M111_RESET_RESET_MODE, align 4
  %10 = call i32 @reg_set(i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @RESET, align 4
  %15 = load i32, i32* @MT9M111_RESET_RESET_SOC, align 4
  %16 = call i32 @reg_set(i32 %14, i32 %15)
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %13, %1
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @RESET, align 4
  %22 = load i32, i32* @MT9M111_RESET_RESET_MODE, align 4
  %23 = load i32, i32* @MT9M111_RESET_RESET_SOC, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @reg_clear(i32 %21, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @reg_set(i32, i32) #1

declare dso_local i32 @reg_clear(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
