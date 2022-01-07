; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.ca8210_priv* }
%struct.ca8210_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PHY_CURRENT_CHANNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"error setting channel, MLME-SET.confirm status = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, i64, i64)* @ca8210_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca8210_set_channel(%struct.ieee802154_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ieee802154_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ca8210_priv*, align 8
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %9, i32 0, i32 0
  %11 = load %struct.ca8210_priv*, %struct.ca8210_priv** %10, align 8
  store %struct.ca8210_priv* %11, %struct.ca8210_priv** %8, align 8
  %12 = load i32, i32* @PHY_CURRENT_CHANNEL, align 4
  %13 = load %struct.ca8210_priv*, %struct.ca8210_priv** %8, align 8
  %14 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = call i64 @mlme_set_request_sync(i32 %12, i32 0, i32 1, i64* %6, %struct.TYPE_2__* %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load %struct.ca8210_priv*, %struct.ca8210_priv** %8, align 8
  %21 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %19, %3
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @link_to_linux_err(i64 %27)
  ret i32 %28
}

declare dso_local i64 @mlme_set_request_sync(i32, i32, i32, i64*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @link_to_linux_err(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
