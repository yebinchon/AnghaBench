; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_init_ring_struct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_init_ring_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, i32, i32, %struct.bnxt_napi** }
%struct.bnxt_napi = type { %struct.bnxt_tx_ring_info*, %struct.bnxt_rx_ring_info*, %struct.bnxt_cp_ring_info }
%struct.bnxt_tx_ring_info = type { i32, i32, i64, %struct.bnxt_ring_struct }
%struct.bnxt_ring_struct = type { %struct.bnxt_ring_mem_info }
%struct.bnxt_ring_mem_info = type { i32, i8**, i32, i8**, i32, i8* }
%struct.bnxt_rx_ring_info = type { i32, i32, i64, %struct.bnxt_ring_struct, i32, i32, i64, %struct.bnxt_ring_struct }
%struct.bnxt_cp_ring_info = type { i32, i64, %struct.bnxt_ring_struct }

@HW_CMPD_RING_SIZE = common dso_local global i8* null, align 8
@HW_RXBD_RING_SIZE = common dso_local global i8* null, align 8
@SW_RXBD_RING_SIZE = common dso_local global i32 0, align 4
@SW_RXBD_AGG_RING_SIZE = common dso_local global i32 0, align 4
@SW_TXBD_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_init_ring_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_init_ring_struct(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_napi*, align 8
  %5 = alloca %struct.bnxt_ring_mem_info*, align 8
  %6 = alloca %struct.bnxt_cp_ring_info*, align 8
  %7 = alloca %struct.bnxt_rx_ring_info*, align 8
  %8 = alloca %struct.bnxt_tx_ring_info*, align 8
  %9 = alloca %struct.bnxt_ring_struct*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %175, %1
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %13 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %178

16:                                               ; preds = %10
  %17 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 5
  %19 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.bnxt_napi*, %struct.bnxt_napi** %19, i64 %21
  %23 = load %struct.bnxt_napi*, %struct.bnxt_napi** %22, align 8
  store %struct.bnxt_napi* %23, %struct.bnxt_napi** %4, align 8
  %24 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %25 = icmp ne %struct.bnxt_napi* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  br label %175

27:                                               ; preds = %16
  %28 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %29 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %28, i32 0, i32 2
  store %struct.bnxt_cp_ring_info* %29, %struct.bnxt_cp_ring_info** %6, align 8
  %30 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %6, align 8
  %31 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %30, i32 0, i32 2
  store %struct.bnxt_ring_struct* %31, %struct.bnxt_ring_struct** %9, align 8
  %32 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %9, align 8
  %33 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %32, i32 0, i32 0
  store %struct.bnxt_ring_mem_info* %33, %struct.bnxt_ring_mem_info** %5, align 8
  %34 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %35 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %38 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** @HW_CMPD_RING_SIZE, align 8
  %40 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %41 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %40, i32 0, i32 5
  store i8* %39, i8** %41, align 8
  %42 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %6, align 8
  %43 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8**
  %46 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %47 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %46, i32 0, i32 1
  store i8** %45, i8*** %47, align 8
  %48 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %6, align 8
  %49 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %52 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 8
  %53 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %54 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %53, i32 0, i32 2
  store i32 0, i32* %54, align 8
  %55 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %56 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %55, i32 0, i32 1
  %57 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %56, align 8
  store %struct.bnxt_rx_ring_info* %57, %struct.bnxt_rx_ring_info** %7, align 8
  %58 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %59 = icmp ne %struct.bnxt_rx_ring_info* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %27
  br label %132

61:                                               ; preds = %27
  %62 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %63 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %62, i32 0, i32 7
  store %struct.bnxt_ring_struct* %63, %struct.bnxt_ring_struct** %9, align 8
  %64 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %9, align 8
  %65 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %64, i32 0, i32 0
  store %struct.bnxt_ring_mem_info* %65, %struct.bnxt_ring_mem_info** %5, align 8
  %66 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %67 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %70 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load i8*, i8** @HW_RXBD_RING_SIZE, align 8
  %72 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %73 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %72, i32 0, i32 5
  store i8* %71, i8** %73, align 8
  %74 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %75 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %74, i32 0, i32 6
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8**
  %78 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %79 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %78, i32 0, i32 1
  store i8** %77, i8*** %79, align 8
  %80 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %81 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %84 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @SW_RXBD_RING_SIZE, align 4
  %86 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %87 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %85, %88
  %90 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %91 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %93 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %92, i32 0, i32 4
  %94 = bitcast i32* %93 to i8**
  %95 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %96 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %95, i32 0, i32 3
  store i8** %94, i8*** %96, align 8
  %97 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %98 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %97, i32 0, i32 3
  store %struct.bnxt_ring_struct* %98, %struct.bnxt_ring_struct** %9, align 8
  %99 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %9, align 8
  %100 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %99, i32 0, i32 0
  store %struct.bnxt_ring_mem_info* %100, %struct.bnxt_ring_mem_info** %5, align 8
  %101 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %102 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %105 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i8*, i8** @HW_RXBD_RING_SIZE, align 8
  %107 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %108 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %107, i32 0, i32 5
  store i8* %106, i8** %108, align 8
  %109 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %110 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i8**
  %113 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %114 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %113, i32 0, i32 1
  store i8** %112, i8*** %114, align 8
  %115 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %116 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %119 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* @SW_RXBD_AGG_RING_SIZE, align 4
  %121 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %122 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %120, %123
  %125 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %126 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.bnxt_rx_ring_info*, %struct.bnxt_rx_ring_info** %7, align 8
  %128 = getelementptr inbounds %struct.bnxt_rx_ring_info, %struct.bnxt_rx_ring_info* %127, i32 0, i32 0
  %129 = bitcast i32* %128 to i8**
  %130 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %131 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %130, i32 0, i32 3
  store i8** %129, i8*** %131, align 8
  br label %132

132:                                              ; preds = %61, %60
  %133 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %134 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %133, i32 0, i32 0
  %135 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %134, align 8
  store %struct.bnxt_tx_ring_info* %135, %struct.bnxt_tx_ring_info** %8, align 8
  %136 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %8, align 8
  %137 = icmp ne %struct.bnxt_tx_ring_info* %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %132
  br label %175

139:                                              ; preds = %132
  %140 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %8, align 8
  %141 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %140, i32 0, i32 3
  store %struct.bnxt_ring_struct* %141, %struct.bnxt_ring_struct** %9, align 8
  %142 = load %struct.bnxt_ring_struct*, %struct.bnxt_ring_struct** %9, align 8
  %143 = getelementptr inbounds %struct.bnxt_ring_struct, %struct.bnxt_ring_struct* %142, i32 0, i32 0
  store %struct.bnxt_ring_mem_info* %143, %struct.bnxt_ring_mem_info** %5, align 8
  %144 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %145 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %148 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load i8*, i8** @HW_RXBD_RING_SIZE, align 8
  %150 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %151 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %150, i32 0, i32 5
  store i8* %149, i8** %151, align 8
  %152 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %8, align 8
  %153 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to i8**
  %156 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %157 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %156, i32 0, i32 1
  store i8** %155, i8*** %157, align 8
  %158 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %8, align 8
  %159 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %162 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* @SW_TXBD_RING_SIZE, align 4
  %164 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %165 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = mul nsw i32 %163, %166
  %168 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %169 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  %170 = load %struct.bnxt_tx_ring_info*, %struct.bnxt_tx_ring_info** %8, align 8
  %171 = getelementptr inbounds %struct.bnxt_tx_ring_info, %struct.bnxt_tx_ring_info* %170, i32 0, i32 0
  %172 = bitcast i32* %171 to i8**
  %173 = load %struct.bnxt_ring_mem_info*, %struct.bnxt_ring_mem_info** %5, align 8
  %174 = getelementptr inbounds %struct.bnxt_ring_mem_info, %struct.bnxt_ring_mem_info* %173, i32 0, i32 3
  store i8** %172, i8*** %174, align 8
  br label %175

175:                                              ; preds = %139, %138, %26
  %176 = load i32, i32* %3, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %3, align 4
  br label %10

178:                                              ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
