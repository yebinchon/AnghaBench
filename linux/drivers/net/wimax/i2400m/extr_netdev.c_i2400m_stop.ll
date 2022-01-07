; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_netdev.c_i2400m_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i2400m = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"(net_dev %p [i2400m %p])\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"(net_dev %p [i2400m %p]) = 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @i2400m_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2400m_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.i2400m*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.i2400m* @net_dev_to_i2400m(%struct.net_device* %5)
  store %struct.i2400m* %6, %struct.i2400m** %3, align 8
  %7 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %8 = call %struct.device* @i2400m_dev(%struct.i2400m* %7)
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %12 = call i32 @d_fnstart(i32 3, %struct.device* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.net_device* %10, %struct.i2400m* %11)
  %13 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %14 = call i32 @i2400m_net_wake_stop(%struct.i2400m* %13)
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %18 = call i32 @d_fnend(i32 3, %struct.device* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.net_device* %16, %struct.i2400m* %17)
  ret i32 0
}

declare dso_local %struct.i2400m* @net_dev_to_i2400m(%struct.net_device*) #1

declare dso_local %struct.device* @i2400m_dev(%struct.i2400m*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.net_device*, %struct.i2400m*) #1

declare dso_local i32 @i2400m_net_wake_stop(%struct.i2400m*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.net_device*, %struct.i2400m*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
