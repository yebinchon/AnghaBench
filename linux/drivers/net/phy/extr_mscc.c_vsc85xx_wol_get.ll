; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_wol_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_wol_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32* }

@MSCC_PHY_PAGE_EXTENDED_2 = common dso_local global i32 0, align 4
@MSCC_PHY_WOL_MAC_CONTROL = common dso_local global i32 0, align 4
@SECURE_ON_ENABLE = common dso_local global i32 0, align 4
@WAKE_MAGICSECURE = common dso_local global i32 0, align 4
@MSCC_PHY_WOL_LOWER_PASSWD = common dso_local global i32 0, align 4
@MSCC_PHY_WOL_MID_PASSWD = common dso_local global i32 0, align 4
@MSCC_PHY_WOL_UPPER_PASSWD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_device*, %struct.ethtool_wolinfo*)* @vsc85xx_wol_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsc85xx_wol_get(%struct.phy_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca %struct.ethtool_wolinfo*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %10 = bitcast [3 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 12, i1 false)
  %11 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  store %struct.ethtool_wolinfo* %11, %struct.ethtool_wolinfo** %9, align 8
  %12 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = load i32, i32* @MSCC_PHY_PAGE_EXTENDED_2, align 4
  %17 = call i32 @phy_select_page(%struct.phy_device* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %94

21:                                               ; preds = %2
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = load i32, i32* @MSCC_PHY_WOL_MAC_CONTROL, align 4
  %24 = call i32 @__phy_read(%struct.phy_device* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SECURE_ON_ENABLE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %31 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %9, align 8
  %32 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %29, %21
  %36 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %9, align 8
  %37 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @WAKE_MAGICSECURE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %93

42:                                               ; preds = %35
  %43 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %44 = load i32, i32* @MSCC_PHY_WOL_LOWER_PASSWD, align 4
  %45 = call i32 @__phy_read(%struct.phy_device* %43, i32 %44)
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %45, i32* %46, align 4
  %47 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %48 = load i32, i32* @MSCC_PHY_WOL_MID_PASSWD, align 4
  %49 = call i32 @__phy_read(%struct.phy_device* %47, i32 %48)
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %52 = load i32, i32* @MSCC_PHY_WOL_UPPER_PASSWD, align 4
  %53 = call i32 @__phy_read(%struct.phy_device* %51, i32 %52)
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %53, i32* %54, align 4
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %89, %42
  %56 = load i32, i32* %7, align 4
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %58 = call i32 @ARRAY_SIZE(i32* %57)
  %59 = icmp slt i32 %56, %58
  br i1 %59, label %60, label %92

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 255
  %66 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %9, align 8
  %67 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 %69, 2
  %71 = sub nsw i32 5, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  store i32 %65, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 65280
  %79 = ashr i32 %78, 8
  %80 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %9, align 8
  %81 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = mul nsw i32 %83, 2
  %85 = add nsw i32 %84, 1
  %86 = sub nsw i32 5, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %82, i64 %87
  store i32 %79, i32* %88, align 4
  br label %89

89:                                               ; preds = %60
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %55

92:                                               ; preds = %55
  br label %93

93:                                               ; preds = %92, %35
  br label %94

94:                                               ; preds = %93, %20
  %95 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %5, align 4
  br label %102

102:                                              ; preds = %100, %99
  %103 = phi i32 [ 0, %99 ], [ %101, %100 ]
  %104 = call i32 @phy_restore_page(%struct.phy_device* %95, i32 %96, i32 %103)
  %105 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %106 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @phy_select_page(%struct.phy_device*, i32) #2

declare dso_local i32 @__phy_read(%struct.phy_device*, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @phy_restore_page(%struct.phy_device*, i32, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
