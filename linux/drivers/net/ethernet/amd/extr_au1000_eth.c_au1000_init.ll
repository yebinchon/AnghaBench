; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.au1000_private = type { i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_6__**, %struct.TYPE_5__** }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"au1000_init\0A\00", align 1
@NUM_RX_DMA = common dso_local global i32 0, align 4
@RX_DMA_ENABLE = common dso_local global i32 0, align 4
@MAC_RX_ENABLE = common dso_local global i32 0, align 4
@MAC_TX_ENABLE = common dso_local global i32 0, align 4
@MAC_BIG_ENDIAN = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@MAC_FULL_DUPLEX = common dso_local global i32 0, align 4
@MAC_DISABLE_RX_OWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @au1000_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1000_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.au1000_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.au1000_private* @netdev_priv(%struct.net_device* %7)
  store %struct.au1000_private* %8, %struct.au1000_private** %3, align 8
  %9 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %10 = load i32, i32* @hw, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netif_dbg(%struct.au1000_private* %9, i32 %10, %struct.net_device* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @au1000_enable_mac(%struct.net_device* %13, i32 1)
  %15 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %16 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %15, i32 0, i32 3
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %20 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %19, i32 0, i32 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = call i32 @writel(i32 0, i32* %22)
  %24 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %25 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %24, i32 0, i32 6
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %26, i64 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 12
  %32 = ashr i32 %31, 2
  %33 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %34 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %36 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %39 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %41 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %40, i32 0, i32 5
  %42 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %42, i64 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 12
  %48 = ashr i32 %47, 2
  %49 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %50 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 5
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %56, %61
  %63 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %64 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %63, i32 0, i32 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = call i32 @writel(i32 %62, i32* %66)
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 24
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 16
  %80 = or i32 %73, %79
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 8
  %87 = or i32 %80, %86
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %87, %92
  %94 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %95 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %94, i32 0, i32 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = call i32 @writel(i32 %93, i32* %97)
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %115, %1
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* @NUM_RX_DMA, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %99
  %104 = load i32, i32* @RX_DMA_ENABLE, align 4
  %105 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %106 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %105, i32 0, i32 5
  %107 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %107, i64 %109
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %104
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %103
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %99

118:                                              ; preds = %99
  %119 = call i32 (...) @wmb()
  %120 = load i32, i32* @MAC_RX_ENABLE, align 4
  %121 = load i32, i32* @MAC_TX_ENABLE, align 4
  %122 = or i32 %120, %121
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* @MAC_BIG_ENDIAN, align 4
  %124 = load i32, i32* %6, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %6, align 4
  %126 = load %struct.net_device*, %struct.net_device** %2, align 8
  %127 = getelementptr inbounds %struct.net_device, %struct.net_device* %126, i32 0, i32 1
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = icmp ne %struct.TYPE_7__* %128, null
  br i1 %129, label %130, label %154

130:                                              ; preds = %118
  %131 = load %struct.net_device*, %struct.net_device** %2, align 8
  %132 = getelementptr inbounds %struct.net_device, %struct.net_device* %131, i32 0, i32 1
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %130
  %138 = load i64, i64* @DUPLEX_FULL, align 8
  %139 = load %struct.net_device*, %struct.net_device** %2, align 8
  %140 = getelementptr inbounds %struct.net_device, %struct.net_device* %139, i32 0, i32 1
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %138, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %137
  %146 = load i32, i32* @MAC_FULL_DUPLEX, align 4
  %147 = load i32, i32* %6, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %6, align 4
  br label %153

149:                                              ; preds = %137, %130
  %150 = load i32, i32* @MAC_DISABLE_RX_OWN, align 4
  %151 = load i32, i32* %6, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %6, align 4
  br label %153

153:                                              ; preds = %149, %145
  br label %158

154:                                              ; preds = %118
  %155 = load i32, i32* @MAC_FULL_DUPLEX, align 4
  %156 = load i32, i32* %6, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %154, %153
  %159 = load i32, i32* %6, align 4
  %160 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %161 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %160, i32 0, i32 4
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  %164 = call i32 @writel(i32 %159, i32* %163)
  %165 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %166 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %165, i32 0, i32 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = call i32 @writel(i32 33024, i32* %168)
  %170 = call i32 (...) @wmb()
  %171 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %172 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %171, i32 0, i32 3
  %173 = load i64, i64* %4, align 8
  %174 = call i32 @spin_unlock_irqrestore(i32* %172, i64 %173)
  ret i32 0
}

declare dso_local %struct.au1000_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_dbg(%struct.au1000_private*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @au1000_enable_mac(%struct.net_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
