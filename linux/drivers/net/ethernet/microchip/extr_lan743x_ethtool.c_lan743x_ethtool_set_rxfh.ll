; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_ethtool_set_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_ethtool_set_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lan743x_adapter = type { i32 }

@ETH_RSS_HASH_NO_CHANGE = common dso_local global i64 0, align 8
@ETH_RSS_HASH_TOP = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i64*, i64)* @lan743x_ethtool_set_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_ethtool_set_rxfh(%struct.net_device* %0, i32* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lan743x_adapter*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %6, align 8
  %18 = call %struct.lan743x_adapter* @netdev_priv(%struct.net_device* %17)
  store %struct.lan743x_adapter* %18, %struct.lan743x_adapter** %10, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @ETH_RSS_HASH_NO_CHANGE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %4
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @ETH_RSS_HASH_TOP, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %138

29:                                               ; preds = %22, %4
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %83

32:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %33

33:                                               ; preds = %79, %32
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 32
  br i1 %35, label %36, label %82

36:                                               ; preds = %33
  %37 = load i32, i32* %12, align 4
  %38 = shl i32 %37, 2
  store i32 %38, i32* %13, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 0
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 255
  %46 = shl i32 %45, 0
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 255
  %54 = shl i32 %53, 8
  %55 = or i32 %46, %54
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 255
  %63 = shl i32 %62, 16
  %64 = or i32 %55, %63
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 3
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 255
  %72 = shl i32 %71, 24
  %73 = or i32 %64, %72
  store i32 %73, i32* %11, align 4
  %74 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %10, align 8
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @RFE_INDX(i32 %75)
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %74, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %36
  %80 = load i32, i32* %12, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %12, align 4
  br label %33

82:                                               ; preds = %33
  br label %83

83:                                               ; preds = %82, %29
  %84 = load i64*, i64** %8, align 8
  %85 = icmp ne i64* %84, null
  br i1 %85, label %86, label %137

86:                                               ; preds = %83
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %133, %86
  %88 = load i32, i32* %14, align 4
  %89 = icmp slt i32 %88, 10
  br i1 %89, label %90, label %136

90:                                               ; preds = %87
  %91 = load i32, i32* %14, align 4
  %92 = shl i32 %91, 2
  store i32 %92, i32* %15, align 4
  %93 = load i64*, i64** %8, align 8
  %94 = load i32, i32* %15, align 4
  %95 = add nsw i32 %94, 0
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %93, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = shl i32 %99, 0
  %101 = load i64*, i64** %8, align 8
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %101, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = shl i32 %107, 8
  %109 = or i32 %100, %108
  %110 = load i64*, i64** %8, align 8
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 2
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %110, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = shl i32 %116, 16
  %118 = or i32 %109, %117
  %119 = load i64*, i64** %8, align 8
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 3
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %119, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = shl i32 %125, 24
  %127 = or i32 %118, %126
  store i32 %127, i32* %16, align 4
  %128 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %10, align 8
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @RFE_HASH_KEY(i32 %129)
  %131 = load i32, i32* %16, align 4
  %132 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %128, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %90
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %87

136:                                              ; preds = %87
  br label %137

137:                                              ; preds = %136, %83
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %137, %26
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local %struct.lan743x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #1

declare dso_local i32 @RFE_INDX(i32) #1

declare dso_local i32 @RFE_HASH_KEY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
