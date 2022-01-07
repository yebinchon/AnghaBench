; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c___lpc_handle_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c___lpc_handle_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.netdata_local = type { i32, i32*, i32*, i32, i32 }

@ENET_TX_DESC = common dso_local global i32 0, align 4
@TXSTATUS_ERROR = common dso_local global i32 0, align 4
@TXSTATUS_UNDERRUN = common dso_local global i32 0, align 4
@TXSTATUS_LATECOLL = common dso_local global i32 0, align 4
@TXSTATUS_EXCESSCOLL = common dso_local global i32 0, align 4
@TXSTATUS_EXCESSDEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @__lpc_handle_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__lpc_handle_xmit(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdata_local*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.netdata_local* @netdev_priv(%struct.net_device* %8)
  store %struct.netdata_local* %9, %struct.netdata_local** %3, align 8
  %10 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %11 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @LPC_ENET_TXCONSUMEINDEX(i32 %12)
  %14 = call i32 @readl(i32 %13)
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %133, %1
  %16 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %17 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %139

21:                                               ; preds = %15
  %22 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %23 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %26 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %32 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %35 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %33, i64 %37
  store i32* %38, i32** %5, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  %41 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %42 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  %45 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %46 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %50 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ENET_TX_DESC, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %21
  %55 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %56 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %54, %21
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @TXSTATUS_COLLISIONS_GET(i32 %58)
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %59
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @TXSTATUS_ERROR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %121

71:                                               ; preds = %57
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @TXSTATUS_UNDERRUN, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.net_device*, %struct.net_device** %2, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %71
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @TXSTATUS_LATECOLL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %82
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @TXSTATUS_EXCESSCOLL, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load %struct.net_device*, %struct.net_device** %2, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %93
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @TXSTATUS_EXCESSDEFER, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.net_device*, %struct.net_device** %2, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %109, %104
  %116 = load %struct.net_device*, %struct.net_device** %2, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  br label %133

121:                                              ; preds = %57
  %122 = load %struct.net_device*, %struct.net_device** %2, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.net_device*, %struct.net_device** %2, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add i32 %131, %127
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %121, %115
  %134 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %135 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @LPC_ENET_TXCONSUMEINDEX(i32 %136)
  %138 = call i32 @readl(i32 %137)
  store i32 %138, i32* %4, align 4
  br label %15

139:                                              ; preds = %15
  %140 = load %struct.netdata_local*, %struct.netdata_local** %3, align 8
  %141 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @ENET_TX_DESC, align 4
  %144 = sdiv i32 %143, 2
  %145 = icmp sle i32 %142, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %139
  %147 = load %struct.net_device*, %struct.net_device** %2, align 8
  %148 = call i64 @netif_queue_stopped(%struct.net_device* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load %struct.net_device*, %struct.net_device** %2, align 8
  %152 = call i32 @netif_wake_queue(%struct.net_device* %151)
  br label %153

153:                                              ; preds = %150, %146
  br label %154

154:                                              ; preds = %153, %139
  ret void
}

declare dso_local %struct.netdata_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @LPC_ENET_TXCONSUMEINDEX(i32) #1

declare dso_local i64 @TXSTATUS_COLLISIONS_GET(i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
