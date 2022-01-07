; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_get_phy_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_alx_get_phy_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_hw = type { %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }

@MII_PHYSID1 = common dso_local global i32 0, align 4
@MII_PHYSID2 = common dso_local global i32 0, align 4
@MDIO_DEVS1 = common dso_local global i32 0, align 4
@MDIO_DEVS2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alx_get_phy_info(%struct.alx_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alx_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.alx_hw* %0, %struct.alx_hw** %3, align 8
  %6 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %7 = load i32, i32* @MII_PHYSID1, align 4
  %8 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %9 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = call i64 @alx_read_phy_reg(%struct.alx_hw* %6, i32 %7, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %16 = load i32, i32* @MII_PHYSID2, align 4
  %17 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %18 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = call i64 @alx_read_phy_reg(%struct.alx_hw* %15, i32 %16, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %43

24:                                               ; preds = %14
  %25 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %26 = load i32, i32* @MDIO_DEVS1, align 4
  %27 = call i64 @alx_read_phy_ext(%struct.alx_hw* %25, i32 3, i32 %26, i32* %4)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %31 = load i32, i32* @MDIO_DEVS2, align 4
  %32 = call i64 @alx_read_phy_ext(%struct.alx_hw* %30, i32 3, i32 %31, i32* %5)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %24
  store i32 0, i32* %2, align 4
  br label %43

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 %37, 16
  %39 = or i32 %36, %38
  %40 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %41 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  store i32 1, i32* %2, align 4
  br label %43

43:                                               ; preds = %35, %34, %23
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @alx_read_phy_reg(%struct.alx_hw*, i32, i32*) #1

declare dso_local i64 @alx_read_phy_ext(%struct.alx_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
