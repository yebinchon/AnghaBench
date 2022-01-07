; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c_lpc_mii_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c_lpc_mii_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdata_local = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i8*, i32*, %struct.netdata_local*, i32, i32*, i32*, i32* }
%struct.TYPE_7__ = type { i8*, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i64 0, align 8
@LPC_COMMAND_PASSRUNTFRAME = common dso_local global i32 0, align 4
@LPC_COMMAND_RMII = common dso_local global i32 0, align 4
@LPC_SUPP_RESET_RMII = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"lpc_mii_bus\00", align 1
@lpc_mdio_read = common dso_local global i32 0, align 4
@lpc_mdio_write = common dso_local global i32 0, align 4
@lpc_mdio_reset = common dso_local global i32 0, align 4
@MII_BUS_ID_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s-%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netdata_local*)* @lpc_mii_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc_mii_init(%struct.netdata_local* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netdata_local*, align 8
  %4 = alloca i32, align 4
  store %struct.netdata_local* %0, %struct.netdata_local** %3, align 8
  %5 = load i32, i32* @ENXIO, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = call %struct.TYPE_8__* (...) @mdiobus_alloc()
  %8 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %9 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %8, i32 0, i32 0
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %9, align 8
  %10 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %11 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %124

17:                                               ; preds = %1
  %18 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %19 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = call i64 @lpc_phy_interface_mode(i32* %21)
  %23 = load i64, i64* @PHY_INTERFACE_MODE_MII, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load i32, i32* @LPC_COMMAND_PASSRUNTFRAME, align 4
  %27 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %28 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @LPC_ENET_COMMAND(i32 %29)
  %31 = call i32 @writel(i32 %26, i32 %30)
  br label %47

32:                                               ; preds = %17
  %33 = load i32, i32* @LPC_COMMAND_PASSRUNTFRAME, align 4
  %34 = load i32, i32* @LPC_COMMAND_RMII, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %37 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @LPC_ENET_COMMAND(i32 %38)
  %40 = call i32 @writel(i32 %35, i32 %39)
  %41 = load i32, i32* @LPC_SUPP_RESET_RMII, align 4
  %42 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %43 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @LPC_ENET_SUPP(i32 %44)
  %46 = call i32 @writel(i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %32, %25
  %48 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %49 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %51, align 8
  %52 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %53 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 6
  store i32* @lpc_mdio_read, i32** %55, align 8
  %56 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %57 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %56, i32 0, i32 0
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 5
  store i32* @lpc_mdio_write, i32** %59, align 8
  %60 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %61 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 4
  store i32* @lpc_mdio_reset, i32** %63, align 8
  %64 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %65 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MII_BUS_ID_SIZE, align 4
  %70 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %71 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %70, i32 0, i32 2
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %76 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %75, i32 0, i32 2
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @snprintf(i32 %68, i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %74, i32 %79)
  %81 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %82 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %83 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  store %struct.netdata_local* %81, %struct.netdata_local** %85, align 8
  %86 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %87 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %86, i32 0, i32 2
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %91 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %90, i32 0, i32 0
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i32* %89, i32** %93, align 8
  %94 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %95 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %94, i32 0, i32 2
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %98 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = call i32 @platform_set_drvdata(%struct.TYPE_7__* %96, %struct.TYPE_8__* %99)
  %101 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %102 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %101, i32 0, i32 0
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = call i64 @mdiobus_register(%struct.TYPE_8__* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %47
  br label %115

107:                                              ; preds = %47
  %108 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %109 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @lpc_mii_probe(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %115

114:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %126

115:                                              ; preds = %113, %106
  %116 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %117 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = call i32 @mdiobus_unregister(%struct.TYPE_8__* %118)
  %120 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %121 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %120, i32 0, i32 0
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = call i32 @mdiobus_free(%struct.TYPE_8__* %122)
  br label %124

124:                                              ; preds = %115, %14
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %124, %114
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.TYPE_8__* @mdiobus_alloc(...) #1

declare dso_local i64 @lpc_phy_interface_mode(i32*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @LPC_ENET_COMMAND(i32) #1

declare dso_local i32 @LPC_ENET_SUPP(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i64 @mdiobus_register(%struct.TYPE_8__*) #1

declare dso_local i64 @lpc_mii_probe(i32) #1

declare dso_local i32 @mdiobus_unregister(%struct.TYPE_8__*) #1

declare dso_local i32 @mdiobus_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
