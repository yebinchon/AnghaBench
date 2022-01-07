; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7180.c_adv7180_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.v4l2_subdev = type { i32 }
%struct.adv7180_state = type { i32 }

@ADV7180_REG_BRI = common dso_local global i32 0, align 4
@ADV7180_REG_HUE = common dso_local global i32 0, align 4
@ADV7180_REG_CON = common dso_local global i32 0, align 4
@ADV7180_REG_SD_SAT_CB = common dso_local global i32 0, align 4
@ADV7180_REG_SD_SAT_CR = common dso_local global i32 0, align 4
@ADV7180_REG_FLCONTROL = common dso_local global i32 0, align 4
@ADV7180_FLCONTROL_FL_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @adv7180_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv7180_s_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_ctrl*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.adv7180_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %3, align 8
  %8 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %9 = call %struct.v4l2_subdev* @to_adv7180_sd(%struct.v4l2_ctrl* %8)
  store %struct.v4l2_subdev* %9, %struct.v4l2_subdev** %4, align 8
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.adv7180_state* @to_state(%struct.v4l2_subdev* %10)
  store %struct.adv7180_state* %11, %struct.adv7180_state** %5, align 8
  %12 = load %struct.adv7180_state*, %struct.adv7180_state** %5, align 8
  %13 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock_interruptible(i32* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %82

19:                                               ; preds = %1
  %20 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %21 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %24 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %74 [
    i32 131, label %26
    i32 129, label %31
    i32 130, label %37
    i32 128, label %42
    i32 132, label %55
  ]

26:                                               ; preds = %19
  %27 = load %struct.adv7180_state*, %struct.adv7180_state** %5, align 8
  %28 = load i32, i32* @ADV7180_REG_BRI, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @adv7180_write(%struct.adv7180_state* %27, i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  br label %77

31:                                               ; preds = %19
  %32 = load %struct.adv7180_state*, %struct.adv7180_state** %5, align 8
  %33 = load i32, i32* @ADV7180_REG_HUE, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 0, %34
  %36 = call i32 @adv7180_write(%struct.adv7180_state* %32, i32 %33, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %77

37:                                               ; preds = %19
  %38 = load %struct.adv7180_state*, %struct.adv7180_state** %5, align 8
  %39 = load i32, i32* @ADV7180_REG_CON, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @adv7180_write(%struct.adv7180_state* %38, i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  br label %77

42:                                               ; preds = %19
  %43 = load %struct.adv7180_state*, %struct.adv7180_state** %5, align 8
  %44 = load i32, i32* @ADV7180_REG_SD_SAT_CB, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @adv7180_write(%struct.adv7180_state* %43, i32 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %77

50:                                               ; preds = %42
  %51 = load %struct.adv7180_state*, %struct.adv7180_state** %5, align 8
  %52 = load i32, i32* @ADV7180_REG_SD_SAT_CR, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @adv7180_write(%struct.adv7180_state* %51, i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  br label %77

55:                                               ; preds = %19
  %56 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %3, align 8
  %57 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.adv7180_state*, %struct.adv7180_state** %5, align 8
  %62 = call i32 @adv7180_write(%struct.adv7180_state* %61, i32 32985, i32 68)
  %63 = load %struct.adv7180_state*, %struct.adv7180_state** %5, align 8
  %64 = load i32, i32* @ADV7180_REG_FLCONTROL, align 4
  %65 = load i32, i32* @ADV7180_FLCONTROL_FL_ENABLE, align 4
  %66 = call i32 @adv7180_write(%struct.adv7180_state* %63, i32 %64, i32 %65)
  br label %73

67:                                               ; preds = %55
  %68 = load %struct.adv7180_state*, %struct.adv7180_state** %5, align 8
  %69 = call i32 @adv7180_write(%struct.adv7180_state* %68, i32 32985, i32 196)
  %70 = load %struct.adv7180_state*, %struct.adv7180_state** %5, align 8
  %71 = load i32, i32* @ADV7180_REG_FLCONTROL, align 4
  %72 = call i32 @adv7180_write(%struct.adv7180_state* %70, i32 %71, i32 0)
  br label %73

73:                                               ; preds = %67, %60
  br label %77

74:                                               ; preds = %19
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %74, %73, %50, %49, %37, %31, %26
  %78 = load %struct.adv7180_state*, %struct.adv7180_state** %5, align 8
  %79 = getelementptr inbounds %struct.adv7180_state, %struct.adv7180_state* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %77, %17
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.v4l2_subdev* @to_adv7180_sd(%struct.v4l2_ctrl*) #1

declare dso_local %struct.adv7180_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @adv7180_write(%struct.adv7180_state*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
