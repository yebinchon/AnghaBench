; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.h_hnae_replace_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.h_hnae_replace_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_ring = type { %struct.TYPE_6__*, %struct.hnae_desc_cb*, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.hnae_buf_ops* }
%struct.hnae_buf_ops = type { i32 (%struct.hnae_ring*, %struct.hnae_desc_cb*)* }
%struct.hnae_desc_cb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_ring*, i32, %struct.hnae_desc_cb*)* @hnae_replace_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hnae_replace_buffer(%struct.hnae_ring* %0, i32 %1, %struct.hnae_desc_cb* %2) #0 {
  %4 = alloca %struct.hnae_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hnae_desc_cb*, align 8
  %7 = alloca %struct.hnae_buf_ops*, align 8
  store %struct.hnae_ring* %0, %struct.hnae_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.hnae_desc_cb* %2, %struct.hnae_desc_cb** %6, align 8
  %8 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %9 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %8, i32 0, i32 2
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.hnae_buf_ops*, %struct.hnae_buf_ops** %13, align 8
  store %struct.hnae_buf_ops* %14, %struct.hnae_buf_ops** %7, align 8
  %15 = load %struct.hnae_buf_ops*, %struct.hnae_buf_ops** %7, align 8
  %16 = getelementptr inbounds %struct.hnae_buf_ops, %struct.hnae_buf_ops* %15, i32 0, i32 0
  %17 = load i32 (%struct.hnae_ring*, %struct.hnae_desc_cb*)*, i32 (%struct.hnae_ring*, %struct.hnae_desc_cb*)** %16, align 8
  %18 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %19 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %20 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %19, i32 0, i32 1
  %21 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %21, i64 %23
  %25 = call i32 %17(%struct.hnae_ring* %18, %struct.hnae_desc_cb* %24)
  %26 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %27 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %26, i32 0, i32 1
  %28 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %28, i64 %30
  %32 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %6, align 8
  %33 = bitcast %struct.hnae_desc_cb* %31 to i8*
  %34 = bitcast %struct.hnae_desc_cb* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  %35 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %36 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %35, i32 0, i32 1
  %37 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %37, i64 %39
  %41 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cpu_to_le64(i32 %42)
  %44 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %45 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i32 %43, i32* %50, align 8
  %51 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %52 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cpu_to_le64(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
