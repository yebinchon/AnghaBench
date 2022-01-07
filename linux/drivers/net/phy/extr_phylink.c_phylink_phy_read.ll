; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_phy_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_phy_read.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phylink*, i32, i32)* @phylink_phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phylink_phy_read(%struct.phylink* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phylink*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.phy_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.phylink* %0, %struct.phylink** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.phylink*, %struct.phylink** %5, align 8
  %12 = getelementptr inbounds %struct.phylink, %struct.phylink* %11, i32 0, i32 0
  %13 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  store %struct.phy_device* %13, %struct.phy_device** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @mdio_phy_id_is_c45(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @mdio_phy_id_prtad(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @mdio_phy_id_devad(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @MII_ADDR_C45, align 4
  %23 = load i32, i32* %10, align 4
  %24 = shl i32 %23, 16
  %25 = or i32 %22, %24
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %10, align 4
  br label %76

28:                                               ; preds = %3
  %29 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %61 [
    i32 132, label %35
    i32 131, label %35
    i32 129, label %35
    i32 128, label %35
    i32 133, label %41
    i32 130, label %41
  ]

35:                                               ; preds = %33, %33, %33, %33
  %36 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @__ffs(i32 %39)
  store i32 %40, i32* %10, align 4
  br label %64

41:                                               ; preds = %33, %33
  %42 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %43 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MDIO_DEVS_AN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %86

52:                                               ; preds = %41
  %53 = load i32, i32* @MDIO_MMD_AN, align 4
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 133
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @MDIO_AN_ADVERTISE, align 4
  store i32 %57, i32* %7, align 4
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @MDIO_AN_LPA, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %58, %56
  br label %64

61:                                               ; preds = %33
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %86

64:                                               ; preds = %60, %35
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* @MII_ADDR_C45, align 4
  %67 = load i32, i32* %10, align 4
  %68 = shl i32 %67, 16
  %69 = or i32 %66, %68
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %10, align 4
  br label %75

72:                                               ; preds = %28
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %72, %64
  br label %76

76:                                               ; preds = %75, %17
  %77 = load %struct.phylink*, %struct.phylink** %5, align 8
  %78 = getelementptr inbounds %struct.phylink, %struct.phylink* %77, i32 0, i32 0
  %79 = load %struct.phy_device*, %struct.phy_device** %78, align 8
  %80 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @mdiobus_read(i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %76, %61, %49
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i64 @mdio_phy_id_is_c45(i32) #1

declare dso_local i32 @mdio_phy_id_prtad(i32) #1

declare dso_local i32 @mdio_phy_id_devad(i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @mdiobus_read(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
