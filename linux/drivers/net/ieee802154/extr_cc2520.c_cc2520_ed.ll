; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_ed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_ed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.cc2520_private* }
%struct.cc2520_private = type { i32 }

@CC2520_RSSISTAT = common dso_local global i32 0, align 4
@RSSI_VALID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CC2520_RSSI = common dso_local global i32 0, align 4
@RSSI_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, i64*)* @cc2520_ed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc2520_ed(%struct.ieee802154_hw* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee802154_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.cc2520_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %10, i32 0, i32 0
  %12 = load %struct.cc2520_private*, %struct.cc2520_private** %11, align 8
  store %struct.cc2520_private* %12, %struct.cc2520_private** %6, align 8
  store i64 255, i64* %7, align 8
  %13 = load %struct.cc2520_private*, %struct.cc2520_private** %6, align 8
  %14 = load i32, i32* @CC2520_RSSISTAT, align 4
  %15 = call i32 @cc2520_read_register(%struct.cc2520_private* %13, i32 %14, i64* %7)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %40

20:                                               ; preds = %2
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @RSSI_VALID, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %40

27:                                               ; preds = %20
  %28 = load %struct.cc2520_private*, %struct.cc2520_private** %6, align 8
  %29 = load i32, i32* @CC2520_RSSI, align 4
  %30 = call i32 @cc2520_read_register(%struct.cc2520_private* %28, i32 %29, i64* %8)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %40

35:                                               ; preds = %27
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @RSSI_OFFSET, align 8
  %38 = sub nsw i64 %36, %37
  %39 = load i64*, i64** %5, align 8
  store i64 %38, i64* %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %35, %33, %24, %18
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @cc2520_read_register(%struct.cc2520_private*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
