; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_roce_verify_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_roce_verify_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_qp_context = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_cmd_mailbox = type { i64 }

@MLX4_QP_ST_MLX = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, %struct.mlx4_qp_context*, %struct.mlx4_cmd_mailbox*)* @roce_verify_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @roce_verify_mac(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_qp_context* %2, %struct.mlx4_cmd_mailbox* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_qp_context*, align 8
  %9 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mlx4_qp_context* %2, %struct.mlx4_qp_context** %8, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %9, align 8
  %15 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %8, align 8
  %16 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @be32_to_cpu(i32 %17)
  %19 = ashr i32 %18, 16
  %20 = and i32 %19, 255
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %12, align 8
  %22 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %23 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 64
  %26 = inttoptr i64 %25 to i32*
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = ashr i32 %28, 6
  %30 = and i32 %29, 1
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %11, align 4
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @mlx4_is_eth(%struct.mlx4_dev* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %4
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* @MLX4_QP_ST_MLX, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %8, align 8
  %42 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 127
  store i32 %45, i32* %14, align 4
  %46 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i64 @mac_find_smac_ix_in_slave(%struct.mlx4_dev* %46, i32 %47, i32 %48, i32 %49, i32* %10)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load i32, i32* @ENOENT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %57

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %36, %4
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %52
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @mlx4_is_eth(%struct.mlx4_dev*, i32) #1

declare dso_local i64 @mac_find_smac_ix_in_slave(%struct.mlx4_dev*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
