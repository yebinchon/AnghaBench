; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_set_frame_retries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_set_frame_retries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.ca8210_priv* }
%struct.ca8210_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAC_MAX_FRAME_RETRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"error setting frame retries, MLME-SET.confirm status = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, i32)* @ca8210_set_frame_retries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca8210_set_frame_retries(%struct.ieee802154_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee802154_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ca8210_priv*, align 8
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %7, i32 0, i32 0
  %9 = load %struct.ca8210_priv*, %struct.ca8210_priv** %8, align 8
  store %struct.ca8210_priv* %9, %struct.ca8210_priv** %6, align 8
  %10 = load i32, i32* @MAC_MAX_FRAME_RETRIES, align 4
  %11 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %12 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call i64 @mlme_set_request_sync(i32 %10, i32 0, i32 1, i32* %4, %struct.TYPE_2__* %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.ca8210_priv*, %struct.ca8210_priv** %6, align 8
  %19 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %24

24:                                               ; preds = %17, %2
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @link_to_linux_err(i64 %25)
  ret i32 %26
}

declare dso_local i64 @mlme_set_request_sync(i32, i32, i32, i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @link_to_linux_err(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
