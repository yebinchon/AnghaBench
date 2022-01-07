; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_sig_volt_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mmci.c_mmci_sig_volt_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_ios = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Voltage switch failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, %struct.mmc_ios*)* @mmci_sig_volt_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmci_sig_volt_switch(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @IS_ERR(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %2
  %13 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %34 [
    i32 128, label %16
    i32 129, label %22
    i32 130, label %28
  ]

16:                                               ; preds = %12
  %17 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %18 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @regulator_set_voltage(i32 %20, i32 2700000, i32 3600000)
  store i32 %21, i32* %5, align 4
  br label %34

22:                                               ; preds = %12
  %23 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %24 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regulator_set_voltage(i32 %26, i32 1700000, i32 1950000)
  store i32 %27, i32* %5, align 4
  br label %34

28:                                               ; preds = %12
  %29 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %30 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @regulator_set_voltage(i32 %32, i32 1100000, i32 1300000)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %12, %28, %22, %16
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %39 = call i32 @mmc_dev(%struct.mmc_host* %38)
  %40 = call i32 @dev_warn(i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %37, %34
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @regulator_set_voltage(i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mmc_dev(%struct.mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
