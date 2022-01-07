; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_mlx5_alloc_cmd_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cmd.c_mlx5_alloc_cmd_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_cmd_msg = type { i32, %struct.mlx5_cmd_mailbox* }
%struct.mlx5_cmd_mailbox = type { %struct.mlx5_cmd_mailbox*, i32, %struct.mlx5_cmd_prot_block* }
%struct.mlx5_cmd_prot_block = type { i32, i32, i32 }
%struct.mlx5_core_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed allocating block\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_cmd_msg* (%struct.mlx5_core_dev*, i32, i32, i32)* @mlx5_alloc_cmd_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_cmd_msg* @mlx5_alloc_cmd_msg(%struct.mlx5_core_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5_cmd_msg*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5_cmd_mailbox*, align 8
  %11 = alloca %struct.mlx5_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx5_cmd_prot_block*, align 8
  %13 = alloca %struct.mlx5_cmd_msg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.mlx5_cmd_mailbox* null, %struct.mlx5_cmd_mailbox** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.mlx5_cmd_msg* @kzalloc(i32 16, i32 %17)
  store %struct.mlx5_cmd_msg* %18, %struct.mlx5_cmd_msg** %13, align 8
  %19 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %13, align 8
  %20 = icmp ne %struct.mlx5_cmd_msg* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.mlx5_cmd_msg* @ERR_PTR(i32 %23)
  store %struct.mlx5_cmd_msg* %24, %struct.mlx5_cmd_msg** %5, align 8
  br label %106

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %13, align 8
  %28 = getelementptr inbounds %struct.mlx5_cmd_msg, %struct.mlx5_cmd_msg* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %13, align 8
  %30 = call i32 @mlx5_calc_cmd_blocks(%struct.mlx5_cmd_msg* %29)
  store i32 %30, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %31

31:                                               ; preds = %81, %25
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %84

35:                                               ; preds = %31
  %36 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call %struct.mlx5_cmd_mailbox* @alloc_cmd_box(%struct.mlx5_core_dev* %36, i32 %37)
  store %struct.mlx5_cmd_mailbox* %38, %struct.mlx5_cmd_mailbox** %10, align 8
  %39 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %10, align 8
  %40 = call i64 @IS_ERR(%struct.mlx5_cmd_mailbox* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %44 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %10, align 8
  %46 = call i32 @PTR_ERR(%struct.mlx5_cmd_mailbox* %45)
  store i32 %46, i32* %14, align 4
  br label %89

47:                                               ; preds = %35
  %48 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %10, align 8
  %49 = getelementptr inbounds %struct.mlx5_cmd_mailbox, %struct.mlx5_cmd_mailbox* %48, i32 0, i32 2
  %50 = load %struct.mlx5_cmd_prot_block*, %struct.mlx5_cmd_prot_block** %49, align 8
  store %struct.mlx5_cmd_prot_block* %50, %struct.mlx5_cmd_prot_block** %12, align 8
  %51 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %11, align 8
  %52 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %10, align 8
  %53 = getelementptr inbounds %struct.mlx5_cmd_mailbox, %struct.mlx5_cmd_mailbox* %52, i32 0, i32 0
  store %struct.mlx5_cmd_mailbox* %51, %struct.mlx5_cmd_mailbox** %53, align 8
  %54 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %10, align 8
  %55 = getelementptr inbounds %struct.mlx5_cmd_mailbox, %struct.mlx5_cmd_mailbox* %54, i32 0, i32 0
  %56 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %55, align 8
  %57 = icmp ne %struct.mlx5_cmd_mailbox* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %47
  %59 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %10, align 8
  %60 = getelementptr inbounds %struct.mlx5_cmd_mailbox, %struct.mlx5_cmd_mailbox* %59, i32 0, i32 0
  %61 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %60, align 8
  %62 = getelementptr inbounds %struct.mlx5_cmd_mailbox, %struct.mlx5_cmd_mailbox* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  br label %65

64:                                               ; preds = %47
  br label %65

65:                                               ; preds = %64, %58
  %66 = phi i32 [ %63, %58 ], [ 0, %64 ]
  %67 = call i32 @cpu_to_be64(i32 %66)
  %68 = load %struct.mlx5_cmd_prot_block*, %struct.mlx5_cmd_prot_block** %12, align 8
  %69 = getelementptr inbounds %struct.mlx5_cmd_prot_block, %struct.mlx5_cmd_prot_block* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = sub nsw i32 %70, %71
  %73 = sub nsw i32 %72, 1
  %74 = call i32 @cpu_to_be32(i32 %73)
  %75 = load %struct.mlx5_cmd_prot_block*, %struct.mlx5_cmd_prot_block** %12, align 8
  %76 = getelementptr inbounds %struct.mlx5_cmd_prot_block, %struct.mlx5_cmd_prot_block* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.mlx5_cmd_prot_block*, %struct.mlx5_cmd_prot_block** %12, align 8
  %79 = getelementptr inbounds %struct.mlx5_cmd_prot_block, %struct.mlx5_cmd_prot_block* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %10, align 8
  store %struct.mlx5_cmd_mailbox* %80, %struct.mlx5_cmd_mailbox** %11, align 8
  br label %81

81:                                               ; preds = %65
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %16, align 4
  br label %31

84:                                               ; preds = %31
  %85 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %11, align 8
  %86 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %13, align 8
  %87 = getelementptr inbounds %struct.mlx5_cmd_msg, %struct.mlx5_cmd_msg* %86, i32 0, i32 1
  store %struct.mlx5_cmd_mailbox* %85, %struct.mlx5_cmd_mailbox** %87, align 8
  %88 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %13, align 8
  store %struct.mlx5_cmd_msg* %88, %struct.mlx5_cmd_msg** %5, align 8
  br label %106

89:                                               ; preds = %42
  br label %90

90:                                               ; preds = %93, %89
  %91 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %11, align 8
  %92 = icmp ne %struct.mlx5_cmd_mailbox* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %11, align 8
  %95 = getelementptr inbounds %struct.mlx5_cmd_mailbox, %struct.mlx5_cmd_mailbox* %94, i32 0, i32 0
  %96 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %95, align 8
  store %struct.mlx5_cmd_mailbox* %96, %struct.mlx5_cmd_mailbox** %10, align 8
  %97 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %98 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %11, align 8
  %99 = call i32 @free_cmd_box(%struct.mlx5_core_dev* %97, %struct.mlx5_cmd_mailbox* %98)
  %100 = load %struct.mlx5_cmd_mailbox*, %struct.mlx5_cmd_mailbox** %10, align 8
  store %struct.mlx5_cmd_mailbox* %100, %struct.mlx5_cmd_mailbox** %11, align 8
  br label %90

101:                                              ; preds = %90
  %102 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %13, align 8
  %103 = call i32 @kfree(%struct.mlx5_cmd_msg* %102)
  %104 = load i32, i32* %14, align 4
  %105 = call %struct.mlx5_cmd_msg* @ERR_PTR(i32 %104)
  store %struct.mlx5_cmd_msg* %105, %struct.mlx5_cmd_msg** %5, align 8
  br label %106

106:                                              ; preds = %101, %84, %21
  %107 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %5, align 8
  ret %struct.mlx5_cmd_msg* %107
}

declare dso_local %struct.mlx5_cmd_msg* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5_cmd_msg* @ERR_PTR(i32) #1

declare dso_local i32 @mlx5_calc_cmd_blocks(%struct.mlx5_cmd_msg*) #1

declare dso_local %struct.mlx5_cmd_mailbox* @alloc_cmd_box(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_cmd_mailbox*) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_cmd_mailbox*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @free_cmd_box(%struct.mlx5_core_dev*, %struct.mlx5_cmd_mailbox*) #1

declare dso_local i32 @kfree(%struct.mlx5_cmd_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
