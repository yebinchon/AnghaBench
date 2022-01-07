; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_sec-core.c_sec_pmic_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_sec-core.c_sec_pmic_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.sec_pmic_dev = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@S2MPS11_REG_CTRL1 = common dso_local global i32 0, align 4
@S2MPS11_CTRL1_PWRHOLD_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unsupported device %lu for manual power off\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @sec_pmic_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_pmic_shutdown(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.sec_pmic_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call %struct.sec_pmic_dev* @i2c_get_clientdata(%struct.i2c_client* %6)
  store %struct.sec_pmic_dev* %7, %struct.sec_pmic_dev** %3, align 8
  %8 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %3, align 8
  %9 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %37

15:                                               ; preds = %1
  %16 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %3, align 8
  %17 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %22 [
    i32 128, label %19
  ]

19:                                               ; preds = %15
  %20 = load i32, i32* @S2MPS11_REG_CTRL1, align 4
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @S2MPS11_CTRL1_PWRHOLD_MASK, align 4
  store i32 %21, i32* %5, align 4
  br label %30

22:                                               ; preds = %15
  %23 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %3, align 8
  %24 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %3, align 8
  %27 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_warn(i32 %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %37

30:                                               ; preds = %19
  %31 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %3, align 8
  %32 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %30, %22, %14
  ret void
}

declare dso_local %struct.sec_pmic_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
