; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_port_has_10g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_port_has_10g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_probe_info = type { i32*, i32** }

@PHY_TYPE_PMA_PMD = common dso_local global i64 0, align 8
@PHY_TYPE_PCS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_probe_info*, i32)* @port_has_10g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_has_10g(%struct.phy_probe_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_probe_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_probe_info* %0, %struct.phy_probe_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %31, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.phy_probe_info*, %struct.phy_probe_info** %4, align 8
  %10 = getelementptr inbounds %struct.phy_probe_info, %struct.phy_probe_info* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @PHY_TYPE_PMA_PMD, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %8, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %7
  %17 = load %struct.phy_probe_info*, %struct.phy_probe_info** %4, align 8
  %18 = getelementptr inbounds %struct.phy_probe_info, %struct.phy_probe_info* %17, i32 0, i32 1
  %19 = load i32**, i32*** %18, align 8
  %20 = load i64, i64* @PHY_TYPE_PMA_PMD, align 8
  %21 = getelementptr inbounds i32*, i32** %19, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %63

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %7

34:                                               ; preds = %7
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %59, %34
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.phy_probe_info*, %struct.phy_probe_info** %4, align 8
  %38 = getelementptr inbounds %struct.phy_probe_info, %struct.phy_probe_info* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @PHY_TYPE_PCS, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %36, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %35
  %45 = load %struct.phy_probe_info*, %struct.phy_probe_info** %4, align 8
  %46 = getelementptr inbounds %struct.phy_probe_info, %struct.phy_probe_info* %45, i32 0, i32 1
  %47 = load i32**, i32*** %46, align 8
  %48 = load i64, i64* @PHY_TYPE_PCS, align 8
  %49 = getelementptr inbounds i32*, i32** %47, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %63

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %35

62:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %57, %29
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
