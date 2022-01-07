; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_aquantia_main.c_aqr107_get_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_aquantia_main.c_aqr107_get_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aqr107_hw_stat = type { i32, i64 }
%struct.phy_device = type { i32 }

@aqr107_hw_stats = common dso_local global %struct.aqr107_hw_stat* null, align 8
@MDIO_MMD_C22EXT = common dso_local global i32 0, align 4
@U64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32)* @aqr107_get_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aqr107_get_stat(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aqr107_hw_stat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.aqr107_hw_stat*, %struct.aqr107_hw_stat** @aqr107_hw_stats, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.aqr107_hw_stat, %struct.aqr107_hw_stat* %11, i64 %13
  store %struct.aqr107_hw_stat* %14, %struct.aqr107_hw_stat** %6, align 8
  %15 = load %struct.aqr107_hw_stat*, %struct.aqr107_hw_stat** %6, align 8
  %16 = getelementptr inbounds %struct.aqr107_hw_stat, %struct.aqr107_hw_stat* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @min(i32 %17, i32 16)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.aqr107_hw_stat*, %struct.aqr107_hw_stat** %6, align 8
  %20 = getelementptr inbounds %struct.aqr107_hw_stat, %struct.aqr107_hw_stat* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %25 = load i32, i32* @MDIO_MMD_C22EXT, align 4
  %26 = load %struct.aqr107_hw_stat*, %struct.aqr107_hw_stat** %6, align 8
  %27 = getelementptr inbounds %struct.aqr107_hw_stat, %struct.aqr107_hw_stat* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @phy_read_mmd(%struct.phy_device* %24, i32 %25, i64 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @U64_MAX, align 4
  store i32 %33, i32* %3, align 4
  br label %65

34:                                               ; preds = %2
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @GENMASK(i32 %37, i32 0)
  %39 = and i32 %35, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %34
  %43 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %44 = load i32, i32* @MDIO_MMD_C22EXT, align 4
  %45 = load %struct.aqr107_hw_stat*, %struct.aqr107_hw_stat** %6, align 8
  %46 = getelementptr inbounds %struct.aqr107_hw_stat, %struct.aqr107_hw_stat* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  %49 = call i32 @phy_read_mmd(%struct.phy_device* %43, i32 %44, i64 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @U64_MAX, align 4
  store i32 %53, i32* %3, align 4
  br label %65

54:                                               ; preds = %42
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %56, 1
  %58 = call i32 @GENMASK(i32 %57, i32 0)
  %59 = and i32 %55, %58
  %60 = shl i32 %59, 16
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %54, %34
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %52, %32
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i64) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
