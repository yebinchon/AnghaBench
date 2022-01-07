; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_read_mmd_stat_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_read_mmd_stat_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.adin_hw_stat = type { i64, i64 }

@MDIO_MMD_VEND1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, %struct.adin_hw_stat*, i32*)* @adin_read_mmd_stat_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adin_read_mmd_stat_regs(%struct.phy_device* %0, %struct.adin_hw_stat* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca %struct.adin_hw_stat*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %5, align 8
  store %struct.adin_hw_stat* %1, %struct.adin_hw_stat** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %10 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %11 = load %struct.adin_hw_stat*, %struct.adin_hw_stat** %6, align 8
  %12 = getelementptr inbounds %struct.adin_hw_stat, %struct.adin_hw_stat* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @phy_read_mmd(%struct.phy_device* %9, i32 %10, i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %48

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 65535
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.adin_hw_stat*, %struct.adin_hw_stat** %6, align 8
  %24 = getelementptr inbounds %struct.adin_hw_stat, %struct.adin_hw_stat* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %48

28:                                               ; preds = %19
  %29 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %30 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %31 = load %struct.adin_hw_stat*, %struct.adin_hw_stat** %6, align 8
  %32 = getelementptr inbounds %struct.adin_hw_stat, %struct.adin_hw_stat* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @phy_read_mmd(%struct.phy_device* %29, i32 %30, i64 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %48

39:                                               ; preds = %28
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 16
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, 65535
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %39, %37, %27, %17
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
