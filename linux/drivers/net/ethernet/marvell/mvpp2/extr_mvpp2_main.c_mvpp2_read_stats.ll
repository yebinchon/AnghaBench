; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_read_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_read_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.mvpp2_port = type { i32, i32, i32, i64, i32, i32* }

@mvpp2_ethtool_mib_regs = common dso_local global %struct.TYPE_7__* null, align 8
@mvpp2_ethtool_port_regs = common dso_local global %struct.TYPE_7__* null, align 8
@mvpp2_ethtool_txq_regs = common dso_local global %struct.TYPE_7__* null, align 8
@mvpp2_ethtool_rxq_regs = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*)* @mvpp2_read_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_read_stats(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  %6 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %7 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %6, i32 0, i32 5
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %27, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mvpp2_ethtool_mib_regs, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %9
  %15 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mvpp2_ethtool_mib_regs, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i64 %18
  %20 = call i64 @mvpp2_read_count(%struct.mvpp2_port* %15, %struct.TYPE_7__* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds i32, i32* %21, i32 1
  store i32* %22, i32** %3, align 8
  %23 = load i32, i32* %21, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %20
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %21, align 4
  br label %27

27:                                               ; preds = %14
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %9

30:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %59, %30
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mvpp2_ethtool_port_regs, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %33)
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %31
  %37 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %38 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mvpp2_ethtool_port_regs, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %47 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = mul nsw i32 4, %48
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %45, %50
  %52 = call i64 @mvpp2_read(i32 %39, i64 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %3, align 8
  %55 = load i32, i32* %53, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %52
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %53, align 4
  br label %59

59:                                               ; preds = %36
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %31

62:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %101, %62
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %66 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %104

69:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %97, %69
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mvpp2_ethtool_txq_regs, align 8
  %73 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %72)
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %70
  %76 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %77 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %80 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i64 @MVPP22_CTRS_TX_CTR(i32 %81, i32 %82)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mvpp2_ethtool_txq_regs, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i64 @mvpp2_read_index(i32 %78, i64 %83, i64 %89)
  %91 = load i32*, i32** %3, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %3, align 8
  %93 = load i32, i32* %91, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %91, align 4
  br label %97

97:                                               ; preds = %75
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %70

100:                                              ; preds = %70
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %5, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %63

104:                                              ; preds = %63
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %144, %104
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %108 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %147

111:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %140, %111
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mvpp2_ethtool_rxq_regs, align 8
  %115 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %114)
  %116 = icmp slt i32 %113, %115
  br i1 %116, label %117, label %143

117:                                              ; preds = %112
  %118 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %119 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %122 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %123, %125
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mvpp2_ethtool_rxq_regs, align 8
  %128 = load i32, i32* %4, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @mvpp2_read_index(i32 %120, i64 %126, i64 %132)
  %134 = load i32*, i32** %3, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %3, align 8
  %136 = load i32, i32* %134, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %133
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %134, align 4
  br label %140

140:                                              ; preds = %117
  %141 = load i32, i32* %4, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %4, align 4
  br label %112

143:                                              ; preds = %112
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %5, align 4
  br label %105

147:                                              ; preds = %105
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i64 @mvpp2_read_count(%struct.mvpp2_port*, %struct.TYPE_7__*) #1

declare dso_local i64 @mvpp2_read(i32, i64) #1

declare dso_local i64 @mvpp2_read_index(i32, i64, i64) #1

declare dso_local i64 @MVPP22_CTRS_TX_CTR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
