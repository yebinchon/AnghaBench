; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_xdp_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_xdp_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_tx_ring = type { i32, i32, i64, i64, %struct.TYPE_2__*, i32, %struct.nfp_net_r_vector* }
%struct.TYPE_2__ = type { i32 }
%struct.nfp_net_r_vector = type { i32, i32, i32 }

@NFP_NET_XDP_MAX_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"XDP TX ring corruption rd_p=%u wr_p=%u cnt=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net_tx_ring*)* @nfp_net_xdp_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_xdp_complete(%struct.nfp_net_tx_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_net_tx_ring*, align 8
  %4 = alloca %struct.nfp_net_r_vector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfp_net_tx_ring* %0, %struct.nfp_net_tx_ring** %3, align 8
  %11 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %12 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %11, i32 0, i32 6
  %13 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %12, align 8
  store %struct.nfp_net_r_vector* %13, %struct.nfp_net_r_vector** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %15 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @nfp_qcp_rd_ptr_read(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %20 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %118

24:                                               ; preds = %1
  %25 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %28 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %26, %29
  %31 = call i8* @D_IDX(%struct.nfp_net_tx_ring* %25, i32 %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @NFP_NET_XDP_MAX_COMPLETE, align 4
  %35 = icmp sle i32 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @NFP_NET_XDP_MAX_COMPLETE, align 4
  %39 = call i32 @min(i32 %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %41 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %42 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %43, %44
  %46 = call i8* @D_IDX(%struct.nfp_net_tx_ring* %40, i32 %45)
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %49 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %55, %24
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %9, align 4
  %54 = icmp ne i32 %52, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %51
  %56 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %57 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %58 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @D_IDX(%struct.nfp_net_tx_ring* %56, i32 %59)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %8, align 4
  %62 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %63 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  %66 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %67 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %66, i32 0, i32 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %6, align 4
  br label %51

76:                                               ; preds = %51
  %77 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %4, align 8
  %78 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %77, i32 0, i32 1
  %79 = call i32 @u64_stats_update_begin(i32* %78)
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %4, align 8
  %82 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %4, align 8
  %87 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %4, align 8
  %91 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %90, i32 0, i32 1
  %92 = call i32 @u64_stats_update_end(i32* %91)
  %93 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %94 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %97 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = sub nsw i64 %95, %99
  %101 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %102 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp sgt i64 %100, %103
  %105 = zext i1 %104 to i32
  %106 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %107 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %111 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %3, align 8
  %114 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @WARN_ONCE(i32 %105, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %109, i64 %112, i64 %115)
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %76, %23
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @nfp_qcp_rd_ptr_read(i32) #1

declare dso_local i8* @D_IDX(%struct.nfp_net_tx_ring*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
