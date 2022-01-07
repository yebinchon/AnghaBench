; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_set_csma_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_set_csma_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.ca8210_priv* }
%struct.ca8210_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAC_MIN_BE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"error setting min be, MLME-SET.confirm status = %d\00", align 1
@MAC_MAX_BE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"error setting max be, MLME-SET.confirm status = %d\00", align 1
@MAC_MAX_CSMA_BACKOFFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"error setting max csma backoffs, MLME-SET.confirm status = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, i64, i64, i64)* @ca8210_set_csma_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca8210_set_csma_params(%struct.ieee802154_hw* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee802154_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ca8210_priv*, align 8
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %6, align 8
  %13 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %12, i32 0, i32 0
  %14 = load %struct.ca8210_priv*, %struct.ca8210_priv** %13, align 8
  store %struct.ca8210_priv* %14, %struct.ca8210_priv** %11, align 8
  %15 = load i32, i32* @MAC_MIN_BE, align 4
  %16 = load %struct.ca8210_priv*, %struct.ca8210_priv** %11, align 8
  %17 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = call i64 @mlme_set_request_sync(i32 %15, i32 0, i32 1, i64* %7, %struct.TYPE_2__* %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %4
  %23 = load %struct.ca8210_priv*, %struct.ca8210_priv** %11, align 8
  %24 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @link_to_linux_err(i64 %29)
  store i32 %30, i32* %5, align 4
  br label %66

31:                                               ; preds = %4
  %32 = load i32, i32* @MAC_MAX_BE, align 4
  %33 = load %struct.ca8210_priv*, %struct.ca8210_priv** %11, align 8
  %34 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = call i64 @mlme_set_request_sync(i32 %32, i32 0, i32 1, i64* %8, %struct.TYPE_2__* %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load %struct.ca8210_priv*, %struct.ca8210_priv** %11, align 8
  %41 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %10, align 8
  %45 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @link_to_linux_err(i64 %46)
  store i32 %47, i32* %5, align 4
  br label %66

48:                                               ; preds = %31
  %49 = load i32, i32* @MAC_MAX_CSMA_BACKOFFS, align 4
  %50 = load %struct.ca8210_priv*, %struct.ca8210_priv** %11, align 8
  %51 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = call i64 @mlme_set_request_sync(i32 %49, i32 0, i32 1, i64* %9, %struct.TYPE_2__* %52)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %48
  %57 = load %struct.ca8210_priv*, %struct.ca8210_priv** %11, align 8
  %58 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64 %61)
  br label %63

63:                                               ; preds = %56, %48
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @link_to_linux_err(i64 %64)
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %39, %22
  %67 = load i32, i32* %5, align 4
  ret i32 %67
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
