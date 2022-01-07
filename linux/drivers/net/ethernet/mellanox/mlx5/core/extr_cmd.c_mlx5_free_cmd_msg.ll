; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_mlx5_free_cmd_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_mlx5_free_cmd_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_cmd_msg = type { %struct.mlx5_cmd_mailbox* }
%struct.mlx5_cmd_mailbox = type { %struct.mlx5_cmd_mailbox* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, %struct.mlx5_cmd_msg*)* @mlx5_free_cmd_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_free_cmd_msg(%struct.mlx5_core_dev* %0, %struct.mlx5_cmd_msg* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_cmd_msg*, align 8
  %5 = alloca %struct.mlx5_cmd_mailbox*, align 8
  %6 = alloca %struct.mlx5_cmd_mailbox*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5_cmd_msg* %1, %struct.mlx5_cmd_msg** %4, align 8
  %7 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %4, align 8
  %8 = getelementptr inbounds %struct.mlx5_cmd_msg, %struct.mlx5_cmd_msg* %7, i32 0, i32 0
  %9 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %8, align 8
  store %struct.mlx5_cmd_mailbox* %9, %struct.mlx5_cmd_mailbox** %5, align 8
  br label %10

10:                                               ; preds = %13, %2
  %11 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %5, align 8
  %12 = icmp ne %struct.mlx5_cmd_mailbox* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5_cmd_mailbox, %struct.mlx5_cmd_mailbox* %14, i32 0, i32 0
  %16 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %15, align 8
  store %struct.mlx5_cmd_mailbox* %16, %struct.mlx5_cmd_mailbox** %6, align 8
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %18 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %5, align 8
  %19 = call i32 @free_cmd_box(%struct.mlx5_core_dev* %17, %struct.mlx5_cmd_mailbox* %18)
  %20 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %6, align 8
  store %struct.mlx5_cmd_mailbox* %20, %struct.mlx5_cmd_mailbox** %5, align 8
  br label %10

21:                                               ; preds = %10
  %22 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %4, align 8
  %23 = call i32 @kfree(%struct.mlx5_cmd_msg* %22)
  ret void
}

declare dso_local i32 @free_cmd_box(%struct.mlx5_core_dev*, %struct.mlx5_cmd_mailbox*) #1

declare dso_local i32 @kfree(%struct.mlx5_cmd_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
