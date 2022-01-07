; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.cc2520_private* }
%struct.cc2520_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"trying to set channel\0A\00", align 1
@CC2520_MINCHANNEL = common dso_local global i64 0, align 8
@CC2520_MAXCHANNEL = common dso_local global i64 0, align 8
@CC2520_FREQCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, i64, i64)* @cc2520_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc2520_set_channel(%struct.ieee802154_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ieee802154_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cc2520_private*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %9, i32 0, i32 0
  %11 = load %struct.cc2520_private*, %struct.cc2520_private** %10, align 8
  store %struct.cc2520_private* %11, %struct.cc2520_private** %7, align 8
  %12 = load %struct.cc2520_private*, %struct.cc2520_private** %7, align 8
  %13 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %17 = load i64, i64* %5, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @CC2520_MINCHANNEL, align 8
  %23 = icmp slt i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @CC2520_MAXCHANNEL, align 8
  %28 = icmp sgt i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.cc2520_private*, %struct.cc2520_private** %7, align 8
  %32 = load i32, i32* @CC2520_FREQCTRL, align 4
  %33 = load i64, i64* %6, align 8
  %34 = sub nsw i64 %33, 11
  %35 = mul nsw i64 5, %34
  %36 = add nsw i64 11, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @cc2520_write_register(%struct.cc2520_private* %31, i32 %32, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  ret i32 %39
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cc2520_write_register(%struct.cc2520_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
