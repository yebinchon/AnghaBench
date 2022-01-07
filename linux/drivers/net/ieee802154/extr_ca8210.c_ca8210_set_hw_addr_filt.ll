; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_set_hw_addr_filt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_set_hw_addr_filt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.ca8210_priv* }
%struct.ca8210_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee802154_hw_addr_filt = type { i32, i32, i32 }

@IEEE802154_AFILT_PANID_CHANGED = common dso_local global i64 0, align 8
@MAC_PAN_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"error setting pan id, MLME-SET.confirm status = %d\00", align 1
@IEEE802154_AFILT_SADDR_CHANGED = common dso_local global i64 0, align 8
@MAC_SHORT_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"error setting short address, MLME-SET.confirm status = %d\00", align 1
@IEEE802154_AFILT_IEEEADDR_CHANGED = common dso_local global i64 0, align 8
@NS_IEEE_ADDRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"error setting ieee address, MLME-SET.confirm status = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, %struct.ieee802154_hw_addr_filt*, i64)* @ca8210_set_hw_addr_filt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ca8210_set_hw_addr_filt(%struct.ieee802154_hw* %0, %struct.ieee802154_hw_addr_filt* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee802154_hw*, align 8
  %6 = alloca %struct.ieee802154_hw_addr_filt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ca8210_priv*, align 8
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %5, align 8
  store %struct.ieee802154_hw_addr_filt* %1, %struct.ieee802154_hw_addr_filt** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %10 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %5, align 8
  %11 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %10, i32 0, i32 0
  %12 = load %struct.ca8210_priv*, %struct.ca8210_priv** %11, align 8
  store %struct.ca8210_priv* %12, %struct.ca8210_priv** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @IEEE802154_AFILT_PANID_CHANGED, align 8
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %3
  %18 = load i32, i32* @MAC_PAN_ID, align 4
  %19 = load %struct.ieee802154_hw_addr_filt*, %struct.ieee802154_hw_addr_filt** %6, align 8
  %20 = getelementptr inbounds %struct.ieee802154_hw_addr_filt, %struct.ieee802154_hw_addr_filt* %19, i32 0, i32 2
  %21 = load %struct.ca8210_priv*, %struct.ca8210_priv** %9, align 8
  %22 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i64 @mlme_set_request_sync(i32 %18, i32 0, i32 2, i32* %20, %struct.TYPE_2__* %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %17
  %28 = load %struct.ca8210_priv*, %struct.ca8210_priv** %9, align 8
  %29 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @link_to_linux_err(i64 %34)
  store i32 %35, i32* %4, align 4
  br label %88

36:                                               ; preds = %17
  br label %37

37:                                               ; preds = %36, %3
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @IEEE802154_AFILT_SADDR_CHANGED, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %37
  %43 = load i32, i32* @MAC_SHORT_ADDRESS, align 4
  %44 = load %struct.ieee802154_hw_addr_filt*, %struct.ieee802154_hw_addr_filt** %6, align 8
  %45 = getelementptr inbounds %struct.ieee802154_hw_addr_filt, %struct.ieee802154_hw_addr_filt* %44, i32 0, i32 1
  %46 = load %struct.ca8210_priv*, %struct.ca8210_priv** %9, align 8
  %47 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = call i64 @mlme_set_request_sync(i32 %43, i32 0, i32 2, i32* %45, %struct.TYPE_2__* %48)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %42
  %53 = load %struct.ca8210_priv*, %struct.ca8210_priv** %9, align 8
  %54 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @link_to_linux_err(i64 %59)
  store i32 %60, i32* %4, align 4
  br label %88

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %61, %37
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @IEEE802154_AFILT_IEEEADDR_CHANGED, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %62
  %68 = load i32, i32* @NS_IEEE_ADDRESS, align 4
  %69 = load %struct.ieee802154_hw_addr_filt*, %struct.ieee802154_hw_addr_filt** %6, align 8
  %70 = getelementptr inbounds %struct.ieee802154_hw_addr_filt, %struct.ieee802154_hw_addr_filt* %69, i32 0, i32 0
  %71 = load %struct.ca8210_priv*, %struct.ca8210_priv** %9, align 8
  %72 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = call i64 @mlme_set_request_sync(i32 %68, i32 0, i32 8, i32* %70, %struct.TYPE_2__* %73)
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %67
  %78 = load %struct.ca8210_priv*, %struct.ca8210_priv** %9, align 8
  %79 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @dev_err(i32* %81, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %82)
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @link_to_linux_err(i64 %84)
  store i32 %85, i32* %4, align 4
  br label %88

86:                                               ; preds = %67
  br label %87

87:                                               ; preds = %86, %62
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %77, %52, %27
  %89 = load i32, i32* %4, align 4
  ret i32 %89
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
