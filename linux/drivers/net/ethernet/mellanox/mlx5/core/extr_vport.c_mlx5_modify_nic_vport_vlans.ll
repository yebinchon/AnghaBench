; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_vport.c_mlx5_modify_nic_vport_vlans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_vport.c_mlx5_modify_nic_vport_vlans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mlx5_core_dev = type { i32 }

@modify_nic_vport_context_out = common dso_local global i32 0, align 4
@log_max_vlan_list = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@modify_nic_vport_context_in = common dso_local global i32 0, align 4
@vlan_layout = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_MODIFY_NIC_VPORT_CONTEXT = common dso_local global i32 0, align 4
@field_select = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@nic_vport_context = common dso_local global i32 0, align 4
@allowed_list_type = common dso_local global i32 0, align 4
@MLX5_NVPRT_LIST_TYPE_VLAN = common dso_local global i32 0, align 4
@allowed_list_size = common dso_local global i32 0, align 4
@current_uc_mac_address = common dso_local global i32* null, align 8
@vlan = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_modify_nic_vport_vlans(%struct.mlx5_core_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load i32, i32* @modify_nic_vport_context_out, align 4
  %19 = call i32 @MLX5_ST_SZ_DW(i32 %18)
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %8, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %9, align 8
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %24 = load i32, i32* @log_max_vlan_list, align 4
  %25 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %23, i32 %24)
  %26 = shl i32 1, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOSPC, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %111

33:                                               ; preds = %3
  %34 = load i32, i32* @modify_nic_vport_context_in, align 4
  %35 = call i32 @MLX5_ST_SZ_BYTES(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @vlan_layout, align 4
  %38 = call i32 @MLX5_ST_SZ_BYTES(i32 %37)
  %39 = mul nsw i32 %36, %38
  %40 = add nsw i32 %35, %39
  store i32 %40, i32* %12, align 4
  %41 = mul nuw i64 4, %20
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(i32* %22, i32 0, i32 %42)
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kzalloc(i32 %44, i32 %45)
  store i8* %46, i8** %13, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %33
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %111

52:                                               ; preds = %33
  %53 = load i32, i32* @modify_nic_vport_context_in, align 4
  %54 = load i8*, i8** %13, align 8
  %55 = load i32, i32* @opcode, align 4
  %56 = load i32, i32* @MLX5_CMD_OP_MODIFY_NIC_VPORT_CONTEXT, align 4
  %57 = call i32 @MLX5_SET(i32 %53, i8* %54, i32 %55, i32 %56)
  %58 = load i32, i32* @modify_nic_vport_context_in, align 4
  %59 = load i8*, i8** %13, align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @field_select, i32 0, i32 0), align 4
  %61 = call i32 @MLX5_SET(i32 %58, i8* %59, i32 %60, i32 1)
  %62 = load i32, i32* @modify_nic_vport_context_in, align 4
  %63 = load i8*, i8** %13, align 8
  %64 = load i32, i32* @nic_vport_context, align 4
  %65 = call i8* @MLX5_ADDR_OF(i32 %62, i8* %63, i32 %64)
  store i8* %65, i8** %10, align 8
  %66 = load i32, i32* @nic_vport_context, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* @allowed_list_type, align 4
  %69 = load i32, i32* @MLX5_NVPRT_LIST_TYPE_VLAN, align 4
  %70 = call i32 @MLX5_SET(i32 %66, i8* %67, i32 %68, i32 %69)
  %71 = load i32, i32* @nic_vport_context, align 4
  %72 = load i8*, i8** %10, align 8
  %73 = load i32, i32* @allowed_list_size, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @MLX5_SET(i32 %71, i8* %72, i32 %73, i32 %74)
  store i32 0, i32* %15, align 4
  br label %76

76:                                               ; preds = %98, %52
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %101

80:                                               ; preds = %76
  %81 = load i32, i32* @nic_vport_context, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = load i32*, i32** @current_uc_mac_address, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @MLX5_ADDR_OF(i32 %81, i8* %82, i32 %87)
  store i8* %88, i8** %17, align 8
  %89 = load i32, i32* @vlan_layout, align 4
  %90 = load i8*, i8** %17, align 8
  %91 = load i32, i32* @vlan, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @MLX5_SET(i32 %89, i8* %90, i32 %91, i32 %96)
  br label %98

98:                                               ; preds = %80
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %15, align 4
  br label %76

101:                                              ; preds = %76
  %102 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = load i32, i32* %12, align 4
  %105 = mul nuw i64 4, %20
  %106 = trunc i64 %105 to i32
  %107 = call i32 @mlx5_cmd_exec(%struct.mlx5_core_dev* %102, i8* %103, i32 %104, i32* %22, i32 %106)
  store i32 %107, i32* %14, align 4
  %108 = load i8*, i8** %13, align 8
  %109 = call i32 @kfree(i8* %108)
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %111

111:                                              ; preds = %101, %49, %30
  %112 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %112)
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @mlx5_cmd_exec(%struct.mlx5_core_dev*, i8*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
