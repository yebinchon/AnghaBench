; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_ethtool_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_ethtool_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.net_device = type { i32 }
%struct.mvpp2_port = type { i32, i32 }

@ETH_SS_STATS = common dso_local global i64 0, align 8
@mvpp2_ethtool_mib_regs = common dso_local global %struct.TYPE_6__* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@mvpp2_ethtool_port_regs = common dso_local global %struct.TYPE_6__* null, align 8
@mvpp2_ethtool_txq_regs = common dso_local global %struct.TYPE_6__* null, align 8
@mvpp2_ethtool_rxq_regs = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64, i32*)* @mvpp2_ethtool_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_ethtool_get_strings(%struct.net_device* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mvpp2_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.mvpp2_port* @netdev_priv(%struct.net_device* %10)
  store %struct.mvpp2_port* %11, %struct.mvpp2_port** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @ETH_SS_STATS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %132

16:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %36, %16
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvpp2_ethtool_mib_regs, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load i32*, i32** %6, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvpp2_ethtool_mib_regs, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %31 = call i32 @strscpy(i32* %23, i8* %29, i32 %30)
  %32 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %6, align 8
  br label %36

36:                                               ; preds = %22
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %17

39:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %59, %39
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvpp2_ethtool_port_regs, align 8
  %43 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %42)
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %40
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvpp2_ethtool_port_regs, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %54 = call i32 @strscpy(i32* %46, i8* %52, i32 %53)
  %55 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %6, align 8
  br label %59

59:                                               ; preds = %45
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %40

62:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %94, %62
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.mvpp2_port*, %struct.mvpp2_port** %7, align 8
  %66 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %90, %69
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvpp2_ethtool_txq_regs, align 8
  %73 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %72)
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %70
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvpp2_ethtool_txq_regs, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @snprintf(i32* %76, i32 %77, i8* %83, i32 %84)
  %86 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32* %89, i32** %6, align 8
  br label %90

90:                                               ; preds = %75
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %70

93:                                               ; preds = %70
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %63

97:                                               ; preds = %63
  store i32 0, i32* %9, align 4
  br label %98

98:                                               ; preds = %129, %97
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.mvpp2_port*, %struct.mvpp2_port** %7, align 8
  %101 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %132

104:                                              ; preds = %98
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %125, %104
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvpp2_ethtool_rxq_regs, align 8
  %108 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %107)
  %109 = icmp slt i32 %106, %108
  br i1 %109, label %110, label %128

110:                                              ; preds = %105
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvpp2_ethtool_rxq_regs, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @snprintf(i32* %111, i32 %112, i8* %118, i32 %119)
  %121 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %122 = load i32*, i32** %6, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32* %124, i32** %6, align 8
  br label %125

125:                                              ; preds = %110
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %105

128:                                              ; preds = %105
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  br label %98

132:                                              ; preds = %15, %98
  ret void
}

declare dso_local %struct.mvpp2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @strscpy(i32*, i8*, i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
