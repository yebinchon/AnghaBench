; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_vnic_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_vnic_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.TYPE_6__*, i32, %struct.nfp_abm* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.nfp_eth_table_port* }
%struct.nfp_eth_table_port = type { i32 }
%struct.nfp_abm = type { i32 }
%struct.nfp_net = type { %struct.TYPE_5__, i32, %struct.nfp_abm_link* }
%struct.TYPE_5__ = type { i32 }
%struct.nfp_abm_link = type { i32, %struct.nfp_abm_link*, i32, i32, %struct.nfp_net*, i32, %struct.nfp_abm* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.nfp_net*, i32)* @nfp_abm_vnic_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_vnic_alloc(%struct.nfp_app* %0, %struct.nfp_net* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca %struct.nfp_net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_eth_table_port*, align 8
  %9 = alloca %struct.nfp_abm*, align 8
  %10 = alloca %struct.nfp_abm_link*, align 8
  %11 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store %struct.nfp_net* %1, %struct.nfp_net** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %13 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %18, i64 %20
  store %struct.nfp_eth_table_port* %21, %struct.nfp_eth_table_port** %8, align 8
  %22 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %23 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %22, i32 0, i32 2
  %24 = load %struct.nfp_abm*, %struct.nfp_abm** %23, align 8
  store %struct.nfp_abm* %24, %struct.nfp_abm** %9, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kzalloc(i32 48, i32 %25)
  %27 = bitcast i8* %26 to %struct.nfp_abm_link*
  store %struct.nfp_abm_link* %27, %struct.nfp_abm_link** %10, align 8
  %28 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %10, align 8
  %29 = icmp ne %struct.nfp_abm_link* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %112

33:                                               ; preds = %3
  %34 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %10, align 8
  %35 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %36 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %35, i32 0, i32 2
  store %struct.nfp_abm_link* %34, %struct.nfp_abm_link** %36, align 8
  %37 = load %struct.nfp_abm*, %struct.nfp_abm** %9, align 8
  %38 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %10, align 8
  %39 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %38, i32 0, i32 6
  store %struct.nfp_abm* %37, %struct.nfp_abm** %39, align 8
  %40 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %41 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %10, align 8
  %42 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %41, i32 0, i32 4
  store %struct.nfp_net* %40, %struct.nfp_net** %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %10, align 8
  %45 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %10, align 8
  %47 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %46, i32 0, i32 4
  %48 = load %struct.nfp_net*, %struct.nfp_net** %47, align 8
  %49 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %10, align 8
  %52 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %10, align 8
  %54 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %53, i32 0, i32 3
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %10, align 8
  %57 = call i32 @nfp_abm_ctrl_read_params(%struct.nfp_abm_link* %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %33
  br label %108

61:                                               ; preds = %33
  %62 = load %struct.nfp_abm*, %struct.nfp_abm** %9, align 8
  %63 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i8* @kzalloc(i32 %64, i32 %65)
  %67 = bitcast i8* %66 to %struct.nfp_abm_link*
  %68 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %10, align 8
  %69 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %68, i32 0, i32 1
  store %struct.nfp_abm_link* %67, %struct.nfp_abm_link** %69, align 8
  %70 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %10, align 8
  %71 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %70, i32 0, i32 1
  %72 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %71, align 8
  %73 = icmp ne %struct.nfp_abm_link* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %61
  br label %108

75:                                               ; preds = %61
  %76 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %77 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.nfp_eth_table_port*, %struct.nfp_eth_table_port** %8, align 8
  %80 = getelementptr inbounds %struct.nfp_eth_table_port, %struct.nfp_eth_table_port* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @nfp_eth_set_configured(i32 %78, i32 %81, i32 1)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %103

86:                                               ; preds = %75
  %87 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %88 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @netif_keep_dst(i32 %90)
  %92 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %93 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load %struct.nfp_abm*, %struct.nfp_abm** %9, align 8
  %96 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @nfp_abm_vnic_set_mac(%struct.TYPE_6__* %94, %struct.nfp_abm* %95, %struct.nfp_net* %96, i32 %97)
  %99 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %10, align 8
  %100 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %99, i32 0, i32 2
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call i32 @INIT_RADIX_TREE(i32* %100, i32 %101)
  store i32 0, i32* %4, align 4
  br label %112

103:                                              ; preds = %85
  %104 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %10, align 8
  %105 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %104, i32 0, i32 1
  %106 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %105, align 8
  %107 = call i32 @kfree(%struct.nfp_abm_link* %106)
  br label %108

108:                                              ; preds = %103, %74, %60
  %109 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %10, align 8
  %110 = call i32 @kfree(%struct.nfp_abm_link* %109)
  %111 = load i32, i32* %11, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %108, %86, %30
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nfp_abm_ctrl_read_params(%struct.nfp_abm_link*) #1

declare dso_local i32 @nfp_eth_set_configured(i32, i32, i32) #1

declare dso_local i32 @netif_keep_dst(i32) #1

declare dso_local i32 @nfp_abm_vnic_set_mac(%struct.TYPE_6__*, %struct.nfp_abm*, %struct.nfp_net*, i32) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @kfree(%struct.nfp_abm_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
