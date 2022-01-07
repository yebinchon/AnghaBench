; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_phy_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { %struct.phy_device* }
%struct.phy_device = type { %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MII_ADDR_C45 = common dso_local global i32 0, align 4
@MDIO_DEVS_AN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_ADVERTISE = common dso_local global i32 0, align 4
@MDIO_AN_LPA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phylink*, i32, i32, i32)* @phylink_phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phylink_phy_write(%struct.phylink* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.phylink*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.phy_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.phylink* %0, %struct.phylink** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.phylink*, %struct.phylink** %6, align 8
  %14 = getelementptr inbounds %struct.phylink, %struct.phylink* %13, i32 0, i32 0
  %15 = load %struct.phy_device*, %struct.phy_device** %14, align 8
  store %struct.phy_device* %15, %struct.phy_device** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @mdio_phy_id_is_c45(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @mdio_phy_id_prtad(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @mdio_phy_id_devad(i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* @MII_ADDR_C45, align 4
  %25 = load i32, i32* %12, align 4
  %26 = shl i32 %25, 16
  %27 = or i32 %24, %26
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %12, align 4
  br label %78

30:                                               ; preds = %4
  %31 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  %32 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %74

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  switch i32 %36, label %63 [
    i32 132, label %37
    i32 131, label %37
    i32 129, label %37
    i32 128, label %37
    i32 133, label %43
    i32 130, label %43
  ]

37:                                               ; preds = %35, %35, %35, %35
  %38 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  %39 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__ffs(i32 %41)
  store i32 %42, i32* %12, align 4
  br label %66

43:                                               ; preds = %35, %35
  %44 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  %45 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MDIO_DEVS_AN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %87

54:                                               ; preds = %43
  %55 = load i32, i32* @MDIO_MMD_AN, align 4
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 133
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @MDIO_AN_ADVERTISE, align 4
  store i32 %59, i32* %8, align 4
  br label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @MDIO_AN_LPA, align 4
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %60, %58
  br label %66

63:                                               ; preds = %35
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %87

66:                                               ; preds = %62, %37
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* @MII_ADDR_C45, align 4
  %69 = load i32, i32* %12, align 4
  %70 = shl i32 %69, 16
  %71 = or i32 %68, %70
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %12, align 4
  br label %77

74:                                               ; preds = %30
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %12, align 4
  br label %77

77:                                               ; preds = %74, %66
  br label %78

78:                                               ; preds = %77, %19
  %79 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  %80 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @mdiobus_write(i32 %82, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %78, %63, %51
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i64 @mdio_phy_id_is_c45(i32) #1

declare dso_local i32 @mdio_phy_id_prtad(i32) #1

declare dso_local i32 @mdio_phy_id_devad(i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @mdiobus_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
