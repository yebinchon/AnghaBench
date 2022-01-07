; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_force_link_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_force_link_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_port = type { i32, i32, i32, i32, %struct.ksz_hw* }
%struct.ksz_hw = type { i32 }

@KS884X_PHY_1_CTRL_OFFSET = common dso_local global i32 0, align 4
@PHY_CTRL_INTERVAL = common dso_local global i32 0, align 4
@PHY_AUTO_NEG_ENABLE = common dso_local global i32 0, align 4
@PHY_SPEED_100MBIT = common dso_local global i32 0, align 4
@PHY_FULL_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_port*)* @port_force_link_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_force_link_speed(%struct.ksz_port* %0) #0 {
  %2 = alloca %struct.ksz_port*, align 8
  %3 = alloca %struct.ksz_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ksz_port* %0, %struct.ksz_port** %2, align 8
  %8 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %9 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %8, i32 0, i32 4
  %10 = load %struct.ksz_hw*, %struct.ksz_hw** %9, align 8
  store %struct.ksz_hw* %10, %struct.ksz_hw** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %12 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %77, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %17 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %82

20:                                               ; preds = %14
  %21 = load i32, i32* @KS884X_PHY_1_CTRL_OFFSET, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @PHY_CTRL_INTERVAL, align 4
  %24 = mul nsw i32 %22, %23
  %25 = add nsw i32 %21, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @hw_r_phy_ctrl(%struct.ksz_hw* %26, i32 %27, i32* %4)
  %29 = load i32, i32* @PHY_AUTO_NEG_ENABLE, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %34 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 10, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %20
  %38 = load i32, i32* @PHY_SPEED_100MBIT, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %52

42:                                               ; preds = %20
  %43 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %44 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 100, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @PHY_SPEED_100MBIT, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %42
  br label %52

52:                                               ; preds = %51, %37
  %53 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %54 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 1, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32, i32* @PHY_FULL_DUPLEX, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %4, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %72

62:                                               ; preds = %52
  %63 = load %struct.ksz_port*, %struct.ksz_port** %2, align 8
  %64 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 2, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* @PHY_FULL_DUPLEX, align 4
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %62
  br label %72

72:                                               ; preds = %71, %57
  %73 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @hw_w_phy_ctrl(%struct.ksz_hw* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %14

82:                                               ; preds = %14
  ret void
}

declare dso_local i32 @hw_r_phy_ctrl(%struct.ksz_hw*, i32, i32*) #1

declare dso_local i32 @hw_w_phy_ctrl(%struct.ksz_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
