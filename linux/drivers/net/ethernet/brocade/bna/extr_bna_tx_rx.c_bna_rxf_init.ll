; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rxf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rxf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rxf = type { i64, i32*, i32, i64, i32, i32, i32, i64*, i32, i32, i32, i32, i32*, i32, i64, i64, i32, i32, %struct.bna_rx* }
%struct.bna_rx = type { i32 }
%struct.bna_rx_config = type { i64, i32, i32, i32 }
%struct.bna_res_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@BNA_RX_RES_MEM_T_RIT = common dso_local global i64 0, align 8
@BNA_STATUS_T_ENABLED = common dso_local global i64 0, align 8
@BNA_RSS_F_CFG_PENDING = common dso_local global i32 0, align 4
@BNA_RSS_F_RIT_PENDING = common dso_local global i32 0, align 4
@BNA_RSS_F_STATUS_PENDING = common dso_local global i32 0, align 4
@BNA_STATUS_T_DISABLED = common dso_local global i32 0, align 4
@BFI_ENET_VLAN_ID_MAX = common dso_local global i32 0, align 4
@BFI_VLAN_BMASK_ALL = common dso_local global i64 0, align 8
@bna_rxf_sm_stopped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_rxf*, %struct.bna_rx*, %struct.bna_rx_config*, %struct.bna_res_info*)* @bna_rxf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_rxf_init(%struct.bna_rxf* %0, %struct.bna_rx* %1, %struct.bna_rx_config* %2, %struct.bna_res_info* %3) #0 {
  %5 = alloca %struct.bna_rxf*, align 8
  %6 = alloca %struct.bna_rx*, align 8
  %7 = alloca %struct.bna_rx_config*, align 8
  %8 = alloca %struct.bna_res_info*, align 8
  store %struct.bna_rxf* %0, %struct.bna_rxf** %5, align 8
  store %struct.bna_rx* %1, %struct.bna_rx** %6, align 8
  store %struct.bna_rx_config* %2, %struct.bna_rx_config** %7, align 8
  store %struct.bna_res_info* %3, %struct.bna_res_info** %8, align 8
  %9 = load %struct.bna_rx*, %struct.bna_rx** %6, align 8
  %10 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %11 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %10, i32 0, i32 18
  store %struct.bna_rx* %9, %struct.bna_rx** %11, align 8
  %12 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %13 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %12, i32 0, i32 17
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %16 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %15, i32 0, i32 16
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %19 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %18, i32 0, i32 15
  store i64 0, i64* %19, align 8
  %20 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %21 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %20, i32 0, i32 14
  store i64 0, i64* %21, align 8
  %22 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %23 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %22, i32 0, i32 13
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %26 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %25, i32 0, i32 12
  store i32* null, i32** %26, align 8
  %27 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %28 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %27, i32 0, i32 11
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %31 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %30, i32 0, i32 10
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %34 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %33, i32 0, i32 9
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %37 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %36, i32 0, i32 8
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.bna_res_info*, %struct.bna_res_info** %8, align 8
  %40 = load i64, i64* @BNA_RX_RES_MEM_T_RIT, align 8
  %41 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %39, i64 %40
  %42 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i64*
  %50 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %51 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %50, i32 0, i32 7
  store i64* %49, i64** %51, align 8
  %52 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %53 = load %struct.bna_rx_config*, %struct.bna_rx_config** %7, align 8
  %54 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @bna_rit_init(%struct.bna_rxf* %52, i32 %55)
  %57 = load %struct.bna_rx_config*, %struct.bna_rx_config** %7, align 8
  %58 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %61 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %63 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @BNA_STATUS_T_ENABLED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %4
  %68 = load %struct.bna_rx_config*, %struct.bna_rx_config** %7, align 8
  %69 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %72 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* @BNA_RSS_F_CFG_PENDING, align 4
  %74 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %75 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* @BNA_RSS_F_RIT_PENDING, align 4
  %79 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %80 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* @BNA_RSS_F_STATUS_PENDING, align 4
  %84 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %85 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %67, %4
  %89 = load i32, i32* @BNA_STATUS_T_DISABLED, align 4
  %90 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %91 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %93 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* @BFI_ENET_VLAN_ID_MAX, align 4
  %96 = sdiv i32 %95, 32
  %97 = sext i32 %96 to i64
  %98 = mul i64 4, %97
  %99 = trunc i64 %98 to i32
  %100 = call i32 @memset(i32* %94, i32 0, i32 %99)
  %101 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %102 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load i64, i64* @BFI_VLAN_BMASK_ALL, align 8
  %108 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %109 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %108, i32 0, i32 3
  store i64 %107, i64* %109, align 8
  %110 = load %struct.bna_rx_config*, %struct.bna_rx_config** %7, align 8
  %111 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %114 = getelementptr inbounds %struct.bna_rxf, %struct.bna_rxf* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 8
  %115 = load %struct.bna_rxf*, %struct.bna_rxf** %5, align 8
  %116 = load i32, i32* @bna_rxf_sm_stopped, align 4
  %117 = call i32 @bfa_fsm_set_state(%struct.bna_rxf* %115, i32 %116)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bna_rit_init(%struct.bna_rxf*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bna_rxf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
