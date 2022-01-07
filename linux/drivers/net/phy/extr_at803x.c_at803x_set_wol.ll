; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_at803x.c_at803x_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_at803x.c_at803x_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.net_device* }
%struct.net_device = type { i64 }
%struct.ethtool_wolinfo = type { i32 }

@AT803X_LOC_MAC_ADDR_32_47_OFFSET = common dso_local global i32 0, align 4
@AT803X_LOC_MAC_ADDR_16_31_OFFSET = common dso_local global i32 0, align 4
@AT803X_LOC_MAC_ADDR_0_15_OFFSET = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AT803X_DEVICE_ADDR = common dso_local global i32 0, align 4
@AT803X_INTR_ENABLE = common dso_local global i32 0, align 4
@AT803X_INTR_ENABLE_WOL = common dso_local global i32 0, align 4
@AT803X_INTR_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, %struct.ethtool_wolinfo*)* @at803x_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at803x_set_wol(%struct.phy_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i32], align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %12 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %16 = load i32, i32* @AT803X_LOC_MAC_ADDR_32_47_OFFSET, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @AT803X_LOC_MAC_ADDR_16_31_OFFSET, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* @AT803X_LOC_MAC_ADDR_0_15_OFFSET, align 4
  store i32 %20, i32* %19, align 4
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = icmp ne %struct.net_device* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %115

26:                                               ; preds = %2
  %27 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @WAKE_MAGIC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %93

33:                                               ; preds = %26
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %7, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @is_valid_ether_addr(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %115

44:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %71, %44
  %46 = load i32, i32* %10, align 4
  %47 = icmp ult i32 %46, 3
  br i1 %47, label %48, label %74

48:                                               ; preds = %45
  %49 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %50 = load i32, i32* @AT803X_DEVICE_ADDR, align 4
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %10, align 4
  %57 = mul i32 %56, 2
  %58 = add i32 %57, 1
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = mul i32 %63, 2
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 8
  %69 = or i32 %61, %68
  %70 = call i32 @phy_write_mmd(%struct.phy_device* %49, i32 %50, i32 %54, i32 %69)
  br label %71

71:                                               ; preds = %48
  %72 = load i32, i32* %10, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %45

74:                                               ; preds = %45
  %75 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %76 = load i32, i32* @AT803X_INTR_ENABLE, align 4
  %77 = call i32 @phy_read(%struct.phy_device* %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* @AT803X_INTR_ENABLE_WOL, align 4
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  %81 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %82 = load i32, i32* @AT803X_INTR_ENABLE, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @phy_write(%struct.phy_device* %81, i32 %82, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %74
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %115

89:                                               ; preds = %74
  %90 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %91 = load i32, i32* @AT803X_INTR_STATUS, align 4
  %92 = call i32 @phy_read(%struct.phy_device* %90, i32 %91)
  store i32 %92, i32* %9, align 4
  br label %113

93:                                               ; preds = %26
  %94 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %95 = load i32, i32* @AT803X_INTR_ENABLE, align 4
  %96 = call i32 @phy_read(%struct.phy_device* %94, i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* @AT803X_INTR_ENABLE_WOL, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %9, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %9, align 4
  %101 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %102 = load i32, i32* @AT803X_INTR_ENABLE, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @phy_write(%struct.phy_device* %101, i32 %102, i32 %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %93
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %115

109:                                              ; preds = %93
  %110 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %111 = load i32, i32* @AT803X_INTR_STATUS, align 4
  %112 = call i32 @phy_read(%struct.phy_device* %110, i32 %111)
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %109, %89
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %107, %87, %41, %23
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @phy_write_mmd(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
