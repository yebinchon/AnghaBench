; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_phy_initialise_external.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_phy_initialise_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HW_CFG = common dso_local global i32 0, align 4
@SMSC911X_FORCE_INTERNAL_PHY = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Forcing internal PHY\00", align 1
@SMSC911X_FORCE_EXTERNAL_PHY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Forcing external PHY\00", align 1
@HW_CFG_EXT_PHY_DET_ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"HW_CFG EXT_PHY_DET set, using external PHY\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"HW_CFG EXT_PHY_DET clear, using internal PHY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsc911x_data*)* @smsc911x_phy_initialise_external to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc911x_phy_initialise_external(%struct.smsc911x_data* %0) #0 {
  %2 = alloca %struct.smsc911x_data*, align 8
  %3 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %2, align 8
  %4 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %5 = load i32, i32* @HW_CFG, align 4
  %6 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %8 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SMSC911X_FORCE_INTERNAL_PHY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %16 = load i32, i32* @hw, align 4
  %17 = call i32 @SMSC_TRACE(%struct.smsc911x_data* %15, i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %19 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  br label %57

20:                                               ; preds = %1
  %21 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %22 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SMSC911X_FORCE_EXTERNAL_PHY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %30 = load i32, i32* @hw, align 4
  %31 = call i32 @SMSC_TRACE(%struct.smsc911x_data* %29, i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %33 = call i32 @smsc911x_phy_enable_external(%struct.smsc911x_data* %32)
  %34 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %35 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %56

36:                                               ; preds = %20
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @HW_CFG_EXT_PHY_DET_, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %43 = load i32, i32* @hw, align 4
  %44 = call i32 @SMSC_TRACE(%struct.smsc911x_data* %42, i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %46 = call i32 @smsc911x_phy_enable_external(%struct.smsc911x_data* %45)
  %47 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %48 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  br label %55

49:                                               ; preds = %36
  %50 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %51 = load i32, i32* @hw, align 4
  %52 = call i32 @SMSC_TRACE(%struct.smsc911x_data* %50, i32 %51, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %54 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %41
  br label %56

56:                                               ; preds = %55, %28
  br label %57

57:                                               ; preds = %56, %14
  ret void
}

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @SMSC_TRACE(%struct.smsc911x_data*, i32, i8*) #1

declare dso_local i32 @smsc911x_phy_enable_external(%struct.smsc911x_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
