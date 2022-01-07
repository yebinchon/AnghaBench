; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_i2c_mdio_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_i2c_mdio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_phy_i2c_mdio_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_i2c_mdio_reset(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_phy_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %10 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %9, i32 0, i32 0
  %11 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %10, align 8
  store %struct.xgbe_phy_data* %11, %struct.xgbe_phy_data** %4, align 8
  store i32 2, i32* %5, align 4
  %12 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %13 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %14 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %17 = call i32 @xgbe_phy_i2c_read(%struct.xgbe_prv_data* %12, i32 %15, i32* %5, i32 4, i32* %16, i32 8)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %2, align 4
  br label %96

22:                                               ; preds = %1
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 2, i32* %23, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 %28, i32* %29, align 4
  %30 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %31 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %43

34:                                               ; preds = %22
  %35 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %36 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = srem i32 %37, 8
  %39 = shl i32 1, %38
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %52

43:                                               ; preds = %22
  %44 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %45 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = srem i32 %46, 8
  %48 = shl i32 1, %47
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %43, %34
  %53 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %54 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %55 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %58 = call i32 @xgbe_phy_i2c_write(%struct.xgbe_prv_data* %53, i32 %56, i32* %57, i32 12)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  br label %96

63:                                               ; preds = %52
  %64 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %65 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %66, 8
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %70 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = srem i32 %71, 8
  %73 = shl i32 1, %72
  %74 = xor i32 %73, -1
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, %74
  store i32 %77, i32* %75, align 4
  br label %88

78:                                               ; preds = %63
  %79 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %80 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = srem i32 %81, 8
  %83 = shl i32 1, %82
  %84 = xor i32 %83, -1
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %78, %68
  %89 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %90 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %91 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %94 = call i32 @xgbe_phy_i2c_write(%struct.xgbe_prv_data* %89, i32 %92, i32* %93, i32 12)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %88, %61, %20
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @xgbe_phy_i2c_read(%struct.xgbe_prv_data*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @xgbe_phy_i2c_write(%struct.xgbe_prv_data*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
