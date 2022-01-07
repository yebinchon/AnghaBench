; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_read_activity_status_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tda1997x.c_tda1997x_read_activity_status_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@REG_CLK_A_STATUS = common dso_local global i32 0, align 4
@MASK_CLK_STABLE = common dso_local global i32 0, align 4
@MASK_CLK_ACTIVE = common dso_local global i32 0, align 4
@REG_CLK_B_STATUS = common dso_local global i32 0, align 4
@REG_SUS_STATUS = common dso_local global i32 0, align 4
@MASK_SUS_STATUS = common dso_local global i32 0, align 4
@LAST_STATE_REACHED = common dso_local global i32 0, align 4
@MASK_SUS_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @tda1997x_read_activity_status_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda1997x_read_activity_status_regs(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %6 = load i32, i32* @REG_CLK_A_STATUS, align 4
  %7 = call i32 @io_read(%struct.v4l2_subdev* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @MASK_CLK_STABLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @MASK_CLK_ACTIVE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @MASK_CLK_STABLE, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %17, %12, %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @MASK_CLK_STABLE, align 4
  %25 = and i32 %23, %24
  %26 = ashr i32 %25, 2
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %30 = load i32, i32* @REG_CLK_B_STATUS, align 4
  %31 = call i32 @io_read(%struct.v4l2_subdev* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @MASK_CLK_STABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %22
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @MASK_CLK_ACTIVE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @MASK_CLK_STABLE, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %41, %36, %22
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @MASK_CLK_STABLE, align 4
  %49 = and i32 %47, %48
  %50 = ashr i32 %49, 1
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %54 = load i32, i32* @REG_SUS_STATUS, align 4
  %55 = call i32 @io_read(%struct.v4l2_subdev* %53, i32 %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @MASK_SUS_STATUS, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @LAST_STATE_REACHED, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %46
  %62 = load i32, i32* @MASK_SUS_STATE, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %70

65:                                               ; preds = %46
  %66 = load i32, i32* @MASK_SUS_STATE, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %61
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @io_read(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
