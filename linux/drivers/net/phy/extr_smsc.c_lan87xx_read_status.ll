; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_smsc.c_lan87xx_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_smsc.c_lan87xx_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, %struct.smsc_phy_priv* }
%struct.smsc_phy_priv = type { i64 }

@MII_LAN83C185_CTRL_STATUS = common dso_local global i32 0, align 4
@MII_LAN83C185_EDPWRDOWN = common dso_local global i32 0, align 4
@MII_LAN83C185_ENERGYON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @lan87xx_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan87xx_read_status(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.smsc_phy_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %8 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %9 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %8, i32 0, i32 1
  %10 = load %struct.smsc_phy_priv*, %struct.smsc_phy_priv** %9, align 8
  store %struct.smsc_phy_priv* %10, %struct.smsc_phy_priv** %4, align 8
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = call i32 @genphy_read_status(%struct.phy_device* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %85, label %17

17:                                               ; preds = %1
  %18 = load %struct.smsc_phy_priv*, %struct.smsc_phy_priv** %4, align 8
  %19 = getelementptr inbounds %struct.smsc_phy_priv, %struct.smsc_phy_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %85

22:                                               ; preds = %17
  %23 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %24 = load i32, i32* @MII_LAN83C185_CTRL_STATUS, align 4
  %25 = call i32 @phy_read(%struct.phy_device* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %87

30:                                               ; preds = %22
  %31 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %32 = load i32, i32* @MII_LAN83C185_CTRL_STATUS, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @MII_LAN83C185_EDPWRDOWN, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 @phy_write(%struct.phy_device* %31, i32 %32, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %87

42:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %62, %42
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 64
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  %47 = call i32 @msleep(i32 10)
  %48 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %49 = load i32, i32* @MII_LAN83C185_CTRL_STATUS, align 4
  %50 = call i32 @phy_read(%struct.phy_device* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %87

55:                                               ; preds = %46
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @MII_LAN83C185_ENERGYON, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %65

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %43

65:                                               ; preds = %60, %43
  %66 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %67 = load i32, i32* @MII_LAN83C185_CTRL_STATUS, align 4
  %68 = call i32 @phy_read(%struct.phy_device* %66, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %2, align 4
  br label %87

73:                                               ; preds = %65
  %74 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %75 = load i32, i32* @MII_LAN83C185_CTRL_STATUS, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @MII_LAN83C185_EDPWRDOWN, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @phy_write(%struct.phy_device* %74, i32 %75, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* %7, align 4
  store i32 %83, i32* %2, align 4
  br label %87

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %17, %1
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %82, %71, %53, %40, %28
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @genphy_read_status(%struct.phy_device*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
