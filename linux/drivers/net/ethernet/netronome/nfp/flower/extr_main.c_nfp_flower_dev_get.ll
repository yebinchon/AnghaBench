; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_dev_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_dev_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32* }
%struct.nfp_app = type { i32* }
%struct.nfp_reprs = type { i64, i32* }

@NFP_FLOWER_CMSG_PORT_TYPE = common dso_local global i32 0, align 4
@NFP_FLOWER_CMSG_PORT_TYPE_OTHER_PORT = common dso_local global i64 0, align 8
@NFP_FLOWER_CMSG_PORT_PHYS_PORT_NUM = common dso_local global i32 0, align 4
@NFP_REPR_TYPE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.nfp_app*, i32, i32*)* @nfp_flower_dev_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @nfp_flower_dev_get(%struct.nfp_app* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfp_reprs*, align 8
  %10 = alloca i64, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @NFP_FLOWER_CMSG_PORT_TYPE, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @FIELD_GET(i32 %11, i32 %12)
  %14 = load i64, i64* @NFP_FLOWER_CMSG_PORT_TYPE_OTHER_PORT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32*, i32** %7, align 8
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32, i32* @NFP_FLOWER_CMSG_PORT_PHYS_PORT_NUM, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @FIELD_GET(i32 %22, i32 %23)
  store i64 %24, i64* %10, align 8
  %25 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call %struct.nfp_reprs* @nfp_flower_get_netdev_from_internal_port_id(%struct.nfp_app* %25, i64 %26)
  %28 = bitcast %struct.nfp_reprs* %27 to %struct.net_device*
  store %struct.net_device* %28, %struct.net_device** %4, align 8
  br label %65

29:                                               ; preds = %3
  %30 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @nfp_flower_repr_get_type_and_port(%struct.nfp_app* %30, i32 %31, i64* %10)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @NFP_REPR_TYPE_MAX, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %65

37:                                               ; preds = %29
  %38 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %39 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.nfp_reprs* @rcu_dereference(i32 %44)
  store %struct.nfp_reprs* %45, %struct.nfp_reprs** %9, align 8
  %46 = load %struct.nfp_reprs*, %struct.nfp_reprs** %9, align 8
  %47 = icmp ne %struct.nfp_reprs* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %65

49:                                               ; preds = %37
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.nfp_reprs*, %struct.nfp_reprs** %9, align 8
  %52 = getelementptr inbounds %struct.nfp_reprs, %struct.nfp_reprs* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp uge i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store %struct.net_device* null, %struct.net_device** %4, align 8
  br label %65

56:                                               ; preds = %49
  %57 = load %struct.nfp_reprs*, %struct.nfp_reprs** %9, align 8
  %58 = getelementptr inbounds %struct.nfp_reprs, %struct.nfp_reprs* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.nfp_reprs* @rcu_dereference(i32 %62)
  %64 = bitcast %struct.nfp_reprs* %63 to %struct.net_device*
  store %struct.net_device* %64, %struct.net_device** %4, align 8
  br label %65

65:                                               ; preds = %56, %55, %48, %36, %21
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  ret %struct.net_device* %66
}

declare dso_local i64 @FIELD_GET(i32, i32) #1

declare dso_local %struct.nfp_reprs* @nfp_flower_get_netdev_from_internal_port_id(%struct.nfp_app*, i64) #1

declare dso_local i32 @nfp_flower_repr_get_type_and_port(%struct.nfp_app*, i32, i64*) #1

declare dso_local %struct.nfp_reprs* @rcu_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
