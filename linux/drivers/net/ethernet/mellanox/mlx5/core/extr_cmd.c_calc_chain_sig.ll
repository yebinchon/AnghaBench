; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_calc_chain_sig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_calc_chain_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_cmd_msg = type { %struct.mlx5_cmd_mailbox* }
%struct.mlx5_cmd_mailbox = type { %struct.mlx5_cmd_mailbox*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_cmd_msg*)* @calc_chain_sig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_chain_sig(%struct.mlx5_cmd_msg* %0) #0 {
  %2 = alloca %struct.mlx5_cmd_msg*, align 8
  %3 = alloca %struct.mlx5_cmd_mailbox*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx5_cmd_msg* %0, %struct.mlx5_cmd_msg** %2, align 8
  %6 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5_cmd_msg, %struct.mlx5_cmd_msg* %6, i32 0, i32 0
  %8 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %7, align 8
  store %struct.mlx5_cmd_mailbox* %8, %struct.mlx5_cmd_mailbox** %3, align 8
  %9 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %2, align 8
  %10 = call i32 @mlx5_calc_cmd_blocks(%struct.mlx5_cmd_msg* %9)
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %28, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %3, align 8
  %17 = icmp ne %struct.mlx5_cmd_mailbox* %16, null
  br label %18

18:                                               ; preds = %15, %11
  %19 = phi i1 [ false, %11 ], [ %17, %15 ]
  br i1 %19, label %20, label %31

20:                                               ; preds = %18
  %21 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5_cmd_mailbox, %struct.mlx5_cmd_mailbox* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @calc_block_sig(i32 %23)
  %25 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5_cmd_mailbox, %struct.mlx5_cmd_mailbox* %25, i32 0, i32 0
  %27 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %26, align 8
  store %struct.mlx5_cmd_mailbox* %27, %struct.mlx5_cmd_mailbox** %3, align 8
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %11

31:                                               ; preds = %18
  ret void
}

declare dso_local i32 @mlx5_calc_cmd_blocks(%struct.mlx5_cmd_msg*) #1

declare dso_local i32 @calc_block_sig(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
