; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_sec-core.c_sec_pmic_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_sec-core.c_sec_pmic_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_pmic_dev = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@S2MPS13X = common dso_local global i64 0, align 8
@S2MPS13_REG_WRSTBI = common dso_local global i32 0, align 4
@S2MPS13_REG_WRSTBI_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Cannot initialize WRSTBI config: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sec_pmic_dev*)* @sec_pmic_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_pmic_configure(%struct.sec_pmic_dev* %0) #0 {
  %2 = alloca %struct.sec_pmic_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.sec_pmic_dev* %0, %struct.sec_pmic_dev** %2, align 8
  %4 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %2, align 8
  %5 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @S2MPS13X, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %33

10:                                               ; preds = %1
  %11 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %2, align 8
  %12 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %10
  %18 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %2, align 8
  %19 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @S2MPS13_REG_WRSTBI, align 4
  %22 = load i32, i32* @S2MPS13_REG_WRSTBI_MASK, align 4
  %23 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %22, i32 0)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load %struct.sec_pmic_dev*, %struct.sec_pmic_dev** %2, align 8
  %28 = getelementptr inbounds %struct.sec_pmic_dev, %struct.sec_pmic_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @dev_warn(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %17
  br label %33

33:                                               ; preds = %9, %32, %10
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
