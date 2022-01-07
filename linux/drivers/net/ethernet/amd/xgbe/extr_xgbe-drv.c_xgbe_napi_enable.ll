; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_napi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_napi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i32, %struct.xgbe_channel**, i64 }
%struct.xgbe_channel = type { i32 }

@xgbe_one_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@xgbe_all_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, i32)* @xgbe_napi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_napi_enable(%struct.xgbe_prv_data* %0, i32 %1) #0 {
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xgbe_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %41, %11
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %15 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %12
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %20 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %19, i32 0, i32 3
  %21 = load %struct.xgbe_channel**, %struct.xgbe_channel*** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.xgbe_channel*, %struct.xgbe_channel** %21, i64 %23
  %25 = load %struct.xgbe_channel*, %struct.xgbe_channel** %24, align 8
  store %struct.xgbe_channel* %25, %struct.xgbe_channel** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %18
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %30 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.xgbe_channel*, %struct.xgbe_channel** %5, align 8
  %33 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %32, i32 0, i32 0
  %34 = load i32, i32* @xgbe_one_poll, align 4
  %35 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %36 = call i32 @netif_napi_add(i32 %31, i32* %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %28, %18
  %38 = load %struct.xgbe_channel*, %struct.xgbe_channel** %5, align 8
  %39 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %38, i32 0, i32 0
  %40 = call i32 @napi_enable(i32* %39)
  br label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %12

44:                                               ; preds = %12
  br label %61

45:                                               ; preds = %2
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %50 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %53 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %52, i32 0, i32 1
  %54 = load i32, i32* @xgbe_all_poll, align 4
  %55 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %56 = call i32 @netif_napi_add(i32 %51, i32* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %48, %45
  %58 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %59 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %58, i32 0, i32 1
  %60 = call i32 @napi_enable(i32* %59)
  br label %61

61:                                               ; preds = %57, %44
  ret void
}

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
