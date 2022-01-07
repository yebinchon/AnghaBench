; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_ethtool_get_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ethtool.c_lan743x_ethtool_get_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lan743x_adapter = type { i32 }

@ETH_RSS_HASH_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i32*, i32*)* @lan743x_ethtool_get_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_ethtool_get_rxfh(%struct.net_device* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.lan743x_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.lan743x_adapter* @netdev_priv(%struct.net_device* %16)
  store %struct.lan743x_adapter* %17, %struct.lan743x_adapter** %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %67

20:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %63, %20
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 32
  br i1 %23, label %24, label %66

24:                                               ; preds = %21
  %25 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @RFE_INDX(i32 %26)
  %28 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %25, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %10, align 4
  %30 = shl i32 %29, 2
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = ashr i32 %31, 0
  %33 = and i32 %32, 255
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %35, 0
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 %33, i32* %38, align 4
  %39 = load i32, i32* %12, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 255
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32 %41, i32* %46, align 4
  %47 = load i32, i32* %12, align 4
  %48 = ashr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %49, i32* %54, align 4
  %55 = load i32, i32* %12, align 4
  %56 = ashr i32 %55, 24
  %57 = and i32 %56, 255
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 %57, i32* %62, align 4
  br label %63

63:                                               ; preds = %24
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %21

66:                                               ; preds = %21
  br label %67

67:                                               ; preds = %66, %4
  %68 = load i32*, i32** %7, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %117

70:                                               ; preds = %67
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %71

71:                                               ; preds = %113, %70
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 10
  br i1 %73, label %74, label %116

74:                                               ; preds = %71
  %75 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %9, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i32 @RFE_HASH_KEY(i32 %76)
  %78 = call i32 @lan743x_csr_read(%struct.lan743x_adapter* %75, i32 %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %13, align 4
  %80 = shl i32 %79, 2
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %15, align 4
  %82 = ashr i32 %81, 0
  %83 = and i32 %82, 255
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 0
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  store i32 %83, i32* %88, align 4
  %89 = load i32, i32* %15, align 4
  %90 = ashr i32 %89, 8
  %91 = and i32 %90, 255
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  store i32 %91, i32* %96, align 4
  %97 = load i32, i32* %15, align 4
  %98 = ashr i32 %97, 16
  %99 = and i32 %98, 255
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %99, i32* %104, align 4
  %105 = load i32, i32* %15, align 4
  %106 = ashr i32 %105, 24
  %107 = and i32 %106, 255
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 3
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %107, i32* %112, align 4
  br label %113

113:                                              ; preds = %74
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %71

116:                                              ; preds = %71
  br label %117

117:                                              ; preds = %116, %67
  %118 = load i32*, i32** %8, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* @ETH_RSS_HASH_TOP, align 4
  %122 = load i32*, i32** %8, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %117
  ret i32 0
}

declare dso_local %struct.lan743x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @lan743x_csr_read(%struct.lan743x_adapter*, i32) #1

declare dso_local i32 @RFE_INDX(i32) #1

declare dso_local i32 @RFE_HASH_KEY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
