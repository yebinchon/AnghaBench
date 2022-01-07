; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_cmd.c_mlx5_cmd_modify_header_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_cmd.c_mlx5_cmd_modify_header_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_root_namespace = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_modify_hdr = type { i32 }

@alloc_modify_header_context_out = common dso_local global i32 0, align 4
@max_modify_header_actions = common dso_local global i32 0, align 4
@FS_FT_FDB = common dso_local global i32 0, align 4
@FS_FT_NIC_RX = common dso_local global i32 0, align 4
@FS_FT_NIC_TX = common dso_local global i32 0, align 4
@FS_FT_ESW_INGRESS_ACL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"too many modify header actions %d, max supported %d\0A\00", align 1
@set_action_in_add_action_in_auto = common dso_local global i32 0, align 4
@alloc_modify_header_context_in = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@opcode = common dso_local global i32 0, align 4
@MLX5_CMD_OP_ALLOC_MODIFY_HEADER_CONTEXT = common dso_local global i32 0, align 4
@num_of_actions = common dso_local global i32 0, align 4
@actions = common dso_local global i32 0, align 4
@modify_header_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_flow_root_namespace*, i32, i32, i8*, %struct.mlx5_modify_hdr*)* @mlx5_cmd_modify_header_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_cmd_modify_header_alloc(%struct.mlx5_flow_root_namespace* %0, i32 %1, i32 %2, i8* %3, %struct.mlx5_modify_hdr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_flow_root_namespace*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.mlx5_modify_hdr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mlx5_core_dev*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store %struct.mlx5_flow_root_namespace* %0, %struct.mlx5_flow_root_namespace** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.mlx5_modify_hdr* %4, %struct.mlx5_modify_hdr** %11, align 8
  %23 = load i32, i32* @alloc_modify_header_context_out, align 4
  %24 = call i32 @MLX5_ST_SZ_DW(i32 %23)
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %28 = load %struct.mlx5_flow_root_namespace*, %struct.mlx5_flow_root_namespace** %7, align 8
  %29 = getelementptr inbounds %struct.mlx5_flow_root_namespace, %struct.mlx5_flow_root_namespace* %28, i32 0, i32 0
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %29, align 8
  store %struct.mlx5_core_dev* %30, %struct.mlx5_core_dev** %18, align 8
  %31 = load i32, i32* %8, align 4
  switch i32 %31, label %52 [
    i32 129, label %32
    i32 128, label %37
    i32 132, label %37
    i32 131, label %42
    i32 130, label %47
  ]

32:                                               ; preds = %5
  %33 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %18, align 8
  %34 = load i32, i32* @max_modify_header_actions, align 4
  %35 = call i32 @MLX5_CAP_ESW_FLOWTABLE_FDB(%struct.mlx5_core_dev* %33, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* @FS_FT_FDB, align 4
  store i32 %36, i32* %20, align 4
  br label %55

37:                                               ; preds = %5, %5
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %18, align 8
  %39 = load i32, i32* @max_modify_header_actions, align 4
  %40 = call i32 @MLX5_CAP_FLOWTABLE_NIC_RX(%struct.mlx5_core_dev* %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* @FS_FT_NIC_RX, align 4
  store i32 %41, i32* %20, align 4
  br label %55

42:                                               ; preds = %5
  %43 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %18, align 8
  %44 = load i32, i32* @max_modify_header_actions, align 4
  %45 = call i32 @MLX5_CAP_FLOWTABLE_NIC_TX(%struct.mlx5_core_dev* %43, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* @FS_FT_NIC_TX, align 4
  store i32 %46, i32* %20, align 4
  br label %55

47:                                               ; preds = %5
  %48 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %18, align 8
  %49 = load i32, i32* @max_modify_header_actions, align 4
  %50 = call i32 @MLX5_CAP_ESW_INGRESS_ACL(%struct.mlx5_core_dev* %48, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* @FS_FT_ESW_INGRESS_ACL, align 4
  store i32 %51, i32* %20, align 4
  br label %55

52:                                               ; preds = %5
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %124

55:                                               ; preds = %47, %42, %37, %32
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %18, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %60, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* @EOPNOTSUPP, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %124

66:                                               ; preds = %55
  %67 = load i32, i32* @set_action_in_add_action_in_auto, align 4
  %68 = call i32 @MLX5_UN_SZ_BYTES(i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = mul nsw i32 %68, %69
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* @alloc_modify_header_context_in, align 4
  %72 = call i32 @MLX5_ST_SZ_BYTES(i32 %71)
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i32* @kzalloc(i32 %75, i32 %76)
  store i32* %77, i32** %21, align 8
  %78 = load i32*, i32** %21, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %66
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %124

83:                                               ; preds = %66
  %84 = load i32, i32* @alloc_modify_header_context_in, align 4
  %85 = load i32*, i32** %21, align 8
  %86 = load i32, i32* @opcode, align 4
  %87 = load i32, i32* @MLX5_CMD_OP_ALLOC_MODIFY_HEADER_CONTEXT, align 4
  %88 = call i32 @MLX5_SET(i32 %84, i32* %85, i32 %86, i32 %87)
  %89 = load i32, i32* @alloc_modify_header_context_in, align 4
  %90 = load i32*, i32** %21, align 8
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* %20, align 4
  %93 = call i32 @MLX5_SET(i32 %89, i32* %90, i32 %91, i32 %92)
  %94 = load i32, i32* @alloc_modify_header_context_in, align 4
  %95 = load i32*, i32** %21, align 8
  %96 = load i32, i32* @num_of_actions, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @MLX5_SET(i32 %94, i32* %95, i32 %96, i32 %97)
  %99 = load i32, i32* @alloc_modify_header_context_in, align 4
  %100 = load i32*, i32** %21, align 8
  %101 = load i32, i32* @actions, align 4
  %102 = call i8* @MLX5_ADDR_OF(i32 %99, i32* %100, i32 %101)
  store i8* %102, i8** %19, align 8
  %103 = load i8*, i8** %19, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @memcpy(i8* %103, i8* %104, i32 %105)
  %107 = mul nuw i64 4, %25
  %108 = trunc i64 %107 to i32
  %109 = call i32 @memset(i32* %27, i32 0, i32 %108)
  %110 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %18, align 8
  %111 = load i32*, i32** %21, align 8
  %112 = load i32, i32* %16, align 4
  %113 = mul nuw i64 4, %25
  %114 = trunc i64 %113 to i32
  %115 = call i32 @mlx5_cmd_exec(%struct.mlx5_core_dev* %110, i32* %111, i32 %112, i32* %27, i32 %114)
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* @alloc_modify_header_context_out, align 4
  %117 = load i32, i32* @modify_header_id, align 4
  %118 = call i32 @MLX5_GET(i32 %116, i32* %27, i32 %117)
  %119 = load %struct.mlx5_modify_hdr*, %struct.mlx5_modify_hdr** %11, align 8
  %120 = getelementptr inbounds %struct.mlx5_modify_hdr, %struct.mlx5_modify_hdr* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load i32*, i32** %21, align 8
  %122 = call i32 @kfree(i32* %121)
  %123 = load i32, i32* %17, align 4
  store i32 %123, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %124

124:                                              ; preds = %83, %80, %59, %52
  %125 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @MLX5_ST_SZ_DW(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @MLX5_CAP_ESW_FLOWTABLE_FDB(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_CAP_FLOWTABLE_NIC_RX(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_CAP_FLOWTABLE_NIC_TX(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @MLX5_CAP_ESW_INGRESS_ACL(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32, i32) #1

declare dso_local i32 @MLX5_UN_SZ_BYTES(i32) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mlx5_cmd_exec(%struct.mlx5_core_dev*, i32*, i32, i32*, i32) #1

declare dso_local i32 @MLX5_GET(i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
