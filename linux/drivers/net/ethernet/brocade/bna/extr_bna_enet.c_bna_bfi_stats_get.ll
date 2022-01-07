; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_bfi_stats_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_bfi_stats_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna = type { %struct.TYPE_16__, i32, %struct.TYPE_15__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32, i32, %struct.bfi_enet_stats_req }
%struct.bfi_enet_stats_req = type { %struct.TYPE_17__, %struct.TYPE_13__, i8*, i8*, i8* }
%struct.TYPE_17__ = type { i8* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@BFI_MC_ENET = common dso_local global i32 0, align 4
@BFI_ENET_H2I_STATS_GET_REQ = common dso_local global i32 0, align 4
@BFI_ENET_STATS_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bna*)* @bna_bfi_stats_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bna_bfi_stats_get(%struct.bna* %0) #0 {
  %2 = alloca %struct.bna*, align 8
  %3 = alloca %struct.bfi_enet_stats_req*, align 8
  store %struct.bna* %0, %struct.bna** %2, align 8
  %4 = load %struct.bna*, %struct.bna** %2, align 8
  %5 = getelementptr inbounds %struct.bna, %struct.bna* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  store %struct.bfi_enet_stats_req* %6, %struct.bfi_enet_stats_req** %3, align 8
  %7 = load %struct.bna*, %struct.bna** %2, align 8
  %8 = getelementptr inbounds %struct.bna, %struct.bna* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = load %struct.bfi_enet_stats_req*, %struct.bfi_enet_stats_req** %3, align 8
  %11 = getelementptr inbounds %struct.bfi_enet_stats_req, %struct.bfi_enet_stats_req* %10, i32 0, i32 0
  %12 = load i32, i32* @BFI_MC_ENET, align 4
  %13 = load i32, i32* @BFI_ENET_H2I_STATS_GET_REQ, align 4
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @bfi_msgq_mhdr_set(i8* %15, i32 %12, i32 %13, i32 0, i32 0)
  %17 = call i32 @bfi_msgq_num_cmd_entries(i32 40)
  %18 = call i8* @htons(i32 %17)
  %19 = load %struct.bfi_enet_stats_req*, %struct.bfi_enet_stats_req** %3, align 8
  %20 = getelementptr inbounds %struct.bfi_enet_stats_req, %struct.bfi_enet_stats_req* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  %22 = load i32, i32* @BFI_ENET_STATS_ALL, align 4
  %23 = call i8* @htons(i32 %22)
  %24 = load %struct.bfi_enet_stats_req*, %struct.bfi_enet_stats_req** %3, align 8
  %25 = getelementptr inbounds %struct.bfi_enet_stats_req, %struct.bfi_enet_stats_req* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load %struct.bna*, %struct.bna** %2, align 8
  %27 = getelementptr inbounds %struct.bna, %struct.bna* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @htonl(i32 %29)
  %31 = load %struct.bfi_enet_stats_req*, %struct.bfi_enet_stats_req** %3, align 8
  %32 = getelementptr inbounds %struct.bfi_enet_stats_req, %struct.bfi_enet_stats_req* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load %struct.bna*, %struct.bna** %2, align 8
  %34 = getelementptr inbounds %struct.bna, %struct.bna* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @htonl(i32 %36)
  %38 = load %struct.bfi_enet_stats_req*, %struct.bfi_enet_stats_req** %3, align 8
  %39 = getelementptr inbounds %struct.bfi_enet_stats_req, %struct.bfi_enet_stats_req* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.bna*, %struct.bna** %2, align 8
  %41 = getelementptr inbounds %struct.bna, %struct.bna* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bfi_enet_stats_req*, %struct.bfi_enet_stats_req** %3, align 8
  %46 = getelementptr inbounds %struct.bfi_enet_stats_req, %struct.bfi_enet_stats_req* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 4
  %49 = load %struct.bna*, %struct.bna** %2, align 8
  %50 = getelementptr inbounds %struct.bna, %struct.bna* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bfi_enet_stats_req*, %struct.bfi_enet_stats_req** %3, align 8
  %55 = getelementptr inbounds %struct.bfi_enet_stats_req, %struct.bfi_enet_stats_req* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 8
  %58 = load %struct.bna*, %struct.bna** %2, align 8
  %59 = getelementptr inbounds %struct.bna, %struct.bna* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load %struct.bfi_enet_stats_req*, %struct.bfi_enet_stats_req** %3, align 8
  %62 = getelementptr inbounds %struct.bfi_enet_stats_req, %struct.bfi_enet_stats_req* %61, i32 0, i32 0
  %63 = call i32 @bfa_msgq_cmd_set(i32* %60, i32* null, i32* null, i32 40, %struct.TYPE_17__* %62)
  %64 = load %struct.bna*, %struct.bna** %2, align 8
  %65 = getelementptr inbounds %struct.bna, %struct.bna* %64, i32 0, i32 1
  %66 = load %struct.bna*, %struct.bna** %2, align 8
  %67 = getelementptr inbounds %struct.bna, %struct.bna* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = call i32 @bfa_msgq_cmd_post(i32* %65, i32* %68)
  ret void
}

declare dso_local i32 @bfi_msgq_mhdr_set(i8*, i32, i32, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @bfi_msgq_num_cmd_entries(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @bfa_msgq_cmd_set(i32*, i32*, i32*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @bfa_msgq_cmd_post(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
