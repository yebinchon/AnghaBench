; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_napi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_napi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, i32, i32, %struct.xlgmac_channel*, i64 }
%struct.xlgmac_channel = type { i32 }

@xlgmac_one_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@xlgmac_all_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*, i32)* @xlgmac_napi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_napi_enable(%struct.xlgmac_pdata* %0, i32 %1) #0 {
  %3 = alloca %struct.xlgmac_pdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xlgmac_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %8 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %43

11:                                               ; preds = %2
  %12 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %13 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %12, i32 0, i32 3
  %14 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %13, align 8
  store %struct.xlgmac_channel* %14, %struct.xlgmac_channel** %5, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %37, %11
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %18 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %26 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %29 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %28, i32 0, i32 0
  %30 = load i32, i32* @xlgmac_one_poll, align 4
  %31 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %32 = call i32 @netif_napi_add(i32 %27, i32* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %24, %21
  %34 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %35 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %34, i32 0, i32 0
  %36 = call i32 @napi_enable(i32* %35)
  br label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %41 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %40, i32 1
  store %struct.xlgmac_channel* %41, %struct.xlgmac_channel** %5, align 8
  br label %15

42:                                               ; preds = %15
  br label %59

43:                                               ; preds = %2
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %48 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %51 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %50, i32 0, i32 1
  %52 = load i32, i32* @xlgmac_all_poll, align 4
  %53 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %54 = call i32 @netif_napi_add(i32 %49, i32* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %46, %43
  %56 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %57 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %56, i32 0, i32 1
  %58 = call i32 @napi_enable(i32* %57)
  br label %59

59:                                               ; preds = %55, %42
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
