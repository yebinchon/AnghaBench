; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_clocking.c_sja1105_rmii_clocking_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_clocking.c_sja1105_rmii_clocking_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Configuring RMII-%s clocking\0A\00", align 1
@XMII_MAC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"MAC\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"PHY\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*, i32, i64)* @sja1105_rmii_clocking_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_rmii_clocking_setup(%struct.sja1105_private* %0, i32 %1, i64 %2) #0 {
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
  %21 = call i32 @dev_dbg(%struct.device* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @XMII_MAC, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %27 = call i32 @sja1105_cgu_rmii_pll_config(%struct.sja1105_private* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %4, align 4
  br label %63

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %3
  %34 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @sja1105_cgu_idiv_config(%struct.sja1105_private* %34, i32 %35, i32 0, i32 1)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %63

41:                                               ; preds = %33
  %42 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @sja1105_cgu_rmii_ref_clk_config(%struct.sja1105_private* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %63

49:                                               ; preds = %41
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @XMII_MAC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @sja1105_cgu_rmii_ext_tx_clk_config(%struct.sja1105_private* %54, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %63

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %49
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %59, %47, %39, %30
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*) #1

declare dso_local i32 @sja1105_cgu_rmii_pll_config(%struct.sja1105_private*) #1

declare dso_local i32 @sja1105_cgu_idiv_config(%struct.sja1105_private*, i32, i32, i32) #1

declare dso_local i32 @sja1105_cgu_rmii_ref_clk_config(%struct.sja1105_private*, i32) #1

declare dso_local i32 @sja1105_cgu_rmii_ext_tx_clk_config(%struct.sja1105_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
