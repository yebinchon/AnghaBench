; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_check_smp_firewall_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_check_smp_firewall_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"SMP firewall set_attribute_mask = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"SMP firewall getresp_attribute_mask = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"SMP firewall trap_attribute_mask = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"SMP firewall traprepress_attribute_mask = 0x%x\0A\00", align 1
@MLX4_CMD_MAD_DEMUX_GETRESP_ATTR_OFFSET = common dso_local global i32 0, align 4
@MLX4_CMD_MAD_DEMUX_SET_ATTR_OFFSET = common dso_local global i32 0, align 4
@MLX4_CMD_MAD_DEMUX_TRAP_ATTR_OFFSET = common dso_local global i32 0, align 4
@MLX4_CMD_MAD_DEMUX_TRAP_REPRESS_ATTR_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*)* @mlx4_check_smp_firewall_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_check_smp_firewall_active(%struct.mlx4_dev* %0, %struct.mlx4_cmd_mailbox* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_cmd_mailbox* %1, %struct.mlx4_cmd_mailbox** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %5, align 8
  %12 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @MLX4_GET(i64 %10, i32 %13, i32 16)
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @mlx4_dbg(%struct.mlx4_dev* %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %5, align 8
  %20 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @MLX4_GET(i64 %18, i32 %21, i32 32)
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @mlx4_dbg(%struct.mlx4_dev* %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %5, align 8
  %28 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @MLX4_GET(i64 %26, i32 %29, i32 64)
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @mlx4_dbg(%struct.mlx4_dev* %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %5, align 8
  %36 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @MLX4_GET(i64 %34, i32 %37, i32 112)
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @mlx4_dbg(%struct.mlx4_dev* %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i64 %40)
  %42 = load i64, i64* %6, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %2
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i64, i64* %9, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %55

54:                                               ; preds = %50, %47, %44, %2
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %53
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @MLX4_GET(i64, i32, i32) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
