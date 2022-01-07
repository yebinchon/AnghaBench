; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i32, i32 }

@HW_CFG = common dso_local global i32 0, align 4
@HW_CFG_SRST_ = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to power-up the PHY chip\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to wakeup the PHY chip\00", align 1
@LAN9250 = common dso_local global i32 0, align 4
@RESET_CTL = common dso_local global i32 0, align 4
@RESET_CTL_DIGITAL_RST_ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to complete reset\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc911x_data*)* @smsc911x_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_soft_reset(%struct.smsc911x_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smsc911x_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %3, align 8
  %9 = load i32, i32* @HW_CFG, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @HW_CFG_SRST_, align 4
  store i32 %10, i32* %8, align 4
  %11 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %12 = call i32 @smsc911x_phy_general_power_up(%struct.smsc911x_data* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %17 = load i32, i32* @drv, align 4
  %18 = call i32 @SMSC_WARN(%struct.smsc911x_data* %16, i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %96

20:                                               ; preds = %1
  %21 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %22 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %27 = call i32 @smsc911x_phy_disable_energy_detect(%struct.smsc911x_data* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %32 = load i32, i32* @drv, align 4
  %33 = call i32 @SMSC_WARN(%struct.smsc911x_data* %31, i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %96

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %20
  %37 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %38 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, -65536
  %41 = load i32, i32* @LAN9250, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @RESET_CTL, align 4
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @RESET_CTL_DIGITAL_RST_, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %43, %36
  %47 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %47, i32 %48, i32 %49)
  store i32 10, i32* %4, align 4
  br label %51

51:                                               ; preds = %65, %46
  %52 = call i32 @udelay(i32 10)
  %53 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %53, i32 %54)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = add i32 %57, -1
  store i32 %58, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %60, %56
  %66 = phi i1 [ false, %56 ], [ %64, %60 ]
  br i1 %66, label %51, label %67

67:                                               ; preds = %65
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %68, %69
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %75 = load i32, i32* @drv, align 4
  %76 = call i32 @SMSC_WARN(%struct.smsc911x_data* %74, i32 %75, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %96

79:                                               ; preds = %67
  %80 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %81 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 4
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %86 = call i32 @smsc911x_phy_enable_energy_detect(%struct.smsc911x_data* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %91 = load i32, i32* @drv, align 4
  %92 = call i32 @SMSC_WARN(%struct.smsc911x_data* %90, i32 %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %96

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %79
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %89, %73, %30, %15
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @smsc911x_phy_general_power_up(%struct.smsc911x_data*) #1

declare dso_local i32 @SMSC_WARN(%struct.smsc911x_data*, i32, i8*) #1

declare dso_local i32 @smsc911x_phy_disable_energy_detect(%struct.smsc911x_data*) #1

declare dso_local i32 @smsc911x_reg_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @smsc911x_phy_enable_energy_detect(%struct.smsc911x_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
