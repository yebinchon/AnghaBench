; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_get_ring_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_get_ring_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.bnxt_napi** }
%struct.bnxt_napi = type { %struct.bnxt_cp_ring_info }
%struct.bnxt_cp_ring_info = type { %struct.ctx_hw_stats* }
%struct.ctx_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.rtnl_link_stats64*)* @bnxt_get_ring_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_get_ring_stats(%struct.bnxt* %0, %struct.rtnl_link_stats64* %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt_napi*, align 8
  %7 = alloca %struct.bnxt_cp_ring_info*, align 8
  %8 = alloca %struct.ctx_hw_stats*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %178, %2
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %181

15:                                               ; preds = %9
  %16 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %17 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %16, i32 0, i32 1
  %18 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.bnxt_napi*, %struct.bnxt_napi** %18, i64 %20
  %22 = load %struct.bnxt_napi*, %struct.bnxt_napi** %21, align 8
  store %struct.bnxt_napi* %22, %struct.bnxt_napi** %6, align 8
  %23 = load %struct.bnxt_napi*, %struct.bnxt_napi** %6, align 8
  %24 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %23, i32 0, i32 0
  store %struct.bnxt_cp_ring_info* %24, %struct.bnxt_cp_ring_info** %7, align 8
  %25 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %26 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %25, i32 0, i32 0
  %27 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %26, align 8
  store %struct.ctx_hw_stats* %27, %struct.ctx_hw_stats** %8, align 8
  %28 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %8, align 8
  %29 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %28, i32 0, i32 13
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le64_to_cpu(i32 %30)
  %32 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %33 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %8, align 8
  %39 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le64_to_cpu(i32 %40)
  %42 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %43 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %41
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 4
  %48 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %8, align 8
  %49 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %48, i32 0, i32 12
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @le64_to_cpu(i32 %50)
  %52 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %53 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %51
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 4
  %58 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %8, align 8
  %59 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @le64_to_cpu(i32 %60)
  %62 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %63 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  %68 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %8, align 8
  %69 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @le64_to_cpu(i32 %70)
  %72 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %73 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %71
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 4
  %78 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %8, align 8
  %79 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @le64_to_cpu(i32 %80)
  %82 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %83 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %81
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  %88 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %8, align 8
  %89 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @le64_to_cpu(i32 %90)
  %92 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %93 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %91
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 4
  %98 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %8, align 8
  %99 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @le64_to_cpu(i32 %100)
  %102 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %103 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %101
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %103, align 4
  %108 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %8, align 8
  %109 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @le64_to_cpu(i32 %110)
  %112 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %113 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %111
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 4
  %118 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %8, align 8
  %119 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @le64_to_cpu(i32 %120)
  %122 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %123 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %121
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %123, align 4
  %128 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %8, align 8
  %129 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @le64_to_cpu(i32 %130)
  %132 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %133 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = add nsw i64 %135, %131
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %133, align 4
  %138 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %8, align 8
  %139 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @le64_to_cpu(i32 %140)
  %142 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %143 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %141
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %143, align 4
  %148 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %8, align 8
  %149 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @le64_to_cpu(i32 %150)
  %152 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %153 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, %151
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %153, align 4
  %158 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %8, align 8
  %159 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @le64_to_cpu(i32 %160)
  %162 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %163 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %165, %161
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %163, align 4
  %168 = load %struct.ctx_hw_stats*, %struct.ctx_hw_stats** %8, align 8
  %169 = getelementptr inbounds %struct.ctx_hw_stats, %struct.ctx_hw_stats* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @le64_to_cpu(i32 %170)
  %172 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %173 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %171
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %173, align 4
  br label %178

178:                                              ; preds = %15
  %179 = load i32, i32* %5, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %5, align 4
  br label %9

181:                                              ; preds = %9
  ret void
}

declare dso_local i64 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
