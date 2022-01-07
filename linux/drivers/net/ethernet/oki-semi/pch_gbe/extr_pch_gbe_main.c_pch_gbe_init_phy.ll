; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_init_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_init_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { %struct.TYPE_6__, %struct.net_device.1*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 (%struct.net_device*, i32, i32)*, i32, i32 (%struct.net_device.0*, i32, i32, i32)*, %struct.net_device.1* }
%struct.net_device = type opaque
%struct.net_device.0 = type opaque
%struct.net_device.1 = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PCH_GBE_PHY_REGS_LEN = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"phy_addr = %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@BMCR_ISOLATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pch_gbe_adapter*)* @pch_gbe_init_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_init_phy(%struct.pch_gbe_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pch_gbe_adapter*, align 8
  %4 = alloca %struct.net_device.1*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %3, align 8
  %8 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %8, i32 0, i32 1
  %10 = load %struct.net_device.1*, %struct.net_device.1** %9, align 8
  store %struct.net_device.1* %10, %struct.net_device.1** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %63, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @PCH_GBE_PHY_REGS_LEN, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %66

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %27

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  br label %25

25:                                               ; preds = %23, %22
  %26 = phi i32 [ 0, %22 ], [ %24, %23 ]
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi i32 [ 1, %18 ], [ %26, %25 ]
  %29 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.net_device.1*, %struct.net_device.1** %4, align 8
  %33 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MII_BMCR, align 4
  %38 = call i32 @pch_gbe_mdio_read(%struct.net_device.1* %32, i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.net_device.1*, %struct.net_device.1** %4, align 8
  %40 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MII_BMSR, align 4
  %45 = call i32 @pch_gbe_mdio_read(%struct.net_device.1* %39, i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.net_device.1*, %struct.net_device.1** %4, align 8
  %47 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MII_BMSR, align 4
  %52 = call i32 @pch_gbe_mdio_read(%struct.net_device.1* %46, i32 %50, i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 65535
  br i1 %54, label %62, label %55

55:                                               ; preds = %27
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58, %55
  br label %66

62:                                               ; preds = %58, %27
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %11

66:                                               ; preds = %61, %11
  %67 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 8
  %75 = load %struct.net_device.1*, %struct.net_device.1** %4, align 8
  %76 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @netdev_dbg(%struct.net_device.1* %75, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @PCH_GBE_PHY_REGS_LEN, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %66
  %85 = load i32, i32* @EAGAIN, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %147

87:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %119, %87
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @PCH_GBE_PHY_REGS_LEN, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %122

92:                                               ; preds = %88
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %93, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load %struct.net_device.1*, %struct.net_device.1** %4, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @MII_BMCR, align 4
  %103 = load i32, i32* @BMCR_ISOLATE, align 4
  %104 = call i32 @pch_gbe_mdio_write(%struct.net_device.1* %100, i32 %101, i32 %102, i32 %103)
  br label %118

105:                                              ; preds = %92
  %106 = load %struct.net_device.1*, %struct.net_device.1** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* @MII_BMCR, align 4
  %109 = call i32 @pch_gbe_mdio_read(%struct.net_device.1* %106, i32 %107, i32 %108)
  store i32 %109, i32* %6, align 4
  %110 = load %struct.net_device.1*, %struct.net_device.1** %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @MII_BMCR, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @BMCR_ISOLATE, align 4
  %115 = xor i32 %114, -1
  %116 = and i32 %113, %115
  %117 = call i32 @pch_gbe_mdio_write(%struct.net_device.1* %110, i32 %111, i32 %112, i32 %116)
  br label %118

118:                                              ; preds = %105, %99
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  br label %88

122:                                              ; preds = %88
  %123 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %124 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  store i32 31, i32* %125, align 4
  %126 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %127 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  store i32 31, i32* %128, align 8
  %129 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %130 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %129, i32 0, i32 1
  %131 = load %struct.net_device.1*, %struct.net_device.1** %130, align 8
  %132 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %133 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 6
  store %struct.net_device.1* %131, %struct.net_device.1** %134, align 8
  %135 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %136 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 3
  store i32 (%struct.net_device*, i32, i32)* bitcast (i32 (%struct.net_device.1*, i32, i32)* @pch_gbe_mdio_read to i32 (%struct.net_device*, i32, i32)*), i32 (%struct.net_device*, i32, i32)** %137, align 8
  %138 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %139 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 5
  store i32 (%struct.net_device.0*, i32, i32, i32)* bitcast (i32 (%struct.net_device.1*, i32, i32, i32)* @pch_gbe_mdio_write to i32 (%struct.net_device.0*, i32, i32, i32)*), i32 (%struct.net_device.0*, i32, i32, i32)** %140, align 8
  %141 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %142 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %141, i32 0, i32 0
  %143 = call i32 @mii_check_gmii_support(%struct.TYPE_6__* %142)
  %144 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %145 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 4
  store i32 %143, i32* %146, align 8
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %122, %84
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @pch_gbe_mdio_read(%struct.net_device.1*, i32, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device.1*, i8*, i32) #1

declare dso_local i32 @pch_gbe_mdio_write(%struct.net_device.1*, i32, i32, i32) #1

declare dso_local i32 @mii_check_gmii_support(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
