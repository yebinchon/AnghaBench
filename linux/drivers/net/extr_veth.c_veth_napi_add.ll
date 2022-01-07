; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_napi_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_napi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.veth_priv = type { %struct.veth_rq* }
%struct.veth_rq = type { i32, i32 }

@VETH_RING_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@veth_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@veth_ptr_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @veth_napi_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @veth_napi_add(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.veth_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.veth_rq*, align 8
  %8 = alloca %struct.veth_rq*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.veth_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.veth_priv* %10, %struct.veth_priv** %4, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %33, %1
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %11
  %18 = load %struct.veth_priv*, %struct.veth_priv** %4, align 8
  %19 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %18, i32 0, i32 0
  %20 = load %struct.veth_rq*, %struct.veth_rq** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %20, i64 %22
  store %struct.veth_rq* %23, %struct.veth_rq** %7, align 8
  %24 = load %struct.veth_rq*, %struct.veth_rq** %7, align 8
  %25 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %24, i32 0, i32 0
  %26 = load i32, i32* @VETH_RING_SIZE, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32 @ptr_ring_init(i32* %25, i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %63

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %11

36:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %59, %36
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %37
  %44 = load %struct.veth_priv*, %struct.veth_priv** %4, align 8
  %45 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %44, i32 0, i32 0
  %46 = load %struct.veth_rq*, %struct.veth_rq** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %46, i64 %48
  store %struct.veth_rq* %49, %struct.veth_rq** %8, align 8
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = load %struct.veth_rq*, %struct.veth_rq** %8, align 8
  %52 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %51, i32 0, i32 1
  %53 = load i32, i32* @veth_poll, align 4
  %54 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %55 = call i32 @netif_napi_add(%struct.net_device* %50, i32* %52, i32 %53, i32 %54)
  %56 = load %struct.veth_rq*, %struct.veth_rq** %8, align 8
  %57 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %56, i32 0, i32 1
  %58 = call i32 @napi_enable(i32* %57)
  br label %59

59:                                               ; preds = %43
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %37

62:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %84

63:                                               ; preds = %31
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %79, %63
  %67 = load i32, i32* %6, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = load %struct.veth_priv*, %struct.veth_priv** %4, align 8
  %71 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %70, i32 0, i32 0
  %72 = load %struct.veth_rq*, %struct.veth_rq** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %72, i64 %74
  %76 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %75, i32 0, i32 0
  %77 = load i32, i32* @veth_ptr_free, align 4
  %78 = call i32 @ptr_ring_cleanup(i32* %76, i32 %77)
  br label %79

79:                                               ; preds = %69
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %6, align 4
  br label %66

82:                                               ; preds = %66
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %82, %62
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.veth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ptr_ring_init(i32*, i32, i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @ptr_ring_cleanup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
