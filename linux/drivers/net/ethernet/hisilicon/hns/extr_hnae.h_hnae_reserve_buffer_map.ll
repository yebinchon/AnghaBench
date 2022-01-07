; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.h_hnae_reserve_buffer_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.h_hnae_reserve_buffer_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_ring = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.hnae_buf_ops* }
%struct.hnae_buf_ops = type { {}*, {}*, {}* }
%struct.hnae_desc_cb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae_ring*, %struct.hnae_desc_cb*)* @hnae_reserve_buffer_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hnae_reserve_buffer_map(%struct.hnae_ring* %0, %struct.hnae_desc_cb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae_ring*, align 8
  %5 = alloca %struct.hnae_desc_cb*, align 8
  %6 = alloca %struct.hnae_buf_ops*, align 8
  %7 = alloca i32, align 4
  store %struct.hnae_ring* %0, %struct.hnae_ring** %4, align 8
  store %struct.hnae_desc_cb* %1, %struct.hnae_desc_cb** %5, align 8
  %8 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %9 = getelementptr inbounds %struct.hnae_ring, %struct.hnae_ring* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.hnae_buf_ops*, %struct.hnae_buf_ops** %13, align 8
  store %struct.hnae_buf_ops* %14, %struct.hnae_buf_ops** %6, align 8
  %15 = load %struct.hnae_buf_ops*, %struct.hnae_buf_ops** %6, align 8
  %16 = getelementptr inbounds %struct.hnae_buf_ops, %struct.hnae_buf_ops* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.hnae_ring*, %struct.hnae_desc_cb*)**
  %18 = load i32 (%struct.hnae_ring*, %struct.hnae_desc_cb*)*, i32 (%struct.hnae_ring*, %struct.hnae_desc_cb*)** %17, align 8
  %19 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %20 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %5, align 8
  %21 = call i32 %18(%struct.hnae_ring* %19, %struct.hnae_desc_cb* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %45

25:                                               ; preds = %2
  %26 = load %struct.hnae_buf_ops*, %struct.hnae_buf_ops** %6, align 8
  %27 = getelementptr inbounds %struct.hnae_buf_ops, %struct.hnae_buf_ops* %26, i32 0, i32 1
  %28 = bitcast {}** %27 to i32 (%struct.hnae_ring*, %struct.hnae_desc_cb*)**
  %29 = load i32 (%struct.hnae_ring*, %struct.hnae_desc_cb*)*, i32 (%struct.hnae_ring*, %struct.hnae_desc_cb*)** %28, align 8
  %30 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %31 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %5, align 8
  %32 = call i32 %29(%struct.hnae_ring* %30, %struct.hnae_desc_cb* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %37

36:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %47

37:                                               ; preds = %35
  %38 = load %struct.hnae_buf_ops*, %struct.hnae_buf_ops** %6, align 8
  %39 = getelementptr inbounds %struct.hnae_buf_ops, %struct.hnae_buf_ops* %38, i32 0, i32 2
  %40 = bitcast {}** %39 to i32 (%struct.hnae_ring*, %struct.hnae_desc_cb*)**
  %41 = load i32 (%struct.hnae_ring*, %struct.hnae_desc_cb*)*, i32 (%struct.hnae_ring*, %struct.hnae_desc_cb*)** %40, align 8
  %42 = load %struct.hnae_ring*, %struct.hnae_ring** %4, align 8
  %43 = load %struct.hnae_desc_cb*, %struct.hnae_desc_cb** %5, align 8
  %44 = call i32 %41(%struct.hnae_ring* %42, %struct.hnae_desc_cb* %43)
  br label %45

45:                                               ; preds = %37, %24
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %36
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
