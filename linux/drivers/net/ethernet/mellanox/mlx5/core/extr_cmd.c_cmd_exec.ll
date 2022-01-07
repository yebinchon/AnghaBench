; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_cmd_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_cmd_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i64, i32, i32 }
%struct.mlx5_cmd_msg = type { i32 }

@MLX5_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i64 0, align 8
@mbox_in = common dso_local global i32 0, align 4
@mbox_out = common dso_local global i32 0, align 4
@syndrome = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"err %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"err %d, status %d\0A\00", align 1
@opcode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, i8*, i32, i8*, i32, i32, i8*, i32)* @cmd_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_exec(%struct.mlx5_core_dev* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_core_dev*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.mlx5_cmd_msg*, align 8
  %19 = alloca %struct.mlx5_cmd_msg*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store i64 0, i64* %23, align 8
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %28 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @pci_channel_offline(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %8
  %33 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %34 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MLX5_DEVICE_STATE_INTERNAL_ERROR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %32, %8
  %39 = load i32, i32* @mbox_in, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = load i32, i32* %26, align 4
  %42 = call i32 @MLX5_GET(i32 %39, i8* %40, i32 %41)
  store i32 %42, i32* %26, align 4
  %43 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %44 = load i32, i32* %26, align 4
  %45 = call i32 @mlx5_internal_err_ret_value(%struct.mlx5_core_dev* %43, i32 %44, i64* %24, i64* %23)
  store i32 %45, i32* %22, align 4
  %46 = load i32, i32* @mbox_out, align 4
  %47 = load i8*, i8** %13, align 8
  %48 = load i64, i64* %23, align 8
  %49 = load i64, i64* %23, align 8
  %50 = call i32 @MLX5_SET(i32 %46, i8* %47, i64 %48, i64 %49)
  %51 = load i32, i32* @mbox_out, align 4
  %52 = load i8*, i8** %13, align 8
  %53 = load i64, i64* @syndrome, align 8
  %54 = load i64, i64* %24, align 8
  %55 = call i32 @MLX5_SET(i32 %51, i8* %52, i64 %53, i64 %54)
  %56 = load i32, i32* %22, align 4
  store i32 %56, i32* %9, align 4
  br label %157

57:                                               ; preds = %32
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @is_manage_pages(i8* %58)
  store i32 %59, i32* %20, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @GFP_ATOMIC, align 4
  br label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @GFP_KERNEL, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  store i32 %67, i32* %21, align 4
  %68 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %21, align 4
  %71 = call %struct.mlx5_cmd_msg* @alloc_msg(%struct.mlx5_core_dev* %68, i32 %69, i32 %70)
  store %struct.mlx5_cmd_msg* %71, %struct.mlx5_cmd_msg** %18, align 8
  %72 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %18, align 8
  %73 = call i64 @IS_ERR(%struct.mlx5_cmd_msg* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %18, align 8
  %77 = call i32 @PTR_ERR(%struct.mlx5_cmd_msg* %76)
  store i32 %77, i32* %22, align 4
  %78 = load i32, i32* %22, align 4
  store i32 %78, i32* %9, align 4
  br label %157

79:                                               ; preds = %66
  %80 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %81 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %80, i32 0, i32 1
  %82 = call i64 @alloc_token(i32* %81)
  store i64 %82, i64* %25, align 8
  %83 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %18, align 8
  %84 = load i8*, i8** %11, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i64, i64* %25, align 8
  %87 = call i32 @mlx5_copy_to_msg(%struct.mlx5_cmd_msg* %83, i8* %84, i32 %85, i64 %86)
  store i32 %87, i32* %22, align 4
  %88 = load i32, i32* %22, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %79
  %91 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %92 = load i32, i32* %22, align 4
  %93 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %92)
  br label %148

94:                                               ; preds = %79
  %95 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* %14, align 4
  %98 = load i64, i64* %25, align 8
  %99 = call %struct.mlx5_cmd_msg* @mlx5_alloc_cmd_msg(%struct.mlx5_core_dev* %95, i32 %96, i32 %97, i64 %98)
  store %struct.mlx5_cmd_msg* %99, %struct.mlx5_cmd_msg** %19, align 8
  %100 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %19, align 8
  %101 = call i64 @IS_ERR(%struct.mlx5_cmd_msg* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %19, align 8
  %105 = call i32 @PTR_ERR(%struct.mlx5_cmd_msg* %104)
  store i32 %105, i32* %22, align 4
  br label %148

106:                                              ; preds = %94
  %107 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %108 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %18, align 8
  %109 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %19, align 8
  %110 = load i8*, i8** %13, align 8
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %15, align 4
  %113 = load i8*, i8** %16, align 8
  %114 = load i32, i32* %20, align 4
  %115 = load i64, i64* %25, align 8
  %116 = load i32, i32* %17, align 4
  %117 = call i32 @mlx5_cmd_invoke(%struct.mlx5_core_dev* %107, %struct.mlx5_cmd_msg* %108, %struct.mlx5_cmd_msg* %109, i8* %110, i32 %111, i32 %112, i8* %113, i32 %114, i64* %23, i64 %115, i32 %116)
  store i32 %117, i32* %22, align 4
  %118 = load i32, i32* %22, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %106
  br label %140

121:                                              ; preds = %106
  %122 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %123 = load i32, i32* %22, align 4
  %124 = load i64, i64* %23, align 8
  %125 = call i32 @mlx5_core_dbg(%struct.mlx5_core_dev* %122, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %123, i64 %124)
  %126 = load i64, i64* %23, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load i64, i64* %23, align 8
  %130 = call i32 @status_to_err(i64 %129)
  store i32 %130, i32* %22, align 4
  br label %140

131:                                              ; preds = %121
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %131
  %135 = load i8*, i8** %13, align 8
  %136 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %19, align 8
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @mlx5_copy_from_msg(i8* %135, %struct.mlx5_cmd_msg* %136, i32 %137)
  store i32 %138, i32* %22, align 4
  br label %139

139:                                              ; preds = %134, %131
  br label %140

140:                                              ; preds = %139, %128, %120
  %141 = load i32, i32* %15, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %145 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %19, align 8
  %146 = call i32 @mlx5_free_cmd_msg(%struct.mlx5_core_dev* %144, %struct.mlx5_cmd_msg* %145)
  br label %147

147:                                              ; preds = %143, %140
  br label %148

148:                                              ; preds = %147, %103, %90
  %149 = load i32, i32* %15, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %148
  %152 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %153 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %18, align 8
  %154 = call i32 @free_msg(%struct.mlx5_core_dev* %152, %struct.mlx5_cmd_msg* %153)
  br label %155

155:                                              ; preds = %151, %148
  %156 = load i32, i32* %22, align 4
  store i32 %156, i32* %9, align 4
  br label %157

157:                                              ; preds = %155, %75, %38
  %158 = load i32, i32* %9, align 4
  ret i32 %158
}

declare dso_local i64 @pci_channel_offline(i32) #1

declare dso_local i32 @MLX5_GET(i32, i8*, i32) #1

declare dso_local i32 @mlx5_internal_err_ret_value(%struct.mlx5_core_dev*, i32, i64*, i64*) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i64, i64) #1

declare dso_local i32 @is_manage_pages(i8*) #1

declare dso_local %struct.mlx5_cmd_msg* @alloc_msg(%struct.mlx5_core_dev*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_cmd_msg*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_cmd_msg*) #1

declare dso_local i64 @alloc_token(i32*) #1

declare dso_local i32 @mlx5_copy_to_msg(%struct.mlx5_cmd_msg*, i8*, i32, i64) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local %struct.mlx5_cmd_msg* @mlx5_alloc_cmd_msg(%struct.mlx5_core_dev*, i32, i32, i64) #1

declare dso_local i32 @mlx5_cmd_invoke(%struct.mlx5_core_dev*, %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg*, i8*, i32, i32, i8*, i32, i64*, i64, i32) #1

declare dso_local i32 @mlx5_core_dbg(%struct.mlx5_core_dev*, i8*, i32, i64) #1

declare dso_local i32 @status_to_err(i64) #1

declare dso_local i32 @mlx5_copy_from_msg(i8*, %struct.mlx5_cmd_msg*, i32) #1

declare dso_local i32 @mlx5_free_cmd_msg(%struct.mlx5_core_dev*, %struct.mlx5_cmd_msg*) #1

declare dso_local i32 @free_msg(%struct.mlx5_core_dev*, %struct.mlx5_cmd_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
