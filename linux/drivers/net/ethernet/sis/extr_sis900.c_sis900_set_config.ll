; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis900.c_sis900_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis900.c_sis900_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifmap = type { i32 }
%struct.sis900_private = type { %struct.mii_phy* }
%struct.mii_phy = type { i32 }

@MII_CONTROL = common dso_local global i32 0, align 4
@MII_CNTL_AUTO = common dso_local global i32 0, align 4
@MII_CNTL_RST_AUTO = common dso_local global i32 0, align 4
@MII_CNTL_SPEED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifmap*)* @sis900_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis900_set_config(%struct.net_device* %0, %struct.ifmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifmap*, align 8
  %6 = alloca %struct.sis900_private*, align 8
  %7 = alloca %struct.mii_phy*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifmap* %1, %struct.ifmap** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.sis900_private* @netdev_priv(%struct.net_device* %9)
  store %struct.sis900_private* %10, %struct.sis900_private** %6, align 8
  %11 = load %struct.sis900_private*, %struct.sis900_private** %6, align 8
  %12 = getelementptr inbounds %struct.sis900_private, %struct.sis900_private* %11, i32 0, i32 0
  %13 = load %struct.mii_phy*, %struct.mii_phy** %12, align 8
  store %struct.mii_phy* %13, %struct.mii_phy** %7, align 8
  %14 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %15 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %114

18:                                               ; preds = %2
  %19 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %20 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %114

26:                                               ; preds = %18
  %27 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %28 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %110 [
    i32 128, label %30
    i32 130, label %55
    i32 133, label %81
    i32 132, label %81
    i32 131, label %107
    i32 129, label %107
    i32 134, label %107
  ]

30:                                               ; preds = %26
  %31 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %32 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i32 @netif_carrier_off(%struct.net_device* %36)
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = load %struct.mii_phy*, %struct.mii_phy** %7, align 8
  %40 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MII_CONTROL, align 4
  %43 = call i32 @mdio_read(%struct.net_device* %38, i32 %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = load %struct.mii_phy*, %struct.mii_phy** %7, align 8
  %46 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MII_CONTROL, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @MII_CNTL_AUTO, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @MII_CNTL_RST_AUTO, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @mdio_write(%struct.net_device* %44, i32 %47, i32 %48, i32 %53)
  br label %113

55:                                               ; preds = %26
  %56 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %57 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = call i32 @netif_carrier_off(%struct.net_device* %61)
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = load %struct.mii_phy*, %struct.mii_phy** %7, align 8
  %65 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @MII_CONTROL, align 4
  %68 = call i32 @mdio_read(%struct.net_device* %63, i32 %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load %struct.net_device*, %struct.net_device** %4, align 8
  %70 = load %struct.mii_phy*, %struct.mii_phy** %7, align 8
  %71 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @MII_CONTROL, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @MII_CNTL_SPEED, align 4
  %76 = load i32, i32* @MII_CNTL_AUTO, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = and i32 %74, %78
  %80 = call i32 @mdio_write(%struct.net_device* %69, i32 %72, i32 %73, i32 %79)
  br label %113

81:                                               ; preds = %26, %26
  %82 = load %struct.ifmap*, %struct.ifmap** %5, align 8
  %83 = getelementptr inbounds %struct.ifmap, %struct.ifmap* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.net_device*, %struct.net_device** %4, align 8
  %88 = call i32 @netif_carrier_off(%struct.net_device* %87)
  %89 = load %struct.net_device*, %struct.net_device** %4, align 8
  %90 = load %struct.mii_phy*, %struct.mii_phy** %7, align 8
  %91 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @MII_CONTROL, align 4
  %94 = call i32 @mdio_read(%struct.net_device* %89, i32 %92, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = load %struct.mii_phy*, %struct.mii_phy** %7, align 8
  %97 = getelementptr inbounds %struct.mii_phy, %struct.mii_phy* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @MII_CONTROL, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @MII_CNTL_SPEED, align 4
  %102 = xor i32 %101, -1
  %103 = and i32 %100, %102
  %104 = load i32, i32* @MII_CNTL_SPEED, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @mdio_write(%struct.net_device* %95, i32 %98, i32 %99, i32 %105)
  br label %113

107:                                              ; preds = %26, %26, %26
  %108 = load i32, i32* @EOPNOTSUPP, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %115

110:                                              ; preds = %26
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %115

113:                                              ; preds = %81, %55, %30
  br label %114

114:                                              ; preds = %113, %18, %2
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %110, %107
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local %struct.sis900_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @mdio_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @mdio_write(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
