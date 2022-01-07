; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_get_payload_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_get_payload_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.cudbg_region_info = type { i32, i32, i32 }
%struct.cudbg_mem_desc = type { i32, i32, i32 }
%struct.cudbg_meminfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i8*, %struct.cudbg_region_info*)* @cudbg_get_payload_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cudbg_get_payload_range(%struct.adapter* %0, i32 %1, i8* %2, %struct.cudbg_region_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.cudbg_region_info*, align 8
  %10 = alloca %struct.cudbg_mem_desc, align 4
  %11 = alloca %struct.cudbg_meminfo, align 4
  %12 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.cudbg_region_info* %3, %struct.cudbg_region_info** %9, align 8
  %13 = bitcast %struct.cudbg_mem_desc* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 12, i1 false)
  %14 = load %struct.adapter*, %struct.adapter** %6, align 8
  %15 = call i32 @cudbg_fill_meminfo(%struct.adapter* %14, %struct.cudbg_meminfo* %11)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %5, align 4
  br label %48

20:                                               ; preds = %4
  %21 = load %struct.adapter*, %struct.adapter** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @cudbg_get_mem_region(%struct.adapter* %21, %struct.cudbg_meminfo* %11, i32 %22, i8* %23, %struct.cudbg_mem_desc* %10)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.cudbg_region_info*, %struct.cudbg_region_info** %9, align 8
  %29 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  store i32 0, i32* %5, align 4
  br label %48

30:                                               ; preds = %20
  %31 = load %struct.cudbg_region_info*, %struct.cudbg_region_info** %9, align 8
  %32 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = getelementptr inbounds %struct.cudbg_mem_desc, %struct.cudbg_mem_desc* %10, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cudbg_region_info*, %struct.cudbg_region_info** %9, align 8
  %36 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = getelementptr inbounds %struct.cudbg_mem_desc, %struct.cudbg_mem_desc* %10, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cudbg_region_info*, %struct.cudbg_region_info** %9, align 8
  %40 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.adapter*, %struct.adapter** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.cudbg_region_info*, %struct.cudbg_region_info** %9, align 8
  %44 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %43, i32 0, i32 2
  %45 = load %struct.cudbg_region_info*, %struct.cudbg_region_info** %9, align 8
  %46 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %45, i32 0, i32 1
  %47 = call i32 @cudbg_get_mem_relative(%struct.adapter* %41, %struct.cudbg_meminfo* %11, i32 %42, i32* %44, i32* %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %30, %27, %18
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cudbg_fill_meminfo(%struct.adapter*, %struct.cudbg_meminfo*) #2

declare dso_local i32 @cudbg_get_mem_region(%struct.adapter*, %struct.cudbg_meminfo*, i32, i8*, %struct.cudbg_mem_desc*) #2

declare dso_local i32 @cudbg_get_mem_relative(%struct.adapter*, %struct.cudbg_meminfo*, i32, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
