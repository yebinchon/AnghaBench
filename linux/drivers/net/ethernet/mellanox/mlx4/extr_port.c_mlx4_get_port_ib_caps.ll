; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_get_port_ib_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_port.c_mlx4_get_port_ib_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32*, i32 }

@MLX4_CMD_MAD_IFC = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_C = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_get_port_ib_caps(%struct.mlx4_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %9 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %14 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %13)
  store %struct.mlx4_cmd_mailbox* %14, %struct.mlx4_cmd_mailbox** %8, align 8
  %15 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %16 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %20 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %19)
  store i32 %20, i32* %4, align 4
  br label %82

21:                                               ; preds = %3
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %23 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %22)
  store %struct.mlx4_cmd_mailbox* %23, %struct.mlx4_cmd_mailbox** %9, align 8
  %24 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %25 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %29 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %30 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %28, %struct.mlx4_cmd_mailbox* %29)
  %31 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %32 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %31)
  store i32 %32, i32* %4, align 4
  br label %82

33:                                               ; preds = %21
  %34 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %35 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %10, align 8
  %37 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %38 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %11, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 1, i32* %41, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 1, i32* %43, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 1, i32* %45, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 3
  store i32 1, i32* %47, align 4
  %48 = call i32 @cpu_to_be16(i32 21)
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 16
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @cpu_to_be32(i32 %51)
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 20
  store i32 %52, i32* %54, align 4
  %55 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %56 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %57 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %60 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @MLX4_CMD_MAD_IFC, align 4
  %64 = load i32, i32* @MLX4_CMD_TIME_CLASS_C, align 4
  %65 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %66 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %55, i32 %58, i32 %61, i32 %62, i32 3, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %33
  %70 = load i32*, i32** %11, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 84
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %33
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %76 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %77 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %75, %struct.mlx4_cmd_mailbox* %76)
  %78 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %79 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %80 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %78, %struct.mlx4_cmd_mailbox* %79)
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %74, %27, %18
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
