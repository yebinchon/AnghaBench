; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_res_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_res_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_res_info = type { %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, i8* }

@BNA_RES_T_MEM = common dso_local global i8* null, align 8
@BNA_RES_MEM_T_COM = common dso_local global i64 0, align 8
@BNA_MEM_T_DMA = common dso_local global i8* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@BNA_RES_MEM_T_ATTR = common dso_local global i64 0, align 8
@BNA_RES_MEM_T_FWTRC = common dso_local global i64 0, align 8
@BNA_MEM_T_KVA = common dso_local global i8* null, align 8
@BNA_DBG_FWTRC_LEN = common dso_local global i8* null, align 8
@BNA_RES_MEM_T_STATS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_res_req(%struct.bna_res_info* %0) #0 {
  %2 = alloca %struct.bna_res_info*, align 8
  store %struct.bna_res_info* %0, %struct.bna_res_info** %2, align 8
  %3 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %4 = load %struct.bna_res_info*, %struct.bna_res_info** %2, align 8
  %5 = load i64, i64* @BNA_RES_MEM_T_COM, align 8
  %6 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %4, i64 %5
  %7 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %6, i32 0, i32 1
  store i8* %3, i8** %7, align 8
  %8 = load i8*, i8** @BNA_MEM_T_DMA, align 8
  %9 = load %struct.bna_res_info*, %struct.bna_res_info** %2, align 8
  %10 = load i64, i64* @BNA_RES_MEM_T_COM, align 8
  %11 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %9, i64 %10
  %12 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  store i8* %8, i8** %14, align 8
  %15 = load %struct.bna_res_info*, %struct.bna_res_info** %2, align 8
  %16 = load i64, i64* @BNA_RES_MEM_T_COM, align 8
  %17 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %15, i64 %16
  %18 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = call i32 (...) @bfa_nw_cee_meminfo()
  %22 = call i32 (...) @bfa_nw_flash_meminfo()
  %23 = add nsw i32 %21, %22
  %24 = call i32 (...) @bfa_msgq_meminfo()
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* @PAGE_SIZE, align 4
  %27 = call i8* @ALIGN(i32 %25, i32 %26)
  %28 = load %struct.bna_res_info*, %struct.bna_res_info** %2, align 8
  %29 = load i64, i64* @BNA_RES_MEM_T_COM, align 8
  %30 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %28, i64 %29
  %31 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i8* %27, i8** %33, align 8
  %34 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %35 = load %struct.bna_res_info*, %struct.bna_res_info** %2, align 8
  %36 = load i64, i64* @BNA_RES_MEM_T_ATTR, align 8
  %37 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %35, i64 %36
  %38 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %37, i32 0, i32 1
  store i8* %34, i8** %38, align 8
  %39 = load i8*, i8** @BNA_MEM_T_DMA, align 8
  %40 = load %struct.bna_res_info*, %struct.bna_res_info** %2, align 8
  %41 = load i64, i64* @BNA_RES_MEM_T_ATTR, align 8
  %42 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %40, i64 %41
  %43 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i8* %39, i8** %45, align 8
  %46 = load %struct.bna_res_info*, %struct.bna_res_info** %2, align 8
  %47 = load i64, i64* @BNA_RES_MEM_T_ATTR, align 8
  %48 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %46, i64 %47
  %49 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = call i32 (...) @bfa_nw_ioc_meminfo()
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = call i8* @ALIGN(i32 %52, i32 %53)
  %55 = load %struct.bna_res_info*, %struct.bna_res_info** %2, align 8
  %56 = load i64, i64* @BNA_RES_MEM_T_ATTR, align 8
  %57 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %55, i64 %56
  %58 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i8* %54, i8** %60, align 8
  %61 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %62 = load %struct.bna_res_info*, %struct.bna_res_info** %2, align 8
  %63 = load i64, i64* @BNA_RES_MEM_T_FWTRC, align 8
  %64 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %62, i64 %63
  %65 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %64, i32 0, i32 1
  store i8* %61, i8** %65, align 8
  %66 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %67 = load %struct.bna_res_info*, %struct.bna_res_info** %2, align 8
  %68 = load i64, i64* @BNA_RES_MEM_T_FWTRC, align 8
  %69 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %67, i64 %68
  %70 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  store i8* %66, i8** %72, align 8
  %73 = load %struct.bna_res_info*, %struct.bna_res_info** %2, align 8
  %74 = load i64, i64* @BNA_RES_MEM_T_FWTRC, align 8
  %75 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %73, i64 %74
  %76 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load i8*, i8** @BNA_DBG_FWTRC_LEN, align 8
  %80 = load %struct.bna_res_info*, %struct.bna_res_info** %2, align 8
  %81 = load i64, i64* @BNA_RES_MEM_T_FWTRC, align 8
  %82 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %80, i64 %81
  %83 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i8* %79, i8** %85, align 8
  %86 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %87 = load %struct.bna_res_info*, %struct.bna_res_info** %2, align 8
  %88 = load i64, i64* @BNA_RES_MEM_T_STATS, align 8
  %89 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %87, i64 %88
  %90 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %89, i32 0, i32 1
  store i8* %86, i8** %90, align 8
  %91 = load i8*, i8** @BNA_MEM_T_DMA, align 8
  %92 = load %struct.bna_res_info*, %struct.bna_res_info** %2, align 8
  %93 = load i64, i64* @BNA_RES_MEM_T_STATS, align 8
  %94 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %92, i64 %93
  %95 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  store i8* %91, i8** %97, align 8
  %98 = load %struct.bna_res_info*, %struct.bna_res_info** %2, align 8
  %99 = load i64, i64* @BNA_RES_MEM_T_STATS, align 8
  %100 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %98, i64 %99
  %101 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i32 1, i32* %103, align 8
  %104 = load i32, i32* @PAGE_SIZE, align 4
  %105 = call i8* @ALIGN(i32 4, i32 %104)
  %106 = load %struct.bna_res_info*, %struct.bna_res_info** %2, align 8
  %107 = load i64, i64* @BNA_RES_MEM_T_STATS, align 8
  %108 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %106, i64 %107
  %109 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  store i8* %105, i8** %111, align 8
  ret void
}

declare dso_local i8* @ALIGN(i32, i32) #1

declare dso_local i32 @bfa_nw_cee_meminfo(...) #1

declare dso_local i32 @bfa_nw_flash_meminfo(...) #1

declare dso_local i32 @bfa_msgq_meminfo(...) #1

declare dso_local i32 @bfa_nw_ioc_meminfo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
