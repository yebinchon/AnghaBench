; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_mii_pd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmmii.c_bcmgenet_mii_pd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.device }
%struct.device = type { %struct.bcmgenet_platform_data* }
%struct.bcmgenet_platform_data = type { i64, i32, i32, i32, i64 }
%struct.phy_device = type { i64 }
%struct.fixed_phy_status = type { i32, i32, i32, i32, i32 }

@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@UNIMAC_MDIO_DRV_NAME = common dso_local global i8* null, align 8
@PHY_INTERFACE_MODE_MOCA = common dso_local global i64 0, align 8
@PHY_ID_FMT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to register PHY device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PHY_POLL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to register fixed PHY device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcmgenet_priv*)* @bcmgenet_mii_pd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmgenet_mii_pd_init(%struct.bcmgenet_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcmgenet_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.bcmgenet_platform_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.phy_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fixed_phy_status, align 4
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %3, align 8
  %12 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %13 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %struct.device* %15, %struct.device** %4, align 8
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load %struct.bcmgenet_platform_data*, %struct.bcmgenet_platform_data** %17, align 8
  store %struct.bcmgenet_platform_data* %18, %struct.bcmgenet_platform_data** %5, align 8
  %19 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %20 = add nsw i32 %19, 3
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %24 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %8, align 8
  %27 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %28 = load i8*, i8** @UNIMAC_MDIO_DRV_NAME, align 8
  %29 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %30 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @snprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %33)
  %35 = load %struct.bcmgenet_platform_data*, %struct.bcmgenet_platform_data** %5, align 8
  %36 = getelementptr inbounds %struct.bcmgenet_platform_data, %struct.bcmgenet_platform_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PHY_INTERFACE_MODE_MOCA, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %1
  %41 = load %struct.bcmgenet_platform_data*, %struct.bcmgenet_platform_data** %5, align 8
  %42 = getelementptr inbounds %struct.bcmgenet_platform_data, %struct.bcmgenet_platform_data* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %40
  %46 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %47 = load i8*, i8** @PHY_ID_FMT, align 8
  %48 = load %struct.bcmgenet_platform_data*, %struct.bcmgenet_platform_data** %5, align 8
  %49 = getelementptr inbounds %struct.bcmgenet_platform_data, %struct.bcmgenet_platform_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @snprintf(i8* %23, i32 %46, i8* %47, i8* %26, i32 %50)
  %52 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %53 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.bcmgenet_platform_data*, %struct.bcmgenet_platform_data** %5, align 8
  %56 = getelementptr inbounds %struct.bcmgenet_platform_data, %struct.bcmgenet_platform_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call %struct.phy_device* @phy_attach(i32 %54, i8* %23, i64 %57)
  store %struct.phy_device* %58, %struct.phy_device** %9, align 8
  %59 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %60 = icmp ne %struct.phy_device* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %45
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %101

66:                                               ; preds = %45
  br label %95

67:                                               ; preds = %40, %1
  %68 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %11, i32 0, i32 0
  store i32 1, i32* %68, align 4
  %69 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %11, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %11, i32 0, i32 2
  store i32 0, i32* %70, align 4
  %71 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %11, i32 0, i32 3
  %72 = load %struct.bcmgenet_platform_data*, %struct.bcmgenet_platform_data** %5, align 8
  %73 = getelementptr inbounds %struct.bcmgenet_platform_data, %struct.bcmgenet_platform_data* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %71, align 4
  %75 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %11, i32 0, i32 4
  %76 = load %struct.bcmgenet_platform_data*, %struct.bcmgenet_platform_data** %5, align 8
  %77 = getelementptr inbounds %struct.bcmgenet_platform_data, %struct.bcmgenet_platform_data* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %75, align 4
  %79 = load i32, i32* @PHY_POLL, align 4
  %80 = call %struct.phy_device* @fixed_phy_register(i32 %79, %struct.fixed_phy_status* %11, i32* null)
  store %struct.phy_device* %80, %struct.phy_device** %9, align 8
  %81 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %82 = icmp ne %struct.phy_device* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %67
  %84 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %85 = call i64 @IS_ERR(%struct.phy_device* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83, %67
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = call i32 @dev_err(%struct.device* %88, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %101

92:                                               ; preds = %83
  %93 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %94 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %92, %66
  %96 = load %struct.bcmgenet_platform_data*, %struct.bcmgenet_platform_data** %5, align 8
  %97 = getelementptr inbounds %struct.bcmgenet_platform_data, %struct.bcmgenet_platform_data* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %100 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %101

101:                                              ; preds = %95, %87, %61
  %102 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local %struct.phy_device* @phy_attach(i32, i8*, i64) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local %struct.phy_device* @fixed_phy_register(i32, %struct.fixed_phy_status*, i32*) #2

declare dso_local i64 @IS_ERR(%struct.phy_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
