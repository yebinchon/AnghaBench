; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_mdio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_mdio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.greth_private = type { i32, %struct.TYPE_5__*, %struct.net_device*, i64 }
%struct.TYPE_5__ = type { i8*, %struct.greth_private*, i32, i32, i32 }
%struct.net_device = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"greth-mdio\00", align 1
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%d\00", align 1
@greth_mdio_read = common dso_local global i32 0, align 4
@greth_mdio_write = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to probe MDIO bus\0A\00", align 1
@greth_edcl = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.greth_private*)* @greth_mdio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @greth_mdio_init(%struct.greth_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.greth_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.greth_private* %0, %struct.greth_private** %3, align 8
  %7 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %8 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %7, i32 0, i32 2
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %6, align 8
  %10 = call %struct.TYPE_5__* (...) @mdiobus_alloc()
  %11 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %12 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %11, i32 0, i32 1
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %12, align 8
  %13 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %14 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %137

20:                                               ; preds = %1
  %21 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %22 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %25 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %26 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %31 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %32 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %37 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @snprintf(i32 %29, i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %38)
  %40 = load i32, i32* @greth_mdio_read, align 4
  %41 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %42 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* @greth_mdio_write, align 4
  %46 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %47 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32 %45, i32* %49, align 8
  %50 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %51 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %52 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store %struct.greth_private* %50, %struct.greth_private** %54, align 8
  %55 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %56 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = call i32 @mdiobus_register(%struct.TYPE_5__* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %20
  br label %131

62:                                               ; preds = %20
  %63 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %64 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %63, i32 0, i32 2
  %65 = load %struct.net_device*, %struct.net_device** %64, align 8
  %66 = call i32 @greth_mdio_probe(%struct.net_device* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %62
  %70 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %71 = call i64 @netif_msg_probe(%struct.greth_private* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %75 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %74, i32 0, i32 2
  %76 = load %struct.net_device*, %struct.net_device** %75, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 1
  %78 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %79

79:                                               ; preds = %73, %69
  br label %126

80:                                               ; preds = %62
  %81 = load %struct.net_device*, %struct.net_device** %6, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @phy_start(i32 %83)
  %85 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %86 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %125

89:                                               ; preds = %80
  %90 = load i32, i32* @greth_edcl, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %125

92:                                               ; preds = %89
  %93 = load %struct.net_device*, %struct.net_device** %6, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @phy_start_aneg(i32 %95)
  %97 = load i32, i32* @jiffies, align 4
  %98 = load i32, i32* @HZ, align 4
  %99 = mul nsw i32 6, %98
  %100 = add nsw i32 %97, %99
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %5, align 8
  br label %102

102:                                              ; preds = %115, %92
  %103 = load %struct.net_device*, %struct.net_device** %6, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @phy_aneg_done(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* @jiffies, align 4
  %110 = load i64, i64* %5, align 8
  %111 = call i64 @time_before(i32 %109, i64 %110)
  %112 = icmp ne i64 %111, 0
  br label %113

113:                                              ; preds = %108, %102
  %114 = phi i1 [ false, %102 ], [ %112, %108 ]
  br i1 %114, label %115, label %116

115:                                              ; preds = %113
  br label %102

116:                                              ; preds = %113
  %117 = load %struct.net_device*, %struct.net_device** %6, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @phy_read_status(i32 %119)
  %121 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %122 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %121, i32 0, i32 2
  %123 = load %struct.net_device*, %struct.net_device** %122, align 8
  %124 = call i32 @greth_link_change(%struct.net_device* %123)
  br label %125

125:                                              ; preds = %116, %89, %80
  store i32 0, i32* %2, align 4
  br label %137

126:                                              ; preds = %79
  %127 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %128 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %127, i32 0, i32 1
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = call i32 @mdiobus_unregister(%struct.TYPE_5__* %129)
  br label %131

131:                                              ; preds = %126, %61
  %132 = load %struct.greth_private*, %struct.greth_private** %3, align 8
  %133 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %132, i32 0, i32 1
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = call i32 @mdiobus_free(%struct.TYPE_5__* %134)
  %136 = load i32, i32* %4, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %131, %125, %17
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local %struct.TYPE_5__* @mdiobus_alloc(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @mdiobus_register(%struct.TYPE_5__*) #1

declare dso_local i32 @greth_mdio_probe(%struct.net_device*) #1

declare dso_local i64 @netif_msg_probe(%struct.greth_private*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @phy_start_aneg(i32) #1

declare dso_local i32 @phy_aneg_done(i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @phy_read_status(i32) #1

declare dso_local i32 @greth_link_change(%struct.net_device*) #1

declare dso_local i32 @mdiobus_unregister(%struct.TYPE_5__*) #1

declare dso_local i32 @mdiobus_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
