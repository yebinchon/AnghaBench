; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.h_hnae_reinit_all_ring_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.h_hnae_reinit_all_ring_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.hnae_ring }
%struct.hnae_ring = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_handle*)* @hnae_reinit_all_ring_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hnae_reinit_all_ring_desc(%struct.hnae_handle* %0) #0 {
  %2 = alloca %struct.hnae_handle*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.hnae_ring*, align 8
  store %struct.hnae_handle* %0, %struct.hnae_handle** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %48, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %9 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %51

12:                                               ; preds = %6
  %13 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %14 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %15, i64 %17
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store %struct.hnae_ring* %20, %struct.hnae_ring** %5, align 8
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %44, %12
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.hnae_ring*, %struct.hnae_ring** %5, align 8
  %24 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load %struct.hnae_ring*, %struct.hnae_ring** %5, align 8
  %29 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cpu_to_le64(i32 %35)
  %37 = load %struct.hnae_ring*, %struct.hnae_ring** %5, align 8
  %38 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %36, i32* %43, align 4
  br label %44

44:                                               ; preds = %27
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %21

47:                                               ; preds = %21
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %6

51:                                               ; preds = %6
  %52 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
