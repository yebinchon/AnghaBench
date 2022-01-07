; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rk808.c_rk8xx_syscore_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rk808.c_rk8xx_syscore_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.rk808 = type { i64, i32 }

@rk808_i2c_client = common dso_local global %struct.TYPE_3__* null, align 8
@system_state = common dso_local global i64 0, align 8
@SYSTEM_POWER_OFF = common dso_local global i64 0, align 8
@RK809_ID = common dso_local global i64 0, align 8
@RK817_ID = common dso_local global i64 0, align 8
@RK817_SLPPIN_FUNC_MSK = common dso_local global i32 0, align 4
@SLPPIN_DN_FUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Cannot switch to power down function\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rk8xx_syscore_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk8xx_syscore_shutdown() #0 {
  %1 = alloca %struct.rk808*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rk808_i2c_client, align 8
  %4 = call %struct.rk808* @i2c_get_clientdata(%struct.TYPE_3__* %3)
  store %struct.rk808* %4, %struct.rk808** %1, align 8
  %5 = load i64, i64* @system_state, align 8
  %6 = load i64, i64* @SYSTEM_POWER_OFF, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %35

8:                                                ; preds = %0
  %9 = load %struct.rk808*, %struct.rk808** %1, align 8
  %10 = getelementptr inbounds %struct.rk808, %struct.rk808* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RK809_ID, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load %struct.rk808*, %struct.rk808** %1, align 8
  %16 = getelementptr inbounds %struct.rk808, %struct.rk808* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RK817_ID, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %14, %8
  %21 = load %struct.rk808*, %struct.rk808** %1, align 8
  %22 = getelementptr inbounds %struct.rk808, %struct.rk808* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @RK817_SYS_CFG(i32 3)
  %25 = load i32, i32* @RK817_SLPPIN_FUNC_MSK, align 4
  %26 = load i32, i32* @SLPPIN_DN_FUN, align 4
  %27 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rk808_i2c_client, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @dev_warn(i32* %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %30, %20
  br label %35

35:                                               ; preds = %34, %14, %0
  ret void
}

declare dso_local %struct.rk808* @i2c_get_clientdata(%struct.TYPE_3__*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @RK817_SYS_CFG(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
