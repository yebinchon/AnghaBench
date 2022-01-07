; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_twl4030_config_wakeup12_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_twl4030_config_wakeup12_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_power_data = type { i64 }

@TWL_MODULE_PM_MASTER = common dso_local global i32 0, align 4
@R_SEQ_ADD_S2A12 = common dso_local global i32 0, align 4
@R_P1_SW_EVENTS = common dso_local global i32 0, align 4
@PWR_LVL_WAKEUP = common dso_local global i32 0, align 4
@R_P2_SW_EVENTS = common dso_local global i32 0, align 4
@R_CFG_P1_TRANSITION = common dso_local global i32 0, align 4
@STARTON_CHG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"TWL4030 wakeup sequence for P1 and P2config error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twl4030_power_data*, i32)* @twl4030_config_wakeup12_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_config_wakeup12_sequence(%struct.twl4030_power_data* %0, i32 %1) #0 {
  %3 = alloca %struct.twl4030_power_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.twl4030_power_data* %0, %struct.twl4030_power_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @R_SEQ_ADD_S2A12, align 4
  %10 = call i32 @twl_i2c_write_u8(i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %82

14:                                               ; preds = %2
  %15 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %16 = load i32, i32* @R_P1_SW_EVENTS, align 4
  %17 = call i32 @twl_i2c_read_u8(i32 %15, i32* %6, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %82

21:                                               ; preds = %14
  %22 = load i32, i32* @PWR_LVL_WAKEUP, align 4
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @R_P1_SW_EVENTS, align 4
  %28 = call i32 @twl_i2c_write_u8(i32 %25, i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %82

32:                                               ; preds = %21
  %33 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %34 = load i32, i32* @R_P2_SW_EVENTS, align 4
  %35 = call i32 @twl_i2c_read_u8(i32 %33, i32* %6, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %82

39:                                               ; preds = %32
  %40 = load i32, i32* @PWR_LVL_WAKEUP, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @R_P2_SW_EVENTS, align 4
  %46 = call i32 @twl_i2c_write_u8(i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %82

50:                                               ; preds = %39
  %51 = load %struct.twl4030_power_data*, %struct.twl4030_power_data** %3, align 8
  %52 = getelementptr inbounds %struct.twl4030_power_data, %struct.twl4030_power_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = call i64 (...) @machine_is_omap_3430sdp()
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = call i64 (...) @machine_is_omap_ldp()
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %58, %55, %50
  %62 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %63 = load i32, i32* @R_CFG_P1_TRANSITION, align 4
  %64 = call i32 @twl_i2c_read_u8(i32 %62, i32* %6, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %82

68:                                               ; preds = %61
  %69 = load i32, i32* @STARTON_CHG, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %6, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @R_CFG_P1_TRANSITION, align 4
  %76 = call i32 @twl_i2c_write_u8(i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %82

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80, %58
  br label %82

82:                                               ; preds = %81, %79, %67, %49, %38, %31, %20, %13
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %82
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

declare dso_local i64 @machine_is_omap_3430sdp(...) #1

declare dso_local i64 @machine_is_omap_ldp(...) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
