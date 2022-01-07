; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app.c_nfp_app_netdev_feat_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_app.c_nfp_app_netdev_feat_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32* }
%struct.net_device = type { i32 }
%struct.nfp_net = type { %struct.nfp_app* }
%struct.nfp_reprs = type { i32, i32* }

@__NFP_REPR_TYPE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_app*, %struct.net_device*)* @nfp_app_netdev_feat_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_app_netdev_feat_change(%struct.nfp_app* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.nfp_net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_reprs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call i32 @nfp_netdev_is_nfp_net(%struct.net_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %72

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.nfp_net* @netdev_priv(%struct.net_device* %15)
  store %struct.nfp_net* %16, %struct.nfp_net** %5, align 8
  %17 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %18 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %17, i32 0, i32 0
  %19 = load %struct.nfp_app*, %struct.nfp_app** %18, align 8
  %20 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %21 = icmp ne %struct.nfp_app* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %72

23:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %69, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @__NFP_REPR_TYPE_MAX, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %72

28:                                               ; preds = %24
  %29 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %30 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @rtnl_dereference(i32 %35)
  %37 = bitcast i8* %36 to %struct.nfp_reprs*
  store %struct.nfp_reprs* %37, %struct.nfp_reprs** %7, align 8
  %38 = load %struct.nfp_reprs*, %struct.nfp_reprs** %7, align 8
  %39 = icmp ne %struct.nfp_reprs* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %28
  br label %69

41:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %65, %41
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.nfp_reprs*, %struct.nfp_reprs** %7, align 8
  %45 = getelementptr inbounds %struct.nfp_reprs, %struct.nfp_reprs* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %42
  %49 = load %struct.nfp_reprs*, %struct.nfp_reprs** %7, align 8
  %50 = getelementptr inbounds %struct.nfp_reprs, %struct.nfp_reprs* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @rtnl_dereference(i32 %55)
  %57 = bitcast i8* %56 to %struct.net_device*
  store %struct.net_device* %57, %struct.net_device** %9, align 8
  %58 = load %struct.net_device*, %struct.net_device** %9, align 8
  %59 = icmp ne %struct.net_device* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %48
  br label %65

61:                                               ; preds = %48
  %62 = load %struct.net_device*, %struct.net_device** %9, align 8
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = call i32 @nfp_repr_transfer_features(%struct.net_device* %62, %struct.net_device* %63)
  br label %65

65:                                               ; preds = %61, %60
  %66 = load i32, i32* %8, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %42

68:                                               ; preds = %42
  br label %69

69:                                               ; preds = %68, %40
  %70 = load i32, i32* %6, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %24

72:                                               ; preds = %13, %22, %24
  ret void
}

declare dso_local i32 @nfp_netdev_is_nfp_net(%struct.net_device*) #1

declare dso_local %struct.nfp_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local i32 @nfp_repr_transfer_features(%struct.net_device*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
