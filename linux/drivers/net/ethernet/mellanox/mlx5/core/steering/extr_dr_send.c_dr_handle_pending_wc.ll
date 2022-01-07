; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_dr_handle_pending_wc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_dr_handle_pending_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5dr_send_ring = type { i64, i64, i32 }

@TH_NUMS_TO_DRAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_domain*, %struct.mlx5dr_send_ring*)* @dr_handle_pending_wc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_handle_pending_wc(%struct.mlx5dr_domain* %0, %struct.mlx5dr_send_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5dr_domain*, align 8
  %5 = alloca %struct.mlx5dr_send_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %4, align 8
  store %struct.mlx5dr_send_ring* %1, %struct.mlx5dr_send_ring** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %5, align 8
  %9 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

16:                                               ; preds = %2
  %17 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TH_NUMS_TO_DRAIN, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = icmp sge i64 %19, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %16
  br label %31

31:                                               ; preds = %61, %30
  %32 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dr_poll_cq(i32 %34, i32 1)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %64

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %5, align 8
  %45 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %5, align 8
  %48 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, %46
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %43, %40
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %5, align 8
  %58 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi i1 [ false, %53 ], [ %60, %56 ]
  br i1 %62, label %31, label %63

63:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %38, %15
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @dr_poll_cq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
