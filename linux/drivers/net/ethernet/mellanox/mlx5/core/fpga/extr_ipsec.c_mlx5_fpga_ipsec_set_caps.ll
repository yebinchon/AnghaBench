; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_set_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_set_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_fpga_ipsec_cmd_context = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_ifc_fpga_ipsec_cmd_cap = type { i32, i8*, i32 }

@MLX5_FPGA_IPSEC_CMD_OP_SET_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Failed to set capabilities. cmd 0x%08x vs resp 0x%08x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i32)* @mlx5_fpga_ipsec_set_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_fpga_ipsec_set_caps(%struct.mlx5_core_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_fpga_ipsec_cmd_context*, align 8
  %7 = alloca %struct.mlx5_ifc_fpga_ipsec_cmd_cap, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast %struct.mlx5_ifc_fpga_ipsec_cmd_cap* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load i32, i32* @MLX5_FPGA_IPSEC_CMD_OP_SET_CAP, align 4
  %11 = call i8* @htonl(i32 %10)
  %12 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_cmd_cap, %struct.mlx5_ifc_fpga_ipsec_cmd_cap* %7, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i8* @htonl(i32 %13)
  %15 = ptrtoint i8* %14 to i32
  %16 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_cmd_cap, %struct.mlx5_ifc_fpga_ipsec_cmd_cap* %7, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %18 = call %struct.mlx5_fpga_ipsec_cmd_context* @mlx5_fpga_ipsec_cmd_exec(%struct.mlx5_core_dev* %17, %struct.mlx5_ifc_fpga_ipsec_cmd_cap* %7, i32 24)
  store %struct.mlx5_fpga_ipsec_cmd_context* %18, %struct.mlx5_fpga_ipsec_cmd_context** %6, align 8
  %19 = load %struct.mlx5_fpga_ipsec_cmd_context*, %struct.mlx5_fpga_ipsec_cmd_context** %6, align 8
  %20 = call i64 @IS_ERR(%struct.mlx5_fpga_ipsec_cmd_context* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.mlx5_fpga_ipsec_cmd_context*, %struct.mlx5_fpga_ipsec_cmd_context** %6, align 8
  %24 = call i32 @PTR_ERR(%struct.mlx5_fpga_ipsec_cmd_context* %23)
  store i32 %24, i32* %3, align 4
  br label %60

25:                                               ; preds = %2
  %26 = load %struct.mlx5_fpga_ipsec_cmd_context*, %struct.mlx5_fpga_ipsec_cmd_context** %6, align 8
  %27 = call i32 @mlx5_fpga_ipsec_cmd_wait(%struct.mlx5_fpga_ipsec_cmd_context* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %56

31:                                               ; preds = %25
  %32 = load %struct.mlx5_fpga_ipsec_cmd_context*, %struct.mlx5_fpga_ipsec_cmd_context** %6, align 8
  %33 = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, %struct.mlx5_fpga_ipsec_cmd_context* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_cmd_cap, %struct.mlx5_ifc_fpga_ipsec_cmd_cap* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %35, %37
  %39 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_cmd_cap, %struct.mlx5_ifc_fpga_ipsec_cmd_cap* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %31
  %43 = load %struct.mlx5_fpga_ipsec_cmd_context*, %struct.mlx5_fpga_ipsec_cmd_context** %6, align 8
  %44 = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, %struct.mlx5_fpga_ipsec_cmd_context* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.mlx5_ifc_fpga_ipsec_cmd_cap, %struct.mlx5_ifc_fpga_ipsec_cmd_cap* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.mlx5_fpga_ipsec_cmd_context*, %struct.mlx5_fpga_ipsec_cmd_context** %6, align 8
  %49 = getelementptr inbounds %struct.mlx5_fpga_ipsec_cmd_context, %struct.mlx5_fpga_ipsec_cmd_context* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mlx5_fpga_err(i32 %45, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %51)
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %42, %31
  br label %56

56:                                               ; preds = %55, %30
  %57 = load %struct.mlx5_fpga_ipsec_cmd_context*, %struct.mlx5_fpga_ipsec_cmd_context** %6, align 8
  %58 = call i32 @kfree(%struct.mlx5_fpga_ipsec_cmd_context* %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %22
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @htonl(i32) #2

declare dso_local %struct.mlx5_fpga_ipsec_cmd_context* @mlx5_fpga_ipsec_cmd_exec(%struct.mlx5_core_dev*, %struct.mlx5_ifc_fpga_ipsec_cmd_cap*, i32) #2

declare dso_local i64 @IS_ERR(%struct.mlx5_fpga_ipsec_cmd_context*) #2

declare dso_local i32 @PTR_ERR(%struct.mlx5_fpga_ipsec_cmd_context*) #2

declare dso_local i32 @mlx5_fpga_ipsec_cmd_wait(%struct.mlx5_fpga_ipsec_cmd_context*) #2

declare dso_local i32 @mlx5_fpga_err(i32, i8*, i32, i32) #2

declare dso_local i32 @kfree(%struct.mlx5_fpga_ipsec_cmd_context*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
