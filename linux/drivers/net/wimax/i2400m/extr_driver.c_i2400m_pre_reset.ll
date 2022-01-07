; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_driver.c_i2400m_pre_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_driver.c_i2400m_pre_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400m = type { {}*, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"(i2400m %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"pre-reset shut down\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"(i2400m %p) = 0\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2400m_pre_reset(%struct.i2400m* %0) #0 {
  %2 = alloca %struct.i2400m*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.i2400m* %0, %struct.i2400m** %2, align 8
  %4 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %5 = call %struct.device* @i2400m_dev(%struct.i2400m* %4)
  store %struct.device* %5, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %8 = call i32 @d_fnstart(i32 3, %struct.device* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %7)
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call i32 @d_printf(i32 1, %struct.device* %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %11 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %12 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %15 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %20 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @netif_tx_disable(i32 %22)
  %24 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %25 = call i32 @__i2400m_dev_stop(%struct.i2400m* %24)
  br label %26

26:                                               ; preds = %18, %1
  %27 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %28 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %27, i32 0, i32 1
  %29 = call i32 @mutex_unlock(i32* %28)
  %30 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %31 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.i2400m*)**
  %33 = load i32 (%struct.i2400m*)*, i32 (%struct.i2400m*)** %32, align 8
  %34 = icmp ne i32 (%struct.i2400m*)* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %37 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %36, i32 0, i32 0
  %38 = bitcast {}** %37 to i32 (%struct.i2400m*)**
  %39 = load i32 (%struct.i2400m*)*, i32 (%struct.i2400m*)** %38, align 8
  %40 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %41 = call i32 %39(%struct.i2400m* %40)
  br label %42

42:                                               ; preds = %35, %26
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = load %struct.i2400m*, %struct.i2400m** %2, align 8
  %45 = call i32 @d_fnend(i32 3, %struct.device* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.i2400m* %44)
  ret i32 0
}

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*) #1

declare dso_local i32 @d_printf(i32, %struct.device*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @netif_tx_disable(i32) #1

declare dso_local i32 @__i2400m_dev_stop(%struct.i2400m*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
