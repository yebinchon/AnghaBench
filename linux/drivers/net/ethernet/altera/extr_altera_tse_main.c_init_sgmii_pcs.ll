; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_init_sgmii_pcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_tse_main.c_init_sgmii_pcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.altera_tse_private = type { i64 }

@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"PCS PHY ID: 0x%04x%04x\0A\00", align 1
@MII_PHYSID1 = common dso_local global i32 0, align 4
@MII_PHYSID2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"SGMII PCS Scratch memory test failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SGMII_PCS_LINK_TIMER_0 = common dso_local global i32 0, align 4
@SGMII_PCS_LINK_TIMER_1 = common dso_local global i32 0, align 4
@SGMII_PCS_IF_MODE = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@SGMII_PCS_SW_RESET_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"SGMII PCS block initialised OK\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"SGMII PCS block reset failed.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @init_sgmii_pcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_sgmii_pcs(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.altera_tse_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.altera_tse_private* @netdev_priv(%struct.net_device* %7)
  store %struct.altera_tse_private* %8, %struct.altera_tse_private** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %10 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %100

15:                                               ; preds = %1
  %16 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %17 = call i64 @sgmii_pcs_scratch_test(%struct.altera_tse_private* %16, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %21 = call i64 @sgmii_pcs_scratch_test(%struct.altera_tse_private* %20, i32 65535)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %25 = call i64 @sgmii_pcs_scratch_test(%struct.altera_tse_private* %24, i32 42405)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %29 = call i64 @sgmii_pcs_scratch_test(%struct.altera_tse_private* %28, i32 23130)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %34 = load i32, i32* @MII_PHYSID1, align 4
  %35 = call i32 @sgmii_pcs_read(%struct.altera_tse_private* %33, i32 %34)
  %36 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %37 = load i32, i32* @MII_PHYSID2, align 4
  %38 = call i32 @sgmii_pcs_read(%struct.altera_tse_private* %36, i32 %37)
  %39 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  br label %45

40:                                               ; preds = %27, %23, %19, %15
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @netdev_err(%struct.net_device* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %100

45:                                               ; preds = %31
  %46 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %47 = load i32, i32* @SGMII_PCS_LINK_TIMER_0, align 4
  %48 = call i32 @sgmii_pcs_write(%struct.altera_tse_private* %46, i32 %47, i32 3392)
  %49 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %50 = load i32, i32* @SGMII_PCS_LINK_TIMER_1, align 4
  %51 = call i32 @sgmii_pcs_write(%struct.altera_tse_private* %49, i32 %50, i32 3)
  %52 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %53 = load i32, i32* @SGMII_PCS_IF_MODE, align 4
  %54 = call i32 @sgmii_pcs_write(%struct.altera_tse_private* %52, i32 %53, i32 3)
  %55 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %56 = load i32, i32* @MII_BMCR, align 4
  %57 = call i32 @sgmii_pcs_read(%struct.altera_tse_private* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* @BMCR_SPEED1000, align 4
  %59 = load i32, i32* @BMCR_FULLDPLX, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @BMCR_ANENABLE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %66 = load i32, i32* @MII_BMCR, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @sgmii_pcs_write(%struct.altera_tse_private* %65, i32 %66, i32 %67)
  %69 = load i32, i32* @BMCR_RESET, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %73 = load i32, i32* @MII_BMCR, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @sgmii_pcs_write(%struct.altera_tse_private* %72, i32 %73, i32 %74)
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %92, %45
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @SGMII_PCS_SW_RESET_TIMEOUT, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %76
  %81 = load %struct.altera_tse_private*, %struct.altera_tse_private** %4, align 8
  %82 = load i32, i32* @MII_BMCR, align 4
  %83 = call i32 @sgmii_pcs_read(%struct.altera_tse_private* %81, i32 %82)
  %84 = load i32, i32* @BMCR_RESET, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %80
  %88 = load %struct.net_device*, %struct.net_device** %3, align 8
  %89 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %88, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %100

90:                                               ; preds = %80
  %91 = call i32 @udelay(i32 1)
  br label %92

92:                                               ; preds = %90
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %76

95:                                               ; preds = %76
  %96 = load %struct.net_device*, %struct.net_device** %3, align 8
  %97 = call i32 @netdev_err(%struct.net_device* %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* @ETIMEDOUT, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %95, %87, %40, %14
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.altera_tse_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @sgmii_pcs_scratch_test(%struct.altera_tse_private*, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @sgmii_pcs_read(%struct.altera_tse_private*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @sgmii_pcs_write(%struct.altera_tse_private*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
