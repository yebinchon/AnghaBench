; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_replace_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_replace_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns3_enet_ring = type { %struct.TYPE_4__*, %struct.hns3_desc_cb* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.hns3_desc_cb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns3_enet_ring*, i32, %struct.hns3_desc_cb*)* @hns3_replace_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_replace_buffer(%struct.hns3_enet_ring* %0, i32 %1, %struct.hns3_desc_cb* %2) #0 {
  %4 = alloca %struct.hns3_enet_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns3_desc_cb*, align 8
  store %struct.hns3_enet_ring* %0, %struct.hns3_enet_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.hns3_desc_cb* %2, %struct.hns3_desc_cb** %6, align 8
  %7 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %8 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %9 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %8, i32 0, i32 1
  %10 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %10, i64 %12
  %14 = call i32 @hns3_unmap_buffer(%struct.hns3_enet_ring* %7, %struct.hns3_desc_cb* %13)
  %15 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %16 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %15, i32 0, i32 1
  %17 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %17, i64 %19
  %21 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %6, align 8
  %22 = bitcast %struct.hns3_desc_cb* %20 to i8*
  %23 = bitcast %struct.hns3_desc_cb* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %25 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %24, i32 0, i32 1
  %26 = load %struct.hns3_desc_cb*, %struct.hns3_desc_cb** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %26, i64 %28
  %30 = getelementptr inbounds %struct.hns3_desc_cb, %struct.hns3_desc_cb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cpu_to_le64(i32 %31)
  %33 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %34 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %32, i32* %39, align 8
  %40 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %4, align 8
  %41 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  ret void
}

declare dso_local i32 @hns3_unmap_buffer(%struct.hns3_enet_ring*, %struct.hns3_desc_cb*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
