; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.h_hnae_free_buffer_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.h_hnae_free_buffer_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_ring = type { %struct.hnae_desc_cb*, %struct.TYPE_4__* }
%struct.hnae_desc_cb = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hnae_buf_ops* }
%struct.hnae_buf_ops = type { i32 (%struct.hnae_ring*, %struct.hnae_desc_cb*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_ring*, i32)* @hnae_free_buffer_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hnae_free_buffer_detach(%struct.hnae_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.hnae_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hnae_buf_ops*, align 8
  %6 = alloca %struct.hnae_desc_cb*, align 8
  store %struct.hnae_ring* %0, %struct.hnae_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %8 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.hnae_buf_ops*, %struct.hnae_buf_ops** %12, align 8
  store %struct.hnae_buf_ops* %13, %struct.hnae_buf_ops** %5, align 8
  %14 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %15 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %14, i32 0, i32 0
  %16 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %16, i64 %18
  store %struct.hnae_desc_cb* %19, %struct.hnae_desc_cb** %6, align 8
  %20 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %21 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %20, i32 0, i32 0
  %22 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %22, i64 %24
  %26 = getelementptr inbounds %struct.hnae_desc_cb, %struct.hnae_desc_cb* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %40

30:                                               ; preds = %2
  %31 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @hnae_buffer_detach(%struct.hnae_ring* %31, i32 %32)
  %34 = load %struct.hnae_buf_ops*, %struct.hnae_buf_ops** %5, align 8
  %35 = getelementptr inbounds %struct.hnae_buf_ops, %struct.hnae_buf_ops* %34, i32 0, i32 0
  %36 = load i32 (%struct.hnae_ring*, %struct.hnae_desc_cb*)*, i32 (%struct.hnae_ring*, %struct.hnae_desc_cb*)** %35, align 8
  %37 = load %struct.hnae_ring*, %struct.hnae_ring** %3, align 8
  %38 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %6, align 8
  %39 = call i32 %36(%struct.hnae_ring* %37, %struct.hnae_desc_cb* %38)
  br label %40

40:                                               ; preds = %30, %29
  ret void
}

declare dso_local i32 @hnae_buffer_detach(%struct.hnae_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
