; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_rtl8150.c_enable_net_traffic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_rtl8150.c_enable_net_traffic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"device reset failed\0A\00", align 1
@RTL8150_HW_CRC = common dso_local global i32 0, align 4
@RCR = common dso_local global i32 0, align 4
@TCR = common dso_local global i32 0, align 4
@CR = common dso_local global i32 0, align 4
@MSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @enable_net_traffic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_net_traffic(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %8 = call i32 @rtl8150_reset(%struct.TYPE_8__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = call i32 @dev_warn(i32* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %10, %1
  store i32 158, i32* %5, align 4
  store i32 216, i32* %4, align 4
  store i32 12, i32* %3, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 128
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @RTL8150_HW_CRC, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = call i32 @set_bit(i32 %21, i32* %23)
  br label %25

25:                                               ; preds = %20, %16
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = load i32, i32* @RCR, align 4
  %28 = call i32 @set_registers(%struct.TYPE_8__* %26, i32 %27, i32 1, i32* %5)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = load i32, i32* @TCR, align 4
  %31 = call i32 @set_registers(%struct.TYPE_8__* %29, i32 %30, i32 1, i32* %4)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %33 = load i32, i32* @CR, align 4
  %34 = call i32 @set_registers(%struct.TYPE_8__* %32, i32 %33, i32 1, i32* %3)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = load i32, i32* @MSR, align 4
  %37 = call i32 @get_registers(%struct.TYPE_8__* %35, i32 %36, i32 1, i32* %6)
  ret i32 0
}

declare dso_local i32 @rtl8150_reset(%struct.TYPE_8__*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @set_registers(%struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @get_registers(%struct.TYPE_8__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
