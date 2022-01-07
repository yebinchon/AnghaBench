; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_populate_be_v0_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_populate_be_v0_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i64, %struct.be_drv_stats }
%struct.be_drv_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.be_hw_stats_v0 = type { %struct.be_rxf_stats_v0, %struct.be_pmem_stats }
%struct.be_rxf_stats_v0 = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.be_port_rxf_stats_v0* }
%struct.be_port_rxf_stats_v0 = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.be_pmem_stats = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*)* @populate_be_v0_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @populate_be_v0_stats(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca %struct.be_hw_stats_v0*, align 8
  %4 = alloca %struct.be_pmem_stats*, align 8
  %5 = alloca %struct.be_rxf_stats_v0*, align 8
  %6 = alloca %struct.be_port_rxf_stats_v0*, align 8
  %7 = alloca %struct.be_drv_stats*, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %8 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %9 = call %struct.be_hw_stats_v0* @hw_stats_from_cmd(%struct.be_adapter* %8)
  store %struct.be_hw_stats_v0* %9, %struct.be_hw_stats_v0** %3, align 8
  %10 = load %struct.be_hw_stats_v0*, %struct.be_hw_stats_v0** %3, align 8
  %11 = getelementptr inbounds %struct.be_hw_stats_v0, %struct.be_hw_stats_v0* %10, i32 0, i32 1
  store %struct.be_pmem_stats* %11, %struct.be_pmem_stats** %4, align 8
  %12 = load %struct.be_hw_stats_v0*, %struct.be_hw_stats_v0** %3, align 8
  %13 = getelementptr inbounds %struct.be_hw_stats_v0, %struct.be_hw_stats_v0* %12, i32 0, i32 0
  store %struct.be_rxf_stats_v0* %13, %struct.be_rxf_stats_v0** %5, align 8
  %14 = load %struct.be_rxf_stats_v0*, %struct.be_rxf_stats_v0** %5, align 8
  %15 = getelementptr inbounds %struct.be_rxf_stats_v0, %struct.be_rxf_stats_v0* %14, i32 0, i32 8
  %16 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %15, align 8
  %17 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %16, i64 %19
  store %struct.be_port_rxf_stats_v0* %20, %struct.be_port_rxf_stats_v0** %6, align 8
  %21 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %21, i32 0, i32 1
  store %struct.be_drv_stats* %22, %struct.be_drv_stats** %7, align 8
  %23 = load %struct.be_hw_stats_v0*, %struct.be_hw_stats_v0** %3, align 8
  %24 = call i32 @be_dws_le_to_cpu(%struct.be_hw_stats_v0* %23, i32 48)
  %25 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %6, align 8
  %26 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %25, i32 0, i32 20
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %29 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %28, i32 0, i32 27
  store i32 %27, i32* %29, align 4
  %30 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %6, align 8
  %31 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %30, i32 0, i32 19
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %34 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %33, i32 0, i32 26
  store i32 %32, i32* %34, align 8
  %35 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %6, align 8
  %36 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %35, i32 0, i32 18
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %39 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %38, i32 0, i32 25
  store i32 %37, i32* %39, align 4
  %40 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %6, align 8
  %41 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %40, i32 0, i32 17
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %44 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %43, i32 0, i32 24
  store i32 %42, i32* %44, align 8
  %45 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %6, align 8
  %46 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %45, i32 0, i32 16
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %49 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %48, i32 0, i32 23
  store i32 %47, i32* %49, align 4
  %50 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %6, align 8
  %51 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %50, i32 0, i32 15
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %54 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %53, i32 0, i32 22
  store i32 %52, i32* %54, align 8
  %55 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %6, align 8
  %56 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %55, i32 0, i32 14
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %59 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %58, i32 0, i32 21
  store i32 %57, i32* %59, align 4
  %60 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %6, align 8
  %61 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %60, i32 0, i32 13
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %64 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %63, i32 0, i32 20
  store i32 %62, i32* %64, align 8
  %65 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %6, align 8
  %66 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %65, i32 0, i32 12
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %69 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %68, i32 0, i32 19
  store i32 %67, i32* %69, align 4
  %70 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %6, align 8
  %71 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %70, i32 0, i32 11
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %74 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %73, i32 0, i32 18
  store i32 %72, i32* %74, align 8
  %75 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %6, align 8
  %76 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %79 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %78, i32 0, i32 17
  store i32 %77, i32* %79, align 4
  %80 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %6, align 8
  %81 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %80, i32 0, i32 9
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %84 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %83, i32 0, i32 16
  store i32 %82, i32* %84, align 8
  %85 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %6, align 8
  %86 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %89 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %88, i32 0, i32 15
  store i32 %87, i32* %89, align 4
  %90 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %6, align 8
  %91 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %94 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %93, i32 0, i32 14
  store i32 %92, i32* %94, align 8
  %95 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %6, align 8
  %96 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %99 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %98, i32 0, i32 13
  store i32 %97, i32* %99, align 4
  %100 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %6, align 8
  %101 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %104 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %103, i32 0, i32 12
  store i32 %102, i32* %104, align 8
  %105 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %6, align 8
  %106 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %6, align 8
  %109 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %107, %110
  %112 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %113 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %112, i32 0, i32 11
  store i64 %111, i64* %113, align 8
  %114 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %6, align 8
  %115 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %118 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %117, i32 0, i32 10
  store i32 %116, i32* %118, align 8
  %119 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %6, align 8
  %120 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %123 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %122, i32 0, i32 9
  store i32 %121, i32* %123, align 4
  %124 = load %struct.be_port_rxf_stats_v0*, %struct.be_port_rxf_stats_v0** %6, align 8
  %125 = getelementptr inbounds %struct.be_port_rxf_stats_v0, %struct.be_port_rxf_stats_v0* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %128 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %127, i32 0, i32 8
  store i32 %126, i32* %128, align 8
  %129 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %130 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %1
  %134 = load %struct.be_rxf_stats_v0*, %struct.be_rxf_stats_v0** %5, align 8
  %135 = getelementptr inbounds %struct.be_rxf_stats_v0, %struct.be_rxf_stats_v0* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %138 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %137, i32 0, i32 7
  store i32 %136, i32* %138, align 4
  br label %145

139:                                              ; preds = %1
  %140 = load %struct.be_rxf_stats_v0*, %struct.be_rxf_stats_v0** %5, align 8
  %141 = getelementptr inbounds %struct.be_rxf_stats_v0, %struct.be_rxf_stats_v0* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %144 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %143, i32 0, i32 7
  store i32 %142, i32* %144, align 4
  br label %145

145:                                              ; preds = %139, %133
  %146 = load %struct.be_rxf_stats_v0*, %struct.be_rxf_stats_v0** %5, align 8
  %147 = getelementptr inbounds %struct.be_rxf_stats_v0, %struct.be_rxf_stats_v0* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %150 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %149, i32 0, i32 6
  store i32 %148, i32* %150, align 8
  %151 = load %struct.be_rxf_stats_v0*, %struct.be_rxf_stats_v0** %5, align 8
  %152 = getelementptr inbounds %struct.be_rxf_stats_v0, %struct.be_rxf_stats_v0* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %155 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 4
  %156 = load %struct.be_rxf_stats_v0*, %struct.be_rxf_stats_v0** %5, align 8
  %157 = getelementptr inbounds %struct.be_rxf_stats_v0, %struct.be_rxf_stats_v0* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %160 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %159, i32 0, i32 4
  store i32 %158, i32* %160, align 8
  %161 = load %struct.be_rxf_stats_v0*, %struct.be_rxf_stats_v0** %5, align 8
  %162 = getelementptr inbounds %struct.be_rxf_stats_v0, %struct.be_rxf_stats_v0* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %165 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  %166 = load %struct.be_rxf_stats_v0*, %struct.be_rxf_stats_v0** %5, align 8
  %167 = getelementptr inbounds %struct.be_rxf_stats_v0, %struct.be_rxf_stats_v0* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %170 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  %171 = load %struct.be_rxf_stats_v0*, %struct.be_rxf_stats_v0** %5, align 8
  %172 = getelementptr inbounds %struct.be_rxf_stats_v0, %struct.be_rxf_stats_v0* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.be_drv_stats*, %struct.be_drv_stats** %7, align 8
  %175 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load %struct.be_pmem_stats*, %struct.be_pmem_stats** %4, align 8
  %177 = getelementptr inbounds %struct.be_pmem_stats, %struct.be_pmem_stats* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %180 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.be_drv_stats, %struct.be_drv_stats* %180, i32 0, i32 0
  store i32 %178, i32* %181, align 8
  ret void
}

declare dso_local %struct.be_hw_stats_v0* @hw_stats_from_cmd(%struct.be_adapter*) #1

declare dso_local i32 @be_dws_le_to_cpu(%struct.be_hw_stats_v0*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
