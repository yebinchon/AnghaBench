; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_umem.c_mlx5e_xsk_resize_reuseq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_umem.c_mlx5e_xsk_resize_reuseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_umem = type { i32 }
%struct.xdp_umem_fq_reuse = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_xsk_resize_reuseq(%struct.xdp_umem* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdp_umem*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xdp_umem_fq_reuse*, align 8
  store %struct.xdp_umem* %0, %struct.xdp_umem** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call %struct.xdp_umem_fq_reuse* @xsk_reuseq_prepare(i32 %7)
  store %struct.xdp_umem_fq_reuse* %8, %struct.xdp_umem_fq_reuse** %6, align 8
  %9 = load %struct.xdp_umem_fq_reuse*, %struct.xdp_umem_fq_reuse** %6, align 8
  %10 = icmp ne %struct.xdp_umem_fq_reuse* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.xdp_umem*, %struct.xdp_umem** %4, align 8
  %20 = load %struct.xdp_umem_fq_reuse*, %struct.xdp_umem_fq_reuse** %6, align 8
  %21 = call i32 @xsk_reuseq_swap(%struct.xdp_umem* %19, %struct.xdp_umem_fq_reuse* %20)
  %22 = call i32 @xsk_reuseq_free(i32 %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local %struct.xdp_umem_fq_reuse* @xsk_reuseq_prepare(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xsk_reuseq_free(i32) #1

declare dso_local i32 @xsk_reuseq_swap(%struct.xdp_umem*, %struct.xdp_umem_fq_reuse*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
