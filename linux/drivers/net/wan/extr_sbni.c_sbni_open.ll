; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_sbni.c_sbni_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_sbni.c_sbni_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, i32, i32, i32 }
%struct.net_local = type { i32, %struct.net_device*, i32, i32, %struct.net_device*, %struct.timer_list }
%struct.timer_list = type { i64 }

@sbni_cards = common dso_local global %struct.net_device** null, align 8
@SBNI_MAX_NUM_CARDS = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"using shared irq with %s\0A\00", align 1
@FL_SECONDARY = common dso_local global i32 0, align 4
@sbni_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unable to get IRQ %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@sbni_watchdog = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SBNI_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sbni_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbni_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_local*, align 8
  %5 = alloca %struct.timer_list*, align 8
  %6 = alloca %struct.net_device**, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.net_local* @netdev_priv(%struct.net_device* %7)
  store %struct.net_local* %8, %struct.net_local** %4, align 8
  %9 = load %struct.net_local*, %struct.net_local** %4, align 8
  %10 = getelementptr inbounds %struct.net_local, %struct.net_local* %9, i32 0, i32 5
  store %struct.timer_list* %10, %struct.timer_list** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 1024
  br i1 %14, label %15, label %89

15:                                               ; preds = %1
  %16 = load %struct.net_device**, %struct.net_device*** @sbni_cards, align 8
  store %struct.net_device** %16, %struct.net_device*** %6, align 8
  br label %17

17:                                               ; preds = %85, %15
  %18 = load %struct.net_device**, %struct.net_device*** %6, align 8
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  %20 = icmp ne %struct.net_device* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load %struct.net_device**, %struct.net_device*** %6, align 8
  %23 = load %struct.net_device**, %struct.net_device*** @sbni_cards, align 8
  %24 = load i32, i32* @SBNI_MAX_NUM_CARDS, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.net_device*, %struct.net_device** %23, i64 %25
  %27 = icmp ult %struct.net_device** %22, %26
  br label %28

28:                                               ; preds = %21, %17
  %29 = phi i1 [ false, %17 ], [ %27, %21 ]
  br i1 %29, label %30, label %88

30:                                               ; preds = %28
  %31 = load %struct.net_device**, %struct.net_device*** %6, align 8
  %32 = load %struct.net_device*, %struct.net_device** %31, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %84

39:                                               ; preds = %30
  %40 = load %struct.net_device**, %struct.net_device*** %6, align 8
  %41 = load %struct.net_device*, %struct.net_device** %40, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 4
  %48 = icmp eq i32 %43, %47
  br i1 %48, label %59, label %49

49:                                               ; preds = %39
  %50 = load %struct.net_device**, %struct.net_device*** %6, align 8
  %51 = load %struct.net_device*, %struct.net_device** %50, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 4
  %58 = icmp eq i32 %53, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %49, %39
  %60 = load %struct.net_device**, %struct.net_device*** %6, align 8
  %61 = load %struct.net_device*, %struct.net_device** %60, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IFF_UP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %59
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = load %struct.net_device**, %struct.net_device*** %6, align 8
  %70 = load %struct.net_device*, %struct.net_device** %69, align 8
  %71 = call %struct.net_local* @netdev_priv(%struct.net_device* %70)
  %72 = getelementptr inbounds %struct.net_local, %struct.net_local* %71, i32 0, i32 4
  store %struct.net_device* %68, %struct.net_device** %72, align 8
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = load %struct.net_device**, %struct.net_device*** %6, align 8
  %75 = load %struct.net_device*, %struct.net_device** %74, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @netdev_notice(%struct.net_device* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @FL_SECONDARY, align 4
  %80 = load %struct.net_local*, %struct.net_local** %4, align 8
  %81 = getelementptr inbounds %struct.net_local, %struct.net_local* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %110

84:                                               ; preds = %59, %49, %30
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.net_device**, %struct.net_device*** %6, align 8
  %87 = getelementptr inbounds %struct.net_device*, %struct.net_device** %86, i32 1
  store %struct.net_device** %87, %struct.net_device*** %6, align 8
  br label %17

88:                                               ; preds = %28
  br label %89

89:                                               ; preds = %88, %1
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @sbni_interrupt, align 4
  %94 = load i32, i32* @IRQF_SHARED, align 4
  %95 = load %struct.net_device*, %struct.net_device** %3, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.net_device*, %struct.net_device** %3, align 8
  %99 = call i64 @request_irq(i64 %92, i32 %93, i32 %94, i32 %97, %struct.net_device* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %89
  %102 = load %struct.net_device*, %struct.net_device** %3, align 8
  %103 = load %struct.net_device*, %struct.net_device** %3, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @netdev_err(%struct.net_device* %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %105)
  %107 = load i32, i32* @EAGAIN, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %140

109:                                              ; preds = %89
  br label %110

110:                                              ; preds = %109, %67
  %111 = load %struct.net_local*, %struct.net_local** %4, align 8
  %112 = getelementptr inbounds %struct.net_local, %struct.net_local* %111, i32 0, i32 0
  %113 = call i32 @spin_lock(i32* %112)
  %114 = load %struct.net_device*, %struct.net_device** %3, align 8
  %115 = getelementptr inbounds %struct.net_device, %struct.net_device* %114, i32 0, i32 3
  %116 = call i32 @memset(i32* %115, i32 0, i32 4)
  %117 = load %struct.net_local*, %struct.net_local** %4, align 8
  %118 = getelementptr inbounds %struct.net_local, %struct.net_local* %117, i32 0, i32 2
  %119 = call i32 @memset(i32* %118, i32 0, i32 4)
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = call i32 @card_start(%struct.net_device* %120)
  %122 = load %struct.net_device*, %struct.net_device** %3, align 8
  %123 = call i32 @netif_start_queue(%struct.net_device* %122)
  %124 = load %struct.net_device*, %struct.net_device** %3, align 8
  %125 = load %struct.net_local*, %struct.net_local** %4, align 8
  %126 = getelementptr inbounds %struct.net_local, %struct.net_local* %125, i32 0, i32 1
  store %struct.net_device* %124, %struct.net_device** %126, align 8
  %127 = load %struct.timer_list*, %struct.timer_list** %5, align 8
  %128 = load i32, i32* @sbni_watchdog, align 4
  %129 = call i32 @timer_setup(%struct.timer_list* %127, i32 %128, i32 0)
  %130 = load i64, i64* @jiffies, align 8
  %131 = load i64, i64* @SBNI_TIMEOUT, align 8
  %132 = add nsw i64 %130, %131
  %133 = load %struct.timer_list*, %struct.timer_list** %5, align 8
  %134 = getelementptr inbounds %struct.timer_list, %struct.timer_list* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load %struct.timer_list*, %struct.timer_list** %5, align 8
  %136 = call i32 @add_timer(%struct.timer_list* %135)
  %137 = load %struct.net_local*, %struct.net_local** %4, align 8
  %138 = getelementptr inbounds %struct.net_local, %struct.net_local* %137, i32 0, i32 0
  %139 = call i32 @spin_unlock(i32* %138)
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %110, %101
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_notice(%struct.net_device*, i8*, i32) #1

declare dso_local i64 @request_irq(i64, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @card_start(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @timer_setup(%struct.timer_list*, i32, i32) #1

declare dso_local i32 @add_timer(%struct.timer_list*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
