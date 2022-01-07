; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_napi_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_napi_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.veth_priv = type { %struct.veth_rq* }
%struct.veth_rq = type { i32, i32, i32 }

@veth_ptr_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @veth_napi_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @veth_napi_del(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.veth_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.veth_rq*, align 8
  %6 = alloca %struct.veth_rq*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.veth_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.veth_priv* %8, %struct.veth_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %28, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load %struct.veth_priv*, %struct.veth_priv** %3, align 8
  %17 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %16, i32 0, i32 0
  %18 = load %struct.veth_rq*, %struct.veth_rq** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %18, i64 %20
  store %struct.veth_rq* %21, %struct.veth_rq** %5, align 8
  %22 = load %struct.veth_rq*, %struct.veth_rq** %5, align 8
  %23 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %22, i32 0, i32 2
  %24 = call i32 @napi_disable(i32* %23)
  %25 = load %struct.veth_rq*, %struct.veth_rq** %5, align 8
  %26 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %25, i32 0, i32 2
  %27 = call i32 @napi_hash_del(i32* %26)
  br label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %9

31:                                               ; preds = %9
  %32 = call i32 (...) @synchronize_net()
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %55, %31
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  %40 = load %struct.veth_priv*, %struct.veth_priv** %3, align 8
  %41 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %40, i32 0, i32 0
  %42 = load %struct.veth_rq*, %struct.veth_rq** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %42, i64 %44
  store %struct.veth_rq* %45, %struct.veth_rq** %6, align 8
  %46 = load %struct.veth_rq*, %struct.veth_rq** %6, align 8
  %47 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %46, i32 0, i32 2
  %48 = call i32 @netif_napi_del(i32* %47)
  %49 = load %struct.veth_rq*, %struct.veth_rq** %6, align 8
  %50 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  %51 = load %struct.veth_rq*, %struct.veth_rq** %6, align 8
  %52 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %51, i32 0, i32 1
  %53 = load i32, i32* @veth_ptr_free, align 4
  %54 = call i32 @ptr_ring_cleanup(i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %39
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %33

58:                                               ; preds = %33
  ret void
}

declare dso_local %struct.veth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @napi_hash_del(i32*) #1

declare dso_local i32 @synchronize_net(...) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @ptr_ring_cleanup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
