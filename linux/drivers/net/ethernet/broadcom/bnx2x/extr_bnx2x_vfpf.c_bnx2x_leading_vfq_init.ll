; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_leading_vfq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_vfpf.c_bnx2x_leading_vfq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_virtf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.bnx2x_vf_queue = type { i32, i32, i32, i32, i32, i32 }

@mac_rdata = common dso_local global i32 0, align 4
@BNX2X_FILTER_MAC_PENDING = common dso_local global i32 0, align 4
@BNX2X_OBJ_TYPE_RX_TX = common dso_local global i32 0, align 4
@vlan_rdata = common dso_local global i32 0, align 4
@BNX2X_FILTER_VLAN_PENDING = common dso_local global i32 0, align 4
@vlan_mac_rdata = common dso_local global i32 0, align 4
@BNX2X_FILTER_VLAN_MAC_PENDING = common dso_local global i32 0, align 4
@mcast_rdata = common dso_local global i32 0, align 4
@BNX2X_FILTER_MCAST_PENDING = common dso_local global i32 0, align 4
@rss_rdata = common dso_local global i32 0, align 4
@BNX2X_FILTER_RSS_CONF_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_virtf*, %struct.bnx2x_vf_queue*)* @bnx2x_leading_vfq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_leading_vfq_init(%struct.bnx2x* %0, %struct.bnx2x_virtf* %1, %struct.bnx2x_vf_queue* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_virtf*, align 8
  %6 = alloca %struct.bnx2x_vf_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_virtf* %1, %struct.bnx2x_virtf** %5, align 8
  store %struct.bnx2x_vf_queue* %2, %struct.bnx2x_vf_queue** %6, align 8
  %9 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %10 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %11 = call i32 @vfq_cl_id(%struct.bnx2x_virtf* %9, %struct.bnx2x_vf_queue* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @FW_VF_HANDLE(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %17 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %18 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %17, i32 0, i32 5
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %21 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %25 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %26 = load i32, i32* @mac_rdata, align 4
  %27 = call i32 @bnx2x_vf_sp(%struct.bnx2x* %24, %struct.bnx2x_virtf* %25, i32 %26)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %29 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %30 = load i32, i32* @mac_rdata, align 4
  %31 = call i32 @bnx2x_vf_sp_map(%struct.bnx2x* %28, %struct.bnx2x_virtf* %29, i32 %30)
  %32 = load i32, i32* @BNX2X_FILTER_MAC_PENDING, align 4
  %33 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %34 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %33, i32 0, i32 1
  %35 = load i32, i32* @BNX2X_OBJ_TYPE_RX_TX, align 4
  %36 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %37 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %36, i32 0, i32 5
  %38 = call i32 @bnx2x_init_mac_obj(%struct.bnx2x* %16, i32* %18, i32 %19, i32 %22, i32 %23, i32 %27, i32 %31, i32 %32, i32* %34, i32 %35, i32* %37)
  %39 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %40 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %41 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %40, i32 0, i32 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %44 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %48 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %49 = load i32, i32* @vlan_rdata, align 4
  %50 = call i32 @bnx2x_vf_sp(%struct.bnx2x* %47, %struct.bnx2x_virtf* %48, i32 %49)
  %51 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %52 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %53 = load i32, i32* @vlan_rdata, align 4
  %54 = call i32 @bnx2x_vf_sp_map(%struct.bnx2x* %51, %struct.bnx2x_virtf* %52, i32 %53)
  %55 = load i32, i32* @BNX2X_FILTER_VLAN_PENDING, align 4
  %56 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %57 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %56, i32 0, i32 1
  %58 = load i32, i32* @BNX2X_OBJ_TYPE_RX_TX, align 4
  %59 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %60 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %59, i32 0, i32 4
  %61 = call i32 @bnx2x_init_vlan_obj(%struct.bnx2x* %39, i32* %41, i32 %42, i32 %45, i32 %46, i32 %50, i32 %54, i32 %55, i32* %57, i32 %58, i32* %60)
  %62 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %63 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %64 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %63, i32 0, i32 3
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %67 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %71 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %72 = load i32, i32* @vlan_mac_rdata, align 4
  %73 = call i32 @bnx2x_vf_sp(%struct.bnx2x* %70, %struct.bnx2x_virtf* %71, i32 %72)
  %74 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %75 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %76 = load i32, i32* @vlan_mac_rdata, align 4
  %77 = call i32 @bnx2x_vf_sp_map(%struct.bnx2x* %74, %struct.bnx2x_virtf* %75, i32 %76)
  %78 = load i32, i32* @BNX2X_FILTER_VLAN_MAC_PENDING, align 4
  %79 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %80 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %79, i32 0, i32 1
  %81 = load i32, i32* @BNX2X_OBJ_TYPE_RX_TX, align 4
  %82 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %83 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %82, i32 0, i32 5
  %84 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %85 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %84, i32 0, i32 4
  %86 = call i32 @bnx2x_init_vlan_mac_obj(%struct.bnx2x* %62, i32* %64, i32 %65, i32 %68, i32 %69, i32 %73, i32 %77, i32 %78, i32* %80, i32 %81, i32* %83, i32* %85)
  %87 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %88 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %89 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %88, i32 0, i32 3
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %92 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %97 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %98 = load i32, i32* @mcast_rdata, align 4
  %99 = call i32 @bnx2x_vf_sp(%struct.bnx2x* %96, %struct.bnx2x_virtf* %97, i32 %98)
  %100 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %101 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %102 = load i32, i32* @mcast_rdata, align 4
  %103 = call i32 @bnx2x_vf_sp_map(%struct.bnx2x* %100, %struct.bnx2x_virtf* %101, i32 %102)
  %104 = load i32, i32* @BNX2X_FILTER_MCAST_PENDING, align 4
  %105 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %106 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %105, i32 0, i32 1
  %107 = load i32, i32* @BNX2X_OBJ_TYPE_RX_TX, align 4
  %108 = call i32 @bnx2x_init_mcast_obj(%struct.bnx2x* %87, i32* %89, i32 %90, i32 %93, i32 %94, i32 %95, i32 %99, i32 %103, i32 %104, i32* %106, i32 %107)
  %109 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %110 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %111 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %110, i32 0, i32 2
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %114 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %119 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %120 = load i32, i32* @rss_rdata, align 4
  %121 = call i32 @bnx2x_vf_sp(%struct.bnx2x* %118, %struct.bnx2x_virtf* %119, i32 %120)
  %122 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %123 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %124 = load i32, i32* @rss_rdata, align 4
  %125 = call i32 @bnx2x_vf_sp_map(%struct.bnx2x* %122, %struct.bnx2x_virtf* %123, i32 %124)
  %126 = load i32, i32* @BNX2X_FILTER_RSS_CONF_PENDING, align 4
  %127 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %128 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %127, i32 0, i32 1
  %129 = load i32, i32* @BNX2X_OBJ_TYPE_RX_TX, align 4
  %130 = call i32 @bnx2x_init_rss_config_obj(%struct.bnx2x* %109, i32* %111, i32 %112, i32 %115, i32 %116, i32 %117, i32 %121, i32 %125, i32 %126, i32* %128, i32 %129)
  %131 = load i32, i32* %7, align 4
  %132 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %5, align 8
  %133 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %135 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %134, i32 0, i32 0
  store i32 1, i32* %135, align 4
  %136 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %6, align 8
  %137 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %136, i32 0, i32 1
  store i32 1, i32* %137, align 4
  ret void
}

declare dso_local i32 @vfq_cl_id(%struct.bnx2x_virtf*, %struct.bnx2x_vf_queue*) #1

declare dso_local i32 @FW_VF_HANDLE(i32) #1

declare dso_local i32 @bnx2x_init_mac_obj(%struct.bnx2x*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @bnx2x_vf_sp(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @bnx2x_vf_sp_map(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @bnx2x_init_vlan_obj(%struct.bnx2x*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @bnx2x_init_vlan_mac_obj(%struct.bnx2x*, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @bnx2x_init_mcast_obj(%struct.bnx2x*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bnx2x_init_rss_config_obj(%struct.bnx2x*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
