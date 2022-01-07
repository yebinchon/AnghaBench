; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_ioceth_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_ioceth_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_ioceth = type { i32*, i32*, i32, %struct.bna* }
%struct.bna = type { i32, i32, i32, i32 }
%struct.bna_res_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i32 }

@bna_ioceth_cbfn = common dso_local global i32 0, align 4
@BFI_PCIFN_CLASS_ETH = common dso_local global i32 0, align 4
@BNA_RES_MEM_T_ATTR = common dso_local global i64 0, align 8
@BNA_RES_MEM_T_FWTRC = common dso_local global i64 0, align 8
@BNA_RES_MEM_T_COM = common dso_local global i64 0, align 8
@BFI_MC_ENET = common dso_local global i32 0, align 4
@bna_msgq_rsp_handler = common dso_local global i32 0, align 4
@bna_ioceth_sm_stopped = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna_ioceth*, %struct.bna*, %struct.bna_res_info*)* @bna_ioceth_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_ioceth_init(%struct.bna_ioceth* %0, %struct.bna* %1, %struct.bna_res_info* %2) #0 {
  %4 = alloca %struct.bna_ioceth*, align 8
  %5 = alloca %struct.bna*, align 8
  %6 = alloca %struct.bna_res_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.bna_ioceth* %0, %struct.bna_ioceth** %4, align 8
  store %struct.bna* %1, %struct.bna** %5, align 8
  store %struct.bna_res_info* %2, %struct.bna_res_info** %6, align 8
  %9 = load %struct.bna*, %struct.bna** %5, align 8
  %10 = load %struct.bna_ioceth*, %struct.bna_ioceth** %4, align 8
  %11 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %10, i32 0, i32 3
  store %struct.bna* %9, %struct.bna** %11, align 8
  %12 = load %struct.bna_ioceth*, %struct.bna_ioceth** %4, align 8
  %13 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %12, i32 0, i32 2
  %14 = load %struct.bna_ioceth*, %struct.bna_ioceth** %4, align 8
  %15 = call i32 @bfa_nw_ioc_attach(i32* %13, %struct.bna_ioceth* %14, i32* @bna_ioceth_cbfn)
  %16 = load %struct.bna_ioceth*, %struct.bna_ioceth** %4, align 8
  %17 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %16, i32 0, i32 2
  %18 = load %struct.bna*, %struct.bna** %5, align 8
  %19 = getelementptr inbounds %struct.bna, %struct.bna* %18, i32 0, i32 3
  %20 = load i32, i32* @BFI_PCIFN_CLASS_ETH, align 4
  %21 = call i32 @bfa_nw_ioc_pci_init(i32* %17, i32* %19, i32 %20)
  %22 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %23 = load i64, i64* @BNA_RES_MEM_T_ATTR, align 8
  %24 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %22, i64 %23
  %25 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @BNA_GET_DMA_ADDR(i32* %30, i32 %31)
  %33 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %34 = load i64, i64* @BNA_RES_MEM_T_ATTR, align 8
  %35 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %33, i64 %34
  %36 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %8, align 8
  %43 = load %struct.bna_ioceth*, %struct.bna_ioceth** %4, align 8
  %44 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %43, i32 0, i32 2
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @bfa_nw_ioc_mem_claim(i32* %44, i32* %45, i32 %46)
  %48 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %49 = load i64, i64* @BNA_RES_MEM_T_FWTRC, align 8
  %50 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %48, i64 %49
  %51 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %8, align 8
  %58 = load %struct.bna_ioceth*, %struct.bna_ioceth** %4, align 8
  %59 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %58, i32 0, i32 2
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @bfa_nw_ioc_debug_memclaim(i32* %59, i32* %60)
  %62 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %63 = load i64, i64* @BNA_RES_MEM_T_COM, align 8
  %64 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %62, i64 %63
  %65 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @BNA_GET_DMA_ADDR(i32* %70, i32 %71)
  %73 = load %struct.bna_res_info*, %struct.bna_res_info** %6, align 8
  %74 = load i64, i64* @BNA_RES_MEM_T_COM, align 8
  %75 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %73, i64 %74
  %76 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %8, align 8
  %83 = load %struct.bna*, %struct.bna** %5, align 8
  %84 = getelementptr inbounds %struct.bna, %struct.bna* %83, i32 0, i32 2
  %85 = load %struct.bna_ioceth*, %struct.bna_ioceth** %4, align 8
  %86 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %85, i32 0, i32 2
  %87 = load %struct.bna*, %struct.bna** %5, align 8
  %88 = call i32 @bfa_nw_cee_attach(i32* %84, i32* %86, %struct.bna* %87)
  %89 = load %struct.bna*, %struct.bna** %5, align 8
  %90 = getelementptr inbounds %struct.bna, %struct.bna* %89, i32 0, i32 2
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @bfa_nw_cee_mem_claim(i32* %90, i32* %91, i32 %92)
  %94 = call i64 (...) @bfa_nw_cee_meminfo()
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 %94
  store i32* %96, i32** %8, align 8
  %97 = call i64 (...) @bfa_nw_cee_meminfo()
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %7, align 4
  %102 = load %struct.bna*, %struct.bna** %5, align 8
  %103 = getelementptr inbounds %struct.bna, %struct.bna* %102, i32 0, i32 1
  %104 = load %struct.bna_ioceth*, %struct.bna_ioceth** %4, align 8
  %105 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %104, i32 0, i32 2
  %106 = load %struct.bna*, %struct.bna** %5, align 8
  %107 = call i32 @bfa_nw_flash_attach(i32* %103, i32* %105, %struct.bna* %106)
  %108 = load %struct.bna*, %struct.bna** %5, align 8
  %109 = getelementptr inbounds %struct.bna, %struct.bna* %108, i32 0, i32 1
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @bfa_nw_flash_memclaim(i32* %109, i32* %110, i32 %111)
  %113 = call i64 (...) @bfa_nw_flash_meminfo()
  %114 = load i32*, i32** %8, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 %113
  store i32* %115, i32** %8, align 8
  %116 = call i64 (...) @bfa_nw_flash_meminfo()
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %7, align 4
  %121 = load %struct.bna*, %struct.bna** %5, align 8
  %122 = getelementptr inbounds %struct.bna, %struct.bna* %121, i32 0, i32 0
  %123 = load %struct.bna_ioceth*, %struct.bna_ioceth** %4, align 8
  %124 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %123, i32 0, i32 2
  %125 = call i32 @bfa_msgq_attach(i32* %122, i32* %124)
  %126 = load %struct.bna*, %struct.bna** %5, align 8
  %127 = getelementptr inbounds %struct.bna, %struct.bna* %126, i32 0, i32 0
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @bfa_msgq_memclaim(i32* %127, i32* %128, i32 %129)
  %131 = load %struct.bna*, %struct.bna** %5, align 8
  %132 = getelementptr inbounds %struct.bna, %struct.bna* %131, i32 0, i32 0
  %133 = load i32, i32* @BFI_MC_ENET, align 4
  %134 = load i32, i32* @bna_msgq_rsp_handler, align 4
  %135 = load %struct.bna*, %struct.bna** %5, align 8
  %136 = call i32 @bfa_msgq_regisr(i32* %132, i32 %133, i32 %134, %struct.bna* %135)
  %137 = call i64 (...) @bfa_msgq_meminfo()
  %138 = load i32*, i32** %8, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 %137
  store i32* %139, i32** %8, align 8
  %140 = call i64 (...) @bfa_msgq_meminfo()
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %140
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %7, align 4
  %145 = load %struct.bna_ioceth*, %struct.bna_ioceth** %4, align 8
  %146 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %145, i32 0, i32 1
  store i32* null, i32** %146, align 8
  %147 = load %struct.bna_ioceth*, %struct.bna_ioceth** %4, align 8
  %148 = getelementptr inbounds %struct.bna_ioceth, %struct.bna_ioceth* %147, i32 0, i32 0
  store i32* null, i32** %148, align 8
  %149 = load %struct.bna_ioceth*, %struct.bna_ioceth** %4, align 8
  %150 = call i32 @bna_attr_init(%struct.bna_ioceth* %149)
  %151 = load %struct.bna_ioceth*, %struct.bna_ioceth** %4, align 8
  %152 = load i32, i32* @bna_ioceth_sm_stopped, align 4
  %153 = call i32 @bfa_fsm_set_state(%struct.bna_ioceth* %151, i32 %152)
  ret void
}

declare dso_local i32 @bfa_nw_ioc_attach(i32*, %struct.bna_ioceth*, i32*) #1

declare dso_local i32 @bfa_nw_ioc_pci_init(i32*, i32*, i32) #1

declare dso_local i32 @BNA_GET_DMA_ADDR(i32*, i32) #1

declare dso_local i32 @bfa_nw_ioc_mem_claim(i32*, i32*, i32) #1

declare dso_local i32 @bfa_nw_ioc_debug_memclaim(i32*, i32*) #1

declare dso_local i32 @bfa_nw_cee_attach(i32*, i32*, %struct.bna*) #1

declare dso_local i32 @bfa_nw_cee_mem_claim(i32*, i32*, i32) #1

declare dso_local i64 @bfa_nw_cee_meminfo(...) #1

declare dso_local i32 @bfa_nw_flash_attach(i32*, i32*, %struct.bna*) #1

declare dso_local i32 @bfa_nw_flash_memclaim(i32*, i32*, i32) #1

declare dso_local i64 @bfa_nw_flash_meminfo(...) #1

declare dso_local i32 @bfa_msgq_attach(i32*, i32*) #1

declare dso_local i32 @bfa_msgq_memclaim(i32*, i32*, i32) #1

declare dso_local i32 @bfa_msgq_regisr(i32*, i32, i32, %struct.bna*) #1

declare dso_local i64 @bfa_msgq_meminfo(...) #1

declare dso_local i32 @bna_attr_init(%struct.bna_ioceth*) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bna_ioceth*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
