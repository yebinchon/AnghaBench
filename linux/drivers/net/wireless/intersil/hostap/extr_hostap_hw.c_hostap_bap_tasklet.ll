; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_hw.c_hostap_bap_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_hw.c_hostap_bap_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.net_device* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*)* }
%struct.net_device = type { i32 }

@HOSTAP_BITS_BAP_TASKLET = common dso_local global i32 0, align 4
@HFA384X_EVSTAT_OFF = common dso_local global i32 0, align 4
@HFA384X_BAP0_EVENTS = common dso_local global i32 0, align 4
@HFA384X_EV_RX = common dso_local global i32 0, align 4
@HFA384X_EV_INFO = common dso_local global i32 0, align 4
@HFA384X_EV_TX = common dso_local global i32 0, align 4
@HFA384X_EV_TXEXC = common dso_local global i32 0, align 4
@HOSTAP_BITS_BAP_TASKLET2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @hostap_bap_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostap_bap_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %3, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 2
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  store i32 30, i32* %6, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %15, align 8
  %17 = icmp ne i32 (%struct.TYPE_9__*)* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %22, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = call i32 %23(%struct.TYPE_9__* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %18
  br label %96

28:                                               ; preds = %18, %1
  %29 = load i32, i32* @HOSTAP_BITS_BAP_TASKLET, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %80, %28
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %6, align 4
  %36 = icmp sgt i32 %34, 0
  br i1 %36, label %37, label %81

37:                                               ; preds = %33
  %38 = load i32, i32* @HFA384X_EVSTAT_OFF, align 4
  %39 = call i32 @HFA384X_INW(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 65535
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @HFA384X_BAP0_EVENTS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42, %37
  br label %81

48:                                               ; preds = %42
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @HFA384X_EV_RX, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = call i32 @prism2_rx(%struct.TYPE_9__* %54)
  br label %56

56:                                               ; preds = %53, %48
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @HFA384X_EV_INFO, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = call i32 @prism2_info(%struct.TYPE_9__* %62)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @HFA384X_EV_TX, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = call i32 @prism2_tx_ev(%struct.TYPE_9__* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @HFA384X_EV_TXEXC, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = call i32 @prism2_txexc(%struct.TYPE_9__* %78)
  br label %80

80:                                               ; preds = %77, %72
  br label %33

81:                                               ; preds = %47, %33
  %82 = load i32, i32* @HOSTAP_BITS_BAP_TASKLET2, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = call i32 @set_bit(i32 %82, i32* %84)
  %86 = load i32, i32* @HOSTAP_BITS_BAP_TASKLET, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = call i32 @clear_bit(i32 %86, i32* %88)
  %90 = load %struct.net_device*, %struct.net_device** %4, align 8
  %91 = call i32 @hfa384x_events_all(%struct.net_device* %90)
  %92 = load i32, i32* @HOSTAP_BITS_BAP_TASKLET2, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = call i32 @clear_bit(i32 %92, i32* %94)
  br label %96

96:                                               ; preds = %81, %27
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @HFA384X_INW(i32) #1

declare dso_local i32 @prism2_rx(%struct.TYPE_9__*) #1

declare dso_local i32 @prism2_info(%struct.TYPE_9__*) #1

declare dso_local i32 @prism2_tx_ev(%struct.TYPE_9__*) #1

declare dso_local i32 @prism2_txexc(%struct.TYPE_9__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hfa384x_events_all(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
