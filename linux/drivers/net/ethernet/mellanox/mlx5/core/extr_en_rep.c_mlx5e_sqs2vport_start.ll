; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_sqs2vport_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_sqs2vport_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i64 }
%struct.mlx5_eswitch_rep = type { i32 }
%struct.mlx5_flow_handle = type { i32 }
%struct.mlx5e_rep_priv = type { i32 }
%struct.mlx5e_rep_sq = type { i32, %struct.mlx5_flow_handle* }

@MLX5_ESWITCH_OFFLOADS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*, %struct.mlx5_eswitch_rep*, i32*, i32)* @mlx5e_sqs2vport_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_sqs2vport_start(%struct.mlx5_eswitch* %0, %struct.mlx5_eswitch_rep* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_eswitch*, align 8
  %7 = alloca %struct.mlx5_eswitch_rep*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_flow_handle*, align 8
  %11 = alloca %struct.mlx5e_rep_priv*, align 8
  %12 = alloca %struct.mlx5e_rep_sq*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %6, align 8
  store %struct.mlx5_eswitch_rep* %1, %struct.mlx5_eswitch_rep** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %6, align 8
  %16 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MLX5_ESWITCH_OFFLOADS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %73

21:                                               ; preds = %4
  %22 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %7, align 8
  %23 = call %struct.mlx5e_rep_priv* @mlx5e_rep_to_rep_priv(%struct.mlx5_eswitch_rep* %22)
  store %struct.mlx5e_rep_priv* %23, %struct.mlx5e_rep_priv** %11, align 8
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %64, %21
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %67

28:                                               ; preds = %24
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.mlx5e_rep_sq* @kzalloc(i32 16, i32 %29)
  store %struct.mlx5e_rep_sq* %30, %struct.mlx5e_rep_sq** %12, align 8
  %31 = load %struct.mlx5e_rep_sq*, %struct.mlx5e_rep_sq** %12, align 8
  %32 = icmp ne %struct.mlx5e_rep_sq* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %13, align 4
  br label %68

36:                                               ; preds = %28
  %37 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %6, align 8
  %38 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %7, align 8
  %39 = getelementptr inbounds %struct.mlx5_eswitch_rep, %struct.mlx5_eswitch_rep* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.mlx5_flow_handle* @mlx5_eswitch_add_send_to_vport_rule(%struct.mlx5_eswitch* %37, i32 %40, i32 %45)
  store %struct.mlx5_flow_handle* %46, %struct.mlx5_flow_handle** %10, align 8
  %47 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %10, align 8
  %48 = call i64 @IS_ERR(%struct.mlx5_flow_handle* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %36
  %51 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %10, align 8
  %52 = call i32 @PTR_ERR(%struct.mlx5_flow_handle* %51)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.mlx5e_rep_sq*, %struct.mlx5e_rep_sq** %12, align 8
  %54 = call i32 @kfree(%struct.mlx5e_rep_sq* %53)
  br label %68

55:                                               ; preds = %36
  %56 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %10, align 8
  %57 = load %struct.mlx5e_rep_sq*, %struct.mlx5e_rep_sq** %12, align 8
  %58 = getelementptr inbounds %struct.mlx5e_rep_sq, %struct.mlx5e_rep_sq* %57, i32 0, i32 1
  store %struct.mlx5_flow_handle* %56, %struct.mlx5_flow_handle** %58, align 8
  %59 = load %struct.mlx5e_rep_sq*, %struct.mlx5e_rep_sq** %12, align 8
  %60 = getelementptr inbounds %struct.mlx5e_rep_sq, %struct.mlx5e_rep_sq* %59, i32 0, i32 0
  %61 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %11, align 8
  %62 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %61, i32 0, i32 0
  %63 = call i32 @list_add(i32* %60, i32* %62)
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  br label %24

67:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %73

68:                                               ; preds = %50, %33
  %69 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %6, align 8
  %70 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %7, align 8
  %71 = call i32 @mlx5e_sqs2vport_stop(%struct.mlx5_eswitch* %69, %struct.mlx5_eswitch_rep* %70)
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %68, %67, %20
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.mlx5e_rep_priv* @mlx5e_rep_to_rep_priv(%struct.mlx5_eswitch_rep*) #1

declare dso_local %struct.mlx5e_rep_sq* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5_flow_handle* @mlx5_eswitch_add_send_to_vport_rule(%struct.mlx5_eswitch*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_handle*) #1

declare dso_local i32 @kfree(%struct.mlx5e_rep_sq*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mlx5e_sqs2vport_stop(%struct.mlx5_eswitch*, %struct.mlx5_eswitch_rep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
