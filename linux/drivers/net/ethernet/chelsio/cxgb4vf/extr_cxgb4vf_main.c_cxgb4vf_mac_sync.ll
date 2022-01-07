; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_cxgb4vf_mac_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_cxgb4vf_mac_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.port_info = type { i32, %struct.adapter* }
%struct.adapter = type { i32 }
%struct.hash_mac_addr = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*)* @cxgb4vf_mac_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4vf_mac_sync(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [1 x i32*], align 8
  %14 = alloca %struct.hash_mac_addr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.port_info* @netdev_priv(%struct.net_device* %15)
  store %struct.port_info* %16, %struct.port_info** %6, align 8
  %17 = load %struct.port_info*, %struct.port_info** %6, align 8
  %18 = getelementptr inbounds %struct.port_info, %struct.port_info* %17, i32 0, i32 1
  %19 = load %struct.adapter*, %struct.adapter** %18, align 8
  store %struct.adapter* %19, %struct.adapter** %7, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @is_unicast_ether_addr(i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = getelementptr inbounds [1 x i32*], [1 x i32*]* %13, i64 0, i64 0
  %23 = load i32*, i32** %5, align 8
  store i32* %23, i32** %22, align 8
  %24 = load %struct.adapter*, %struct.adapter** %7, align 8
  %25 = load %struct.port_info*, %struct.port_info** %6, align 8
  %26 = getelementptr inbounds %struct.port_info, %struct.port_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = getelementptr inbounds [1 x i32*], [1 x i32*]* %13, i64 0, i64 0
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %34

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33, %32
  %35 = phi i64* [ %10, %32 ], [ %9, %33 ]
  %36 = call i32 @t4vf_alloc_mac_filt(%struct.adapter* %24, i32 %27, i32 %28, i32 1, i32** %29, i32* null, i64* %35, i32 0)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %68

40:                                               ; preds = %34
  %41 = load i64, i64* %10, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %43, %40
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = call %struct.hash_mac_addr* @kzalloc(i32 8, i32 %47)
  store %struct.hash_mac_addr* %48, %struct.hash_mac_addr** %14, align 8
  %49 = load %struct.hash_mac_addr*, %struct.hash_mac_addr** %14, align 8
  %50 = icmp ne %struct.hash_mac_addr* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %76

54:                                               ; preds = %46
  %55 = load %struct.hash_mac_addr*, %struct.hash_mac_addr** %14, align 8
  %56 = getelementptr inbounds %struct.hash_mac_addr, %struct.hash_mac_addr* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @ether_addr_copy(i32 %57, i32* %58)
  %60 = load %struct.hash_mac_addr*, %struct.hash_mac_addr** %14, align 8
  %61 = getelementptr inbounds %struct.hash_mac_addr, %struct.hash_mac_addr* %60, i32 0, i32 0
  %62 = load %struct.adapter*, %struct.adapter** %7, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 0
  %64 = call i32 @list_add_tail(i32* %61, i32* %63)
  %65 = load %struct.port_info*, %struct.port_info** %6, align 8
  %66 = call i32 @cxgb4vf_set_addr_hash(%struct.port_info* %65)
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %54, %43
  br label %68

68:                                               ; preds = %67, %39
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  br label %74

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %51
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_unicast_ether_addr(i32*) #1

declare dso_local i32 @t4vf_alloc_mac_filt(%struct.adapter*, i32, i32, i32, i32**, i32*, i64*, i32) #1

declare dso_local %struct.hash_mac_addr* @kzalloc(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @cxgb4vf_set_addr_hash(%struct.port_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
