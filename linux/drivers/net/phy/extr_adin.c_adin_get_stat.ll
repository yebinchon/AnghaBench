; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_get_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_get_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adin_hw_stat = type { i32 }
%struct.phy_device = type { %struct.adin_priv* }
%struct.adin_priv = type { i32* }

@adin_hw_stats = common dso_local global %struct.adin_hw_stat* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32)* @adin_get_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adin_get_stat(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.adin_hw_stat*, align 8
  %7 = alloca %struct.adin_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.adin_hw_stat*, %struct.adin_hw_stat** @adin_hw_stats, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.adin_hw_stat, %struct.adin_hw_stat* %10, i64 %12
  store %struct.adin_hw_stat* %13, %struct.adin_hw_stat** %6, align 8
  %14 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %15 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %14, i32 0, i32 0
  %16 = load %struct.adin_priv*, %struct.adin_priv** %15, align 8
  store %struct.adin_priv* %16, %struct.adin_priv** %7, align 8
  %17 = load %struct.adin_hw_stat*, %struct.adin_hw_stat** %6, align 8
  %18 = getelementptr inbounds %struct.adin_hw_stat, %struct.adin_hw_stat* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sgt i32 %19, 31
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %23 = load %struct.adin_hw_stat*, %struct.adin_hw_stat** %6, align 8
  %24 = call i32 @adin_read_mmd_stat_regs(%struct.phy_device* %22, %struct.adin_hw_stat* %23, i32* %8)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %58

28:                                               ; preds = %21
  br label %41

29:                                               ; preds = %2
  %30 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %31 = load %struct.adin_hw_stat*, %struct.adin_hw_stat** %6, align 8
  %32 = getelementptr inbounds %struct.adin_hw_stat, %struct.adin_hw_stat* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @phy_read(%struct.phy_device* %30, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %58

38:                                               ; preds = %29
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 65535
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %28
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.adin_priv*, %struct.adin_priv** %7, align 8
  %44 = getelementptr inbounds %struct.adin_priv, %struct.adin_priv* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, %42
  store i32 %50, i32* %48, align 4
  %51 = load %struct.adin_priv*, %struct.adin_priv** %7, align 8
  %52 = getelementptr inbounds %struct.adin_priv, %struct.adin_priv* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %41, %37, %27
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @adin_read_mmd_stat_regs(%struct.phy_device*, %struct.adin_hw_stat*, i32*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
