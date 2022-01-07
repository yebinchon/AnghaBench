; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-phy.c_mxl111sf_idac_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-phy.c_mxl111sf_idac_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32 }

@IDAC_MANUAL_CONTROL = common dso_local global i64 0, align 8
@IDAC_MANUAL_CONTROL_BIT_MASK = common dso_local global i64 0, align 8
@IDAC_CURRENT_SINKING_ENABLE = common dso_local global i64 0, align 8
@IDAC_CURRENT_SINKING_BIT_MASK = common dso_local global i64 0, align 8
@V6_IDAC_HYSTERESIS_REG = common dso_local global i32 0, align 4
@V6_IDAC_SETTINGS_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxl111sf_idac_config(%struct.mxl111sf_state* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.mxl111sf_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i64, i64* %9, align 8
  store i64 %13, i64* %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @IDAC_MANUAL_CONTROL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %5
  %18 = load i64, i64* @IDAC_MANUAL_CONTROL_BIT_MASK, align 8
  %19 = load i64, i64* %12, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @IDAC_CURRENT_SINKING_ENABLE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i64, i64* @IDAC_CURRENT_SINKING_BIT_MASK, align 8
  %26 = load i64, i64* %12, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %12, align 8
  br label %33

28:                                               ; preds = %17
  %29 = load i64, i64* @IDAC_CURRENT_SINKING_BIT_MASK, align 8
  %30 = xor i64 %29, -1
  %31 = load i64, i64* %12, align 8
  %32 = and i64 %31, %30
  store i64 %32, i64* %12, align 8
  br label %33

33:                                               ; preds = %28, %24
  br label %46

34:                                               ; preds = %5
  %35 = load i64, i64* @IDAC_MANUAL_CONTROL_BIT_MASK, align 8
  %36 = xor i64 %35, -1
  %37 = load i64, i64* %12, align 8
  %38 = and i64 %37, %36
  store i64 %38, i64* %12, align 8
  %39 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %6, align 8
  %40 = load i32, i32* @V6_IDAC_HYSTERESIS_REG, align 4
  %41 = load i64, i64* %10, align 8
  %42 = and i64 %41, 63
  %43 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %39, i32 %40, i64 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @mxl_fail(i32 %44)
  br label %46

46:                                               ; preds = %34, %33
  %47 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %6, align 8
  %48 = load i32, i32* @V6_IDAC_SETTINGS_REG, align 4
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %47, i32 %48, i64 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @mxl_fail(i32 %51)
  %53 = load i32, i32* %11, align 4
  ret i32 %53
}

declare dso_local i32 @mxl111sf_write_reg(%struct.mxl111sf_state*, i32, i64) #1

declare dso_local i32 @mxl_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
