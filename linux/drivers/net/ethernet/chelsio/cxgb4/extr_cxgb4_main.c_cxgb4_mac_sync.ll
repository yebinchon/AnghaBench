; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_mac_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_cxgb4_mac_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port_info = type { i32, %struct.adapter* }
%struct.adapter = type { i32 }
%struct.hash_mac_addr = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*)* @cxgb4_mac_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4_mac_sync(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [1 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [1 x i32*], align 8
  %15 = alloca %struct.hash_mac_addr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.port_info* @netdev_priv(%struct.net_device* %16)
  store %struct.port_info* %17, %struct.port_info** %6, align 8
  %18 = load %struct.port_info*, %struct.port_info** %6, align 8
  %19 = getelementptr inbounds %struct.port_info, %struct.port_info* %18, i32 0, i32 1
  %20 = load %struct.adapter*, %struct.adapter** %19, align 8
  store %struct.adapter* %20, %struct.adapter** %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %21 = bitcast [1 x i32]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 4, i1 false)
  store i32 0, i32* %12, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @is_unicast_ether_addr(i32* %22)
  store i32 %23, i32* %13, align 4
  %24 = getelementptr inbounds [1 x i32*], [1 x i32*]* %14, i64 0, i64 0
  %25 = load i32*, i32** %5, align 8
  store i32* %25, i32** %24, align 8
  %26 = load %struct.adapter*, %struct.adapter** %7, align 8
  %27 = load %struct.port_info*, %struct.port_info** %6, align 8
  %28 = getelementptr inbounds %struct.port_info, %struct.port_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = getelementptr inbounds [1 x i32*], [1 x i32*]* %14, i64 0, i64 0
  %32 = getelementptr inbounds [1 x i32], [1 x i32]* %11, i64 0, i64 0
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %37

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %36, %35
  %38 = phi i64* [ %10, %35 ], [ %9, %36 ]
  %39 = call i32 @cxgb4_alloc_mac_filt(%struct.adapter* %26, i32 %29, i32 %30, i32 1, i32** %31, i32* %32, i64* %38, i32 0)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %71

43:                                               ; preds = %37
  %44 = load i64, i64* %10, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %70

49:                                               ; preds = %46, %43
  %50 = load i32, i32* @GFP_ATOMIC, align 4
  %51 = call %struct.hash_mac_addr* @kzalloc(i32 8, i32 %50)
  store %struct.hash_mac_addr* %51, %struct.hash_mac_addr** %15, align 8
  %52 = load %struct.hash_mac_addr*, %struct.hash_mac_addr** %15, align 8
  %53 = icmp ne %struct.hash_mac_addr* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %79

57:                                               ; preds = %49
  %58 = load %struct.hash_mac_addr*, %struct.hash_mac_addr** %15, align 8
  %59 = getelementptr inbounds %struct.hash_mac_addr, %struct.hash_mac_addr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @ether_addr_copy(i32 %60, i32* %61)
  %63 = load %struct.hash_mac_addr*, %struct.hash_mac_addr** %15, align 8
  %64 = getelementptr inbounds %struct.hash_mac_addr, %struct.hash_mac_addr* %63, i32 0, i32 0
  %65 = load %struct.adapter*, %struct.adapter** %7, align 8
  %66 = getelementptr inbounds %struct.adapter, %struct.adapter* %65, i32 0, i32 0
  %67 = call i32 @list_add_tail(i32* %64, i32* %66)
  %68 = load %struct.port_info*, %struct.port_info** %6, align 8
  %69 = call i32 @cxgb4_set_addr_hash(%struct.port_info* %68)
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %57, %46
  br label %71

71:                                               ; preds = %70, %42
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  br label %77

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i32 [ %75, %74 ], [ 0, %76 ]
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %54
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @is_unicast_ether_addr(i32*) #1

declare dso_local i32 @cxgb4_alloc_mac_filt(%struct.adapter*, i32, i32, i32, i32**, i32*, i64*, i32) #1

declare dso_local %struct.hash_mac_addr* @kzalloc(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @cxgb4_set_addr_hash(%struct.port_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
