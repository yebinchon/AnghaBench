; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_clocking.c_sja1105_mii_clocking_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_clocking.c_sja1105_mii_clocking_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Configuring MII-%s clocking\0A\00", align 1
@XMII_MAC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"MAC\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"PHY\00", align 1
@XMII_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*, i32, i64)* @sja1105_mii_clocking_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_mii_clocking_setup(%struct.sja1105_private* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sja1105_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %11 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %8, align 8
  %15 = load %struct.device*, %struct.device** %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @XMII_MAC, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %21 = call i32 @dev_dbg(%struct.device* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @XMII_PHY, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @sja1105_cgu_idiv_config(%struct.sja1105_private* %22, i32 %23, i32 %27, i32 1)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %72

33:                                               ; preds = %3
  %34 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @sja1105_cgu_mii_tx_clk_config(%struct.sja1105_private* %34, i32 %35, i64 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %72

42:                                               ; preds = %33
  %43 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @sja1105_cgu_mii_rx_clk_config(%struct.sja1105_private* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %72

50:                                               ; preds = %42
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @XMII_PHY, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @sja1105_cgu_mii_ext_tx_clk_config(%struct.sja1105_private* %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %4, align 4
  br label %72

62:                                               ; preds = %54
  %63 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @sja1105_cgu_mii_ext_rx_clk_config(%struct.sja1105_private* %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %72

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %50
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %71, %68, %60, %48, %40, %31
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*) #1

declare dso_local i32 @sja1105_cgu_idiv_config(%struct.sja1105_private*, i32, i32, i32) #1

declare dso_local i32 @sja1105_cgu_mii_tx_clk_config(%struct.sja1105_private*, i32, i64) #1

declare dso_local i32 @sja1105_cgu_mii_rx_clk_config(%struct.sja1105_private*, i32) #1

declare dso_local i32 @sja1105_cgu_mii_ext_tx_clk_config(%struct.sja1105_private*, i32) #1

declare dso_local i32 @sja1105_cgu_mii_ext_rx_clk_config(%struct.sja1105_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
