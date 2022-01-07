; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-rk.c_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_priv_data = type { %struct.TYPE_2__*, %struct.regulator* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.regulator = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"fail to enable phy-supply\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"fail to disable phy-supply\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_priv_data*, i32)* @phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_power_on(%struct.rk_priv_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rk_priv_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  store %struct.rk_priv_data* %0, %struct.rk_priv_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %10 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %9, i32 0, i32 1
  %11 = load %struct.regulator*, %struct.regulator** %10, align 8
  store %struct.regulator* %11, %struct.regulator** %6, align 8
  %12 = load %struct.rk_priv_data*, %struct.rk_priv_data** %4, align 8
  %13 = getelementptr inbounds %struct.rk_priv_data, %struct.rk_priv_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.regulator*, %struct.regulator** %6, align 8
  %17 = icmp ne %struct.regulator* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load %struct.regulator*, %struct.regulator** %6, align 8
  %24 = call i32 @regulator_enable(%struct.regulator* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.device*, %struct.device** %8, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %22
  br label %40

31:                                               ; preds = %19
  %32 = load %struct.regulator*, %struct.regulator** %6, align 8
  %33 = call i32 @regulator_disable(%struct.regulator* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.device*, %struct.device** %8, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %31
  br label %40

40:                                               ; preds = %39, %30
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %18
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @regulator_enable(%struct.regulator*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @regulator_disable(%struct.regulator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
