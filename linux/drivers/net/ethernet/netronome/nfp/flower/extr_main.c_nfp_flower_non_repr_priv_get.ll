; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_non_repr_priv_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_non_repr_priv_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_flower_non_repr_priv = type { i32, %struct.net_device* }
%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32 }
%struct.net_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfp_flower_non_repr_priv* @nfp_flower_non_repr_priv_get(%struct.nfp_app* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.nfp_flower_non_repr_priv*, align 8
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nfp_flower_priv*, align 8
  %7 = alloca %struct.nfp_flower_non_repr_priv*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %9 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %8, i32 0, i32 0
  %10 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  store %struct.nfp_flower_priv* %10, %struct.nfp_flower_priv** %6, align 8
  %11 = load %struct.nfp_app*, %struct.nfp_app** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.nfp_flower_non_repr_priv* @nfp_flower_non_repr_priv_lookup(%struct.nfp_app* %11, %struct.net_device* %12)
  store %struct.nfp_flower_non_repr_priv* %13, %struct.nfp_flower_non_repr_priv** %7, align 8
  %14 = load %struct.nfp_flower_non_repr_priv*, %struct.nfp_flower_non_repr_priv** %7, align 8
  %15 = icmp ne %struct.nfp_flower_non_repr_priv* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %32

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.nfp_flower_non_repr_priv* @kzalloc(i32 16, i32 %18)
  store %struct.nfp_flower_non_repr_priv* %19, %struct.nfp_flower_non_repr_priv** %7, align 8
  %20 = load %struct.nfp_flower_non_repr_priv*, %struct.nfp_flower_non_repr_priv** %7, align 8
  %21 = icmp ne %struct.nfp_flower_non_repr_priv* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store %struct.nfp_flower_non_repr_priv* null, %struct.nfp_flower_non_repr_priv** %3, align 8
  br label %36

23:                                               ; preds = %17
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = load %struct.nfp_flower_non_repr_priv*, %struct.nfp_flower_non_repr_priv** %7, align 8
  %26 = getelementptr inbounds %struct.nfp_flower_non_repr_priv, %struct.nfp_flower_non_repr_priv* %25, i32 0, i32 1
  store %struct.net_device* %24, %struct.net_device** %26, align 8
  %27 = load %struct.nfp_flower_non_repr_priv*, %struct.nfp_flower_non_repr_priv** %7, align 8
  %28 = getelementptr inbounds %struct.nfp_flower_non_repr_priv, %struct.nfp_flower_non_repr_priv* %27, i32 0, i32 0
  %29 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %6, align 8
  %30 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %29, i32 0, i32 0
  %31 = call i32 @list_add(i32* %28, i32* %30)
  br label %32

32:                                               ; preds = %23, %16
  %33 = load %struct.nfp_flower_non_repr_priv*, %struct.nfp_flower_non_repr_priv** %7, align 8
  %34 = call i32 @__nfp_flower_non_repr_priv_get(%struct.nfp_flower_non_repr_priv* %33)
  %35 = load %struct.nfp_flower_non_repr_priv*, %struct.nfp_flower_non_repr_priv** %7, align 8
  store %struct.nfp_flower_non_repr_priv* %35, %struct.nfp_flower_non_repr_priv** %3, align 8
  br label %36

36:                                               ; preds = %32, %22
  %37 = load %struct.nfp_flower_non_repr_priv*, %struct.nfp_flower_non_repr_priv** %3, align 8
  ret %struct.nfp_flower_non_repr_priv* %37
}

declare dso_local %struct.nfp_flower_non_repr_priv* @nfp_flower_non_repr_priv_lookup(%struct.nfp_app*, %struct.net_device*) #1

declare dso_local %struct.nfp_flower_non_repr_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @__nfp_flower_non_repr_priv_get(%struct.nfp_flower_non_repr_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
