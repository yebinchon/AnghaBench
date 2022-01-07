; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_ACCESS_REG.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_fw.c_mlx4_ACCESS_REG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, %struct.mlx4_access_reg* }
%struct.mlx4_access_reg = type { i32, i32, i8*, i32, i8*, i8*, i8* }

@MLX4_ACCESS_REG_METHOD_MASK = common dso_local global i32 0, align 4
@MLX4_ACCESS_REG_LEN_MASK = common dso_local global i32 0, align 4
@MLX4_CMD_ACCESS_REG = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_C = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@MLX4_ACCESS_REG_STATUS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"MLX4_CMD_ACCESS_REG(%x) returned REG status (%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i8*)* @mlx4_ACCESS_REG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ACCESS_REG(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %14 = alloca %struct.mlx4_access_reg*, align 8
  %15 = alloca %struct.mlx4_access_reg*, align 8
  %16 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %17 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %18 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %17)
  store %struct.mlx4_cmd_mailbox* %18, %struct.mlx4_cmd_mailbox** %12, align 8
  %19 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %20 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %24 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %23)
  store i32 %24, i32* %6, align 4
  br label %121

25:                                               ; preds = %5
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %27 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %26)
  store %struct.mlx4_cmd_mailbox* %27, %struct.mlx4_cmd_mailbox** %13, align 8
  %28 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %13, align 8
  %29 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %33 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %34 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %32, %struct.mlx4_cmd_mailbox* %33)
  %35 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %13, align 8
  %36 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %35)
  store i32 %36, i32* %6, align 4
  br label %121

37:                                               ; preds = %25
  %38 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %39 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %38, i32 0, i32 1
  %40 = load %struct.mlx4_access_reg*, %struct.mlx4_access_reg** %39, align 8
  store %struct.mlx4_access_reg* %40, %struct.mlx4_access_reg** %14, align 8
  %41 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %13, align 8
  %42 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %41, i32 0, i32 1
  %43 = load %struct.mlx4_access_reg*, %struct.mlx4_access_reg** %42, align 8
  store %struct.mlx4_access_reg* %43, %struct.mlx4_access_reg** %15, align 8
  %44 = call i8* @cpu_to_be16(i32 2052)
  %45 = load %struct.mlx4_access_reg*, %struct.mlx4_access_reg** %14, align 8
  %46 = getelementptr inbounds %struct.mlx4_access_reg, %struct.mlx4_access_reg* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  %47 = load %struct.mlx4_access_reg*, %struct.mlx4_access_reg** %14, align 8
  %48 = getelementptr inbounds %struct.mlx4_access_reg, %struct.mlx4_access_reg* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i8* @cpu_to_be16(i32 %49)
  %51 = load %struct.mlx4_access_reg*, %struct.mlx4_access_reg** %14, align 8
  %52 = getelementptr inbounds %struct.mlx4_access_reg, %struct.mlx4_access_reg* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @MLX4_ACCESS_REG_METHOD_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load %struct.mlx4_access_reg*, %struct.mlx4_access_reg** %14, align 8
  %57 = getelementptr inbounds %struct.mlx4_access_reg, %struct.mlx4_access_reg* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @min(i32 %58, i32 8)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sdiv i32 %60, 4
  %62 = add nsw i32 %61, 1
  %63 = load i32, i32* @MLX4_ACCESS_REG_LEN_MASK, align 4
  %64 = and i32 %62, %63
  %65 = or i32 %64, 12288
  %66 = call i8* @cpu_to_be16(i32 %65)
  %67 = load %struct.mlx4_access_reg*, %struct.mlx4_access_reg** %14, align 8
  %68 = getelementptr inbounds %struct.mlx4_access_reg, %struct.mlx4_access_reg* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load %struct.mlx4_access_reg*, %struct.mlx4_access_reg** %14, align 8
  %70 = getelementptr inbounds %struct.mlx4_access_reg, %struct.mlx4_access_reg* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** %11, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @memcpy(i8* %71, i8* %72, i32 %73)
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %76 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %77 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %13, align 8
  %80 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MLX4_CMD_ACCESS_REG, align 4
  %83 = load i32, i32* @MLX4_CMD_TIME_CLASS_C, align 4
  %84 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %85 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %75, i32 %78, i32 %81, i32 0, i32 0, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %37
  br label %113

89:                                               ; preds = %37
  %90 = load %struct.mlx4_access_reg*, %struct.mlx4_access_reg** %15, align 8
  %91 = getelementptr inbounds %struct.mlx4_access_reg, %struct.mlx4_access_reg* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @MLX4_ACCESS_REG_STATUS_MASK, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %89
  %97 = load %struct.mlx4_access_reg*, %struct.mlx4_access_reg** %15, align 8
  %98 = getelementptr inbounds %struct.mlx4_access_reg, %struct.mlx4_access_reg* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @MLX4_ACCESS_REG_STATUS_MASK, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %16, align 4
  %102 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @mlx4_err(%struct.mlx4_dev* %102, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %104)
  br label %113

106:                                              ; preds = %89
  %107 = load i8*, i8** %11, align 8
  %108 = load %struct.mlx4_access_reg*, %struct.mlx4_access_reg** %15, align 8
  %109 = getelementptr inbounds %struct.mlx4_access_reg, %struct.mlx4_access_reg* %108, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @memcpy(i8* %107, i8* %110, i32 %111)
  br label %113

113:                                              ; preds = %106, %96, %88
  %114 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %115 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %116 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %114, %struct.mlx4_cmd_mailbox* %115)
  %117 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %118 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %13, align 8
  %119 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %117, %struct.mlx4_cmd_mailbox* %118)
  %120 = load i32, i32* %16, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %113, %31, %22
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
