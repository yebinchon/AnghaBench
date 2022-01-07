; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.lan9303* }
%struct.lan9303 = type { i32, i32 }
%struct.phy_device = type { i64, i64 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"unsupported speed: %d\0A\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@LAN9303_VIRT_SPECIAL_CTRL = common dso_local global i32 0, align 4
@LAN9303_VIRT_SPECIAL_TURBO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, %struct.phy_device*)* @lan9303_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan9303_adjust_link(%struct.dsa_switch* %0, i32 %1, %struct.phy_device* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca %struct.lan9303*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.phy_device* %2, %struct.phy_device** %6, align 8
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %11 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %10, i32 0, i32 1
  %12 = load %struct.lan9303*, %struct.lan9303** %11, align 8
  store %struct.lan9303* %12, %struct.lan9303** %7, align 8
  %13 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %14 = call i32 @phy_is_pseudo_fixed_link(%struct.phy_device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %97

17:                                               ; preds = %3
  %18 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MII_BMCR, align 4
  %21 = call i32 @lan9303_phy_read(%struct.dsa_switch* %18, i32 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @BMCR_ANENABLE, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %8, align 4
  %26 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %27 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SPEED_100, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %17
  %32 = load i32, i32* @BMCR_SPEED100, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %55

35:                                               ; preds = %17
  %36 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SPEED_10, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i32, i32* @BMCR_SPEED100, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %54

46:                                               ; preds = %35
  %47 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %48 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %51 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %52)
  br label %54

54:                                               ; preds = %46, %41
  br label %55

55:                                               ; preds = %54, %31
  %56 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %57 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DUPLEX_FULL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i32, i32* @BMCR_FULLDPLX, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %70

65:                                               ; preds = %55
  %66 = load i32, i32* @BMCR_FULLDPLX, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %65, %61
  %71 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @MII_BMCR, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @lan9303_phy_write(%struct.dsa_switch* %71, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.lan9303*, %struct.lan9303** %7, align 8
  %78 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %70
  %82 = load %struct.lan9303*, %struct.lan9303** %7, align 8
  %83 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @LAN9303_VIRT_SPECIAL_CTRL, align 4
  %86 = call i32 @lan9303_read(i32 %84, i32 %85, i32* %8)
  %87 = load i32, i32* @LAN9303_VIRT_SPECIAL_TURBO, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %8, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %8, align 4
  %91 = load %struct.lan9303*, %struct.lan9303** %7, align 8
  %92 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @LAN9303_VIRT_SPECIAL_CTRL, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @regmap_write(i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %16, %81, %70
  ret void
}

declare dso_local i32 @phy_is_pseudo_fixed_link(%struct.phy_device*) #1

declare dso_local i32 @lan9303_phy_read(%struct.dsa_switch*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @lan9303_phy_write(%struct.dsa_switch*, i32, i32, i32) #1

declare dso_local i32 @lan9303_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
