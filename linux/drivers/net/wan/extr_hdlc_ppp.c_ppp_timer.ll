; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_ppp.c_ppp_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_ppp.c_ppp_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.timer_list = type { i32 }
%struct.ppp = type { i32, i32, i32, i32, i32, i32 }

@timer = common dso_local global i32 0, align 4
@TO_GOOD = common dso_local global i32 0, align 4
@TO_BAD = common dso_local global i32 0, align 4
@PID_LCP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Link down\0A\00", align 1
@STOP = common dso_local global i32 0, align 4
@START = common dso_local global i32 0, align 4
@LCP_ECHO_REQ = common dso_local global i32 0, align 4
@proto = common dso_local global %struct.proto* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ppp_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppp_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.proto*, align 8
  %4 = alloca %struct.ppp*, align 8
  %5 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.proto*, %struct.proto** %3, align 8
  %7 = ptrtoint %struct.proto* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.proto* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.proto* %10, %struct.proto** %3, align 8
  %11 = load %struct.proto*, %struct.proto** %3, align 8
  %12 = getelementptr inbounds %struct.proto, %struct.proto* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ppp* @get_ppp(i32 %13)
  store %struct.ppp* %14, %struct.ppp** %4, align 8
  %15 = load %struct.ppp*, %struct.ppp** %4, align 8
  %16 = getelementptr inbounds %struct.ppp, %struct.ppp* %15, i32 0, i32 3
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.proto*, %struct.proto** %3, align 8
  %20 = getelementptr inbounds %struct.proto, %struct.proto* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %133 [
    i32 128, label %22
    i32 129, label %22
    i32 132, label %22
    i32 131, label %22
    i32 130, label %66
  ]

22:                                               ; preds = %1, %1, %1, %1
  %23 = load %struct.proto*, %struct.proto** %3, align 8
  %24 = getelementptr inbounds %struct.proto, %struct.proto* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load %struct.proto*, %struct.proto** %3, align 8
  %29 = getelementptr inbounds %struct.proto, %struct.proto* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.proto*, %struct.proto** %3, align 8
  %32 = getelementptr inbounds %struct.proto, %struct.proto* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TO_GOOD, align 4
  %35 = call i32 @ppp_cp_event(i32 %30, i32 %33, i32 %34, i32 0, i32 0, i32 0, i32* null)
  %36 = load %struct.proto*, %struct.proto** %3, align 8
  %37 = getelementptr inbounds %struct.proto, %struct.proto* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %37, align 4
  br label %65

40:                                               ; preds = %22
  %41 = load %struct.proto*, %struct.proto** %3, align 8
  %42 = getelementptr inbounds %struct.proto, %struct.proto* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @netif_carrier_ok(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load %struct.proto*, %struct.proto** %3, align 8
  %48 = getelementptr inbounds %struct.proto, %struct.proto* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.proto*, %struct.proto** %3, align 8
  %51 = getelementptr inbounds %struct.proto, %struct.proto* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TO_GOOD, align 4
  %54 = call i32 @ppp_cp_event(i32 %49, i32 %52, i32 %53, i32 0, i32 0, i32 0, i32* null)
  br label %64

55:                                               ; preds = %40
  %56 = load %struct.proto*, %struct.proto** %3, align 8
  %57 = getelementptr inbounds %struct.proto, %struct.proto* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.proto*, %struct.proto** %3, align 8
  %60 = getelementptr inbounds %struct.proto, %struct.proto* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @TO_BAD, align 4
  %63 = call i32 @ppp_cp_event(i32 %58, i32 %61, i32 %62, i32 0, i32 0, i32 0, i32* null)
  br label %64

64:                                               ; preds = %55, %46
  br label %65

65:                                               ; preds = %64, %27
  br label %133

66:                                               ; preds = %1
  %67 = load %struct.proto*, %struct.proto** %3, align 8
  %68 = getelementptr inbounds %struct.proto, %struct.proto* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @PID_LCP, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  br label %133

73:                                               ; preds = %66
  %74 = load i32, i32* @jiffies, align 4
  %75 = load %struct.ppp*, %struct.ppp** %4, align 8
  %76 = getelementptr inbounds %struct.ppp, %struct.ppp* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ppp*, %struct.ppp** %4, align 8
  %79 = getelementptr inbounds %struct.ppp, %struct.ppp* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @HZ, align 4
  %82 = mul nsw i32 %80, %81
  %83 = add nsw i32 %77, %82
  %84 = call i32 @time_after(i32 %74, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %73
  %87 = load %struct.proto*, %struct.proto** %3, align 8
  %88 = getelementptr inbounds %struct.proto, %struct.proto* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @netdev_info(i32 %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %91 = load %struct.proto*, %struct.proto** %3, align 8
  %92 = getelementptr inbounds %struct.proto, %struct.proto* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @PID_LCP, align 4
  %95 = load i32, i32* @STOP, align 4
  %96 = call i32 @ppp_cp_event(i32 %93, i32 %94, i32 %95, i32 0, i32 0, i32 0, i32* null)
  %97 = load %struct.proto*, %struct.proto** %3, align 8
  %98 = getelementptr inbounds %struct.proto, %struct.proto* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @PID_LCP, align 4
  %101 = load i32, i32* @START, align 4
  %102 = call i32 @ppp_cp_event(i32 %99, i32 %100, i32 %101, i32 0, i32 0, i32 0, i32* null)
  br label %132

103:                                              ; preds = %73
  %104 = load %struct.ppp*, %struct.ppp** %4, align 8
  %105 = getelementptr inbounds %struct.ppp, %struct.ppp* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.ppp*, %struct.ppp** %4, align 8
  %109 = getelementptr inbounds %struct.ppp, %struct.ppp* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  %110 = load %struct.proto*, %struct.proto** %3, align 8
  %111 = getelementptr inbounds %struct.proto, %struct.proto* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @PID_LCP, align 4
  %114 = load i32, i32* @LCP_ECHO_REQ, align 4
  %115 = load %struct.ppp*, %struct.ppp** %4, align 8
  %116 = getelementptr inbounds %struct.ppp, %struct.ppp* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ppp_tx_cp(i32 %112, i32 %113, i32 %114, i32 %117, i32 0, i32* null)
  %119 = load i32, i32* @jiffies, align 4
  %120 = load %struct.ppp*, %struct.ppp** %4, align 8
  %121 = getelementptr inbounds %struct.ppp, %struct.ppp* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @HZ, align 4
  %124 = mul nsw i32 %122, %123
  %125 = add nsw i32 %119, %124
  %126 = load %struct.proto*, %struct.proto** %3, align 8
  %127 = getelementptr inbounds %struct.proto, %struct.proto* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 4
  %129 = load %struct.proto*, %struct.proto** %3, align 8
  %130 = getelementptr inbounds %struct.proto, %struct.proto* %129, i32 0, i32 1
  %131 = call i32 @add_timer(%struct.TYPE_2__* %130)
  br label %132

132:                                              ; preds = %103, %86
  br label %133

133:                                              ; preds = %1, %132, %72, %65
  %134 = load %struct.ppp*, %struct.ppp** %4, align 8
  %135 = getelementptr inbounds %struct.ppp, %struct.ppp* %134, i32 0, i32 3
  %136 = load i64, i64* %5, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  %138 = call i32 (...) @ppp_tx_flush()
  ret void
}

declare dso_local %struct.proto* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.ppp* @get_ppp(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ppp_cp_event(i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @netif_carrier_ok(i32) #1

declare dso_local i32 @time_after(i32, i32) #1

declare dso_local i32 @netdev_info(i32, i8*) #1

declare dso_local i32 @ppp_tx_cp(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ppp_tx_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
