; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i2400m = type { i32, i64 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"(net_dev %p [i2400m %p])\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"(net_dev %p [i2400m %p]) = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @i2400m_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2400m*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.i2400m* @net_dev_to_i2400m(%struct.net_device* %6)
  store %struct.i2400m* %7, %struct.i2400m** %4, align 8
  %8 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %9 = call %struct.device* @i2400m_dev(%struct.i2400m* %8)
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %13 = call i32 @d_fnstart(i32 3, %struct.device* %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.net_device* %11, %struct.i2400m* %12)
  %14 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %15 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %18 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %21
  %26 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %27 = getelementptr inbounds %struct.i2400m, %struct.i2400m* %26, i32 0, i32 0
  %28 = call i32 @mutex_unlock(i32* %27)
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = load %struct.i2400m*, %struct.i2400m** %4, align 8
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @d_fnend(i32 3, %struct.device* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.net_device* %30, %struct.i2400m* %31, i32 %32)
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.i2400m* @net_dev_to_i2400m(%struct.net_device*) #1

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.net_device*, %struct.i2400m*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.net_device*, %struct.i2400m*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
