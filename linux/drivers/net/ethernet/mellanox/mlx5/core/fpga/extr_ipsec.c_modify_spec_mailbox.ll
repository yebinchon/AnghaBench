; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_modify_spec_mailbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_modify_spec_mailbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.fs_fte = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.mailbox_mod = type { i32, i32, i64 }

@fte_match_param = common dso_local global i32 0, align 4
@misc_parameters = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_ENCRYPT = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_DECRYPT = common dso_local global i32 0, align 4
@fte_match_set_misc = common dso_local global i32 0, align 4
@outer_esp_spi = common dso_local global i32 0, align 4
@flow_table_properties_nic_receive = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, %struct.fs_fte*, %struct.mailbox_mod*)* @modify_spec_mailbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modify_spec_mailbox(%struct.mlx5_core_dev* %0, %struct.fs_fte* %1, %struct.mailbox_mod* %2) #0 {
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.fs_fte*, align 8
  %6 = alloca %struct.mailbox_mod*, align 8
  %7 = alloca i8*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.fs_fte* %1, %struct.fs_fte** %5, align 8
  store %struct.mailbox_mod* %2, %struct.mailbox_mod** %6, align 8
  %8 = load i32, i32* @fte_match_param, align 4
  %9 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %10 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @misc_parameters, align 4
  %13 = call i8* @MLX5_ADDR_OF(i32 %8, i32 %11, i32 %12)
  store i8* %13, i8** %7, align 8
  %14 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %15 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.mailbox_mod*, %struct.mailbox_mod** %6, align 8
  %19 = getelementptr inbounds %struct.mailbox_mod, %struct.mailbox_mod* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %21 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_ENCRYPT, align 4
  %25 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_DECRYPT, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = load %struct.mailbox_mod*, %struct.mailbox_mod** %6, align 8
  %29 = getelementptr inbounds %struct.mailbox_mod, %struct.mailbox_mod* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @fte_match_set_misc, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* @outer_esp_spi, align 4
  %33 = call i32 @MLX5_GET(i32 %30, i8* %31, i32 %32)
  %34 = load %struct.mailbox_mod*, %struct.mailbox_mod** %6, align 8
  %35 = getelementptr inbounds %struct.mailbox_mod, %struct.mailbox_mod* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %37 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_ENCRYPT, align 4
  %40 = load i32, i32* @MLX5_FLOW_CONTEXT_ACTION_DECRYPT, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %44 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %42
  store i32 %47, i32* %45, align 8
  %48 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @flow_table_properties_nic_receive, i32 0, i32 0, i32 0), align 4
  %50 = call i32 @MLX5_CAP_FLOWTABLE(%struct.mlx5_core_dev* %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %3
  %53 = load i32, i32* @fte_match_set_misc, align 4
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* @outer_esp_spi, align 4
  %56 = call i32 @MLX5_SET(i32 %53, i8* %54, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %52, %3
  ret void
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i32, i32) #1

declare dso_local i32 @MLX5_GET(i32, i8*, i32) #1

declare dso_local i32 @MLX5_CAP_FLOWTABLE(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
