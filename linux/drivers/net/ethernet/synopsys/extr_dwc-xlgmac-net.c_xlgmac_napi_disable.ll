; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_napi_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_napi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, i32, %struct.xlgmac_channel*, i64 }
%struct.xlgmac_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*, i32)* @xlgmac_napi_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_napi_disable(%struct.xlgmac_pdata* %0, i32 %1) #0 {
  %3 = alloca %struct.xlgmac_pdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xlgmac_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %8 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %38

11:                                               ; preds = %2
  %12 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %13 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %12, i32 0, i32 2
  %14 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %13, align 8
  store %struct.xlgmac_channel* %14, %struct.xlgmac_channel** %5, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %32, %11
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %18 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %23 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %22, i32 0, i32 0
  %24 = call i32 @napi_disable(i32* %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %29 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %28, i32 0, i32 0
  %30 = call i32 @netif_napi_del(i32* %29)
  br label %31

31:                                               ; preds = %27, %21
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %36 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %35, i32 1
  store %struct.xlgmac_channel* %36, %struct.xlgmac_channel** %5, align 8
  br label %15

37:                                               ; preds = %15
  br label %49

38:                                               ; preds = %2
  %39 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %40 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %39, i32 0, i32 1
  %41 = call i32 @napi_disable(i32* %40)
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %46 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %45, i32 0, i32 1
  %47 = call i32 @netif_napi_del(i32* %46)
  br label %48

48:                                               ; preds = %44, %38
  br label %49

49:                                               ; preds = %48, %37
  ret void
}

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_napi_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
