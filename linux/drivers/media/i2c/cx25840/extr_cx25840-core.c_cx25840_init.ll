; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_cx25840_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx25840_state = type { i32, i32 }

@CX25840_VCONFIG_FMT_BT656 = common dso_local global i32 0, align 4
@CX25840_VCONFIG_RES_8BIT = common dso_local global i32 0, align 4
@CX25840_VCONFIG_VBIRAW_DISABLED = common dso_local global i32 0, align 4
@CX25840_VCONFIG_ANCDATA_ENABLED = common dso_local global i32 0, align 4
@CX25840_VCONFIG_TASKBIT_ONE = common dso_local global i32 0, align 4
@CX25840_VCONFIG_ACTIVE_HORIZONTAL = common dso_local global i32 0, align 4
@CX25840_VCONFIG_VALID_NORMAL = common dso_local global i32 0, align 4
@CX25840_VCONFIG_HRESETW_NORMAL = common dso_local global i32 0, align 4
@CX25840_VCONFIG_CLKGATE_NONE = common dso_local global i32 0, align 4
@CX25840_VCONFIG_DCMODE_DWORDS = common dso_local global i32 0, align 4
@CX25840_VCONFIG_IDID0S_NORMAL = common dso_local global i32 0, align 4
@CX25840_VCONFIG_VIPCLAMP_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @cx25840_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25840_init(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx25840_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %6)
  store %struct.cx25840_state* %7, %struct.cx25840_state** %5, align 8
  %8 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %9 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %11 = call i64 @is_cx2584x(%struct.cx25840_state* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %2
  %14 = load i32, i32* @CX25840_VCONFIG_FMT_BT656, align 4
  %15 = load i32, i32* @CX25840_VCONFIG_RES_8BIT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @CX25840_VCONFIG_VBIRAW_DISABLED, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @CX25840_VCONFIG_ANCDATA_ENABLED, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CX25840_VCONFIG_TASKBIT_ONE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CX25840_VCONFIG_ACTIVE_HORIZONTAL, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CX25840_VCONFIG_VALID_NORMAL, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @CX25840_VCONFIG_HRESETW_NORMAL, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CX25840_VCONFIG_CLKGATE_NONE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CX25840_VCONFIG_DCMODE_DWORDS, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CX25840_VCONFIG_IDID0S_NORMAL, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CX25840_VCONFIG_VIPCLAMP_DISABLED, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %38 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.cx25840_state*, %struct.cx25840_state** %5, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @cx25840_vconfig_add(%struct.cx25840_state* %39, i32 %40)
  br label %44

42:                                               ; preds = %2
  %43 = call i32 @WARN_ON(i32 1)
  br label %44

44:                                               ; preds = %42, %13
  ret i32 0
}

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i64 @is_cx2584x(%struct.cx25840_state*) #1

declare dso_local i32 @cx25840_vconfig_add(%struct.cx25840_state*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
