; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65910.c_tps65910_sleepinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65910.c_tps65910_sleepinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps65910 = type { %struct.device* }
%struct.device = type { i32 }
%struct.tps65910_board = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@TPS65910_DEVCTRL = common dso_local global i32 0, align 4
@DEVCTRL_DEV_SLP_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"set dev_slp failed: %d\0A\00", align 1
@TPS65910_SLEEP_KEEP_RES_ON = common dso_local global i32 0, align 4
@SLEEP_KEEP_RES_ON_THERM_KEEPON_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"set therm_keepon failed: %d\0A\00", align 1
@SLEEP_KEEP_RES_ON_CLKOUT32K_KEEPON_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"set clkout32k_keepon failed: %d\0A\00", align 1
@SLEEP_KEEP_RES_ON_I2CHS_KEEPON_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"set i2chs_keepon failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps65910*, %struct.tps65910_board*)* @tps65910_sleepinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65910_sleepinit(%struct.tps65910* %0, %struct.tps65910_board* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tps65910*, align 8
  %5 = alloca %struct.tps65910_board*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.tps65910* %0, %struct.tps65910** %4, align 8
  store %struct.tps65910_board* %1, %struct.tps65910_board** %5, align 8
  %8 = load %struct.tps65910_board*, %struct.tps65910_board** %5, align 8
  %9 = getelementptr inbounds %struct.tps65910_board, %struct.tps65910_board* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %89

13:                                               ; preds = %2
  %14 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %15 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %18 = load i32, i32* @TPS65910_DEVCTRL, align 4
  %19 = load i32, i32* @DEVCTRL_DEV_SLP_MASK, align 4
  %20 = call i32 @tps65910_reg_set_bits(%struct.tps65910* %17, i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @dev_err(%struct.device* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %87

27:                                               ; preds = %13
  %28 = load %struct.tps65910_board*, %struct.tps65910_board** %5, align 8
  %29 = getelementptr inbounds %struct.tps65910_board, %struct.tps65910_board* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %35 = load i32, i32* @TPS65910_SLEEP_KEEP_RES_ON, align 4
  %36 = load i32, i32* @SLEEP_KEEP_RES_ON_THERM_KEEPON_MASK, align 4
  %37 = call i32 @tps65910_reg_set_bits(%struct.tps65910* %34, i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %82

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %27
  %46 = load %struct.tps65910_board*, %struct.tps65910_board** %5, align 8
  %47 = getelementptr inbounds %struct.tps65910_board, %struct.tps65910_board* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %45
  %52 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %53 = load i32, i32* @TPS65910_SLEEP_KEEP_RES_ON, align 4
  %54 = load i32, i32* @SLEEP_KEEP_RES_ON_CLKOUT32K_KEEPON_MASK, align 4
  %55 = call i32 @tps65910_reg_set_bits(%struct.tps65910* %52, i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %82

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %45
  %64 = load %struct.tps65910_board*, %struct.tps65910_board** %5, align 8
  %65 = getelementptr inbounds %struct.tps65910_board, %struct.tps65910_board* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %71 = load i32, i32* @TPS65910_SLEEP_KEEP_RES_ON, align 4
  %72 = load i32, i32* @SLEEP_KEEP_RES_ON_I2CHS_KEEPON_MASK, align 4
  %73 = call i32 @tps65910_reg_set_bits(%struct.tps65910* %70, i32 %71, i32 %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %82

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %63
  store i32 0, i32* %3, align 4
  br label %89

82:                                               ; preds = %76, %58, %40
  %83 = load %struct.tps65910*, %struct.tps65910** %4, align 8
  %84 = load i32, i32* @TPS65910_DEVCTRL, align 4
  %85 = load i32, i32* @DEVCTRL_DEV_SLP_MASK, align 4
  %86 = call i32 @tps65910_reg_clear_bits(%struct.tps65910* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %23
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %81, %12
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @tps65910_reg_set_bits(%struct.tps65910*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @tps65910_reg_clear_bits(%struct.tps65910*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
