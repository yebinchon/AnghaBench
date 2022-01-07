; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_wait_for_autoneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_wait_for_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encx24j600_priv = type { i64, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@PHSTAT1 = common dso_local global i32 0, align 4
@ANDONE = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"timeout waiting for autoneg done\0A\00", align 1
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@PHSTAT3 = common dso_local global i32 0, align 4
@PHY3SPD100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@PHY3DPX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Using parallel detection: %s/%s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ESTAT = common dso_local global i32 0, align 4
@PHYDPX = common dso_local global i32 0, align 4
@MACON2 = common dso_local global i32 0, align 4
@FULDPX = common dso_local global i32 0, align 4
@MABBIPG = common dso_local global i32 0, align 4
@MACLCON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.encx24j600_priv*)* @encx24j600_wait_for_autoneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encx24j600_wait_for_autoneg(%struct.encx24j600_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.encx24j600_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.encx24j600_priv* %0, %struct.encx24j600_priv** %3, align 8
  %10 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %11 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %10, i32 0, i32 3
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load i64, i64* @jiffies, align 8
  %14 = call i64 @msecs_to_jiffies(i32 2000)
  %15 = add i64 %13, %14
  store i64 %15, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %17 = load i32, i32* @PHSTAT1, align 4
  %18 = call i32 @encx24j600_read_phy(%struct.encx24j600_priv* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %81, %1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @ANDONE, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %86

24:                                               ; preds = %19
  %25 = load i64, i64* @jiffies, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @time_after(i64 %25, i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %81

29:                                               ; preds = %24
  %30 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %31 = load i32, i32* @drv, align 4
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = call i32 (%struct.encx24j600_priv*, i32, %struct.net_device*, i8*, ...) @netif_notice(%struct.encx24j600_priv* %30, i32 %31, %struct.net_device* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @AUTONEG_DISABLE, align 4
  %35 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %36 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %38 = load i32, i32* @PHSTAT3, align 4
  %39 = call i32 @encx24j600_read_phy(%struct.encx24j600_priv* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @PHY3SPD100, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load i64, i64* @SPEED_100, align 8
  br label %48

46:                                               ; preds = %29
  %47 = load i64, i64* @SPEED_10, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i64 [ %45, %44 ], [ %47, %46 ]
  %50 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %51 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @PHY3DPX, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %59 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %61 = call i32 @encx24j600_update_phcon1(%struct.encx24j600_priv* %60)
  %62 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %63 = load i32, i32* @drv, align 4
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %66 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SPEED_100, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %72 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %73 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)
  %78 = call i32 (%struct.encx24j600_priv*, i32, %struct.net_device*, i8*, ...) @netif_notice(%struct.encx24j600_priv* %62, i32 %63, %struct.net_device* %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %71, i8* %77)
  %79 = load i32, i32* @ETIMEDOUT, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %115

81:                                               ; preds = %24
  %82 = call i32 (...) @cpu_relax()
  %83 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %84 = load i32, i32* @PHSTAT1, align 4
  %85 = call i32 @encx24j600_read_phy(%struct.encx24j600_priv* %83, i32 %84)
  store i32 %85, i32* %6, align 4
  br label %19

86:                                               ; preds = %19
  %87 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %88 = load i32, i32* @ESTAT, align 4
  %89 = call i32 @encx24j600_read_reg(%struct.encx24j600_priv* %87, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @PHYDPX, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %86
  %95 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %96 = load i32, i32* @MACON2, align 4
  %97 = load i32, i32* @FULDPX, align 4
  %98 = call i32 @encx24j600_set_bits(%struct.encx24j600_priv* %95, i32 %96, i32 %97)
  %99 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %100 = load i32, i32* @MABBIPG, align 4
  %101 = call i32 @encx24j600_write_reg(%struct.encx24j600_priv* %99, i32 %100, i32 21)
  br label %113

102:                                              ; preds = %86
  %103 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %104 = load i32, i32* @MACON2, align 4
  %105 = load i32, i32* @FULDPX, align 4
  %106 = call i32 @encx24j600_clr_bits(%struct.encx24j600_priv* %103, i32 %104, i32 %105)
  %107 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %108 = load i32, i32* @MABBIPG, align 4
  %109 = call i32 @encx24j600_write_reg(%struct.encx24j600_priv* %107, i32 %108, i32 18)
  %110 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %3, align 8
  %111 = load i32, i32* @MACLCON, align 4
  %112 = call i32 @encx24j600_write_reg(%struct.encx24j600_priv* %110, i32 %111, i32 14095)
  br label %113

113:                                              ; preds = %102, %94
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %113, %48
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @encx24j600_read_phy(%struct.encx24j600_priv*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @netif_notice(%struct.encx24j600_priv*, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @encx24j600_update_phcon1(%struct.encx24j600_priv*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @encx24j600_read_reg(%struct.encx24j600_priv*, i32) #1

declare dso_local i32 @encx24j600_set_bits(%struct.encx24j600_priv*, i32, i32) #1

declare dso_local i32 @encx24j600_write_reg(%struct.encx24j600_priv*, i32, i32) #1

declare dso_local i32 @encx24j600_clr_bits(%struct.encx24j600_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
