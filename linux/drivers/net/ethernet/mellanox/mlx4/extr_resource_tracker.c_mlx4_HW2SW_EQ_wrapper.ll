; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_HW2SW_EQ_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_HW2SW_EQ_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_eq = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@RES_EQ_RESERVED = common dso_local global i32 0, align 4
@RES_MTT = common dso_local global i32 0, align 4
@RES_EQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_HW2SW_EQ_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.res_eq*, align 8
  %17 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %18 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %19 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = load i32, i32* %9, align 4
  %23 = shl i32 %22, 10
  %24 = or i32 %21, %23
  store i32 %24, i32* %15, align 4
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* @RES_EQ_RESERVED, align 4
  %29 = call i32 @eq_res_start_move_to(%struct.mlx4_dev* %25, i32 %26, i32 %27, i32 %28, %struct.res_eq** %16)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* %17, align 4
  store i32 %33, i32* %7, align 4
  br label %103

34:                                               ; preds = %6
  %35 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.res_eq*, %struct.res_eq** %16, align 8
  %38 = getelementptr inbounds %struct.res_eq, %struct.res_eq* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RES_MTT, align 4
  %44 = call i32 @get_res(%struct.mlx4_dev* %35, i32 %36, i32 %42, i32 %43, i32* null)
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %96

48:                                               ; preds = %34
  %49 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %52 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %53 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %54 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %13, align 8
  %55 = call i32 @mlx4_DMA_wrapper(%struct.mlx4_dev* %49, i32 %50, %struct.mlx4_vhcr* %51, %struct.mlx4_cmd_mailbox* %52, %struct.mlx4_cmd_mailbox* %53, %struct.mlx4_cmd_info* %54)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %17, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %85

59:                                               ; preds = %48
  %60 = load %struct.res_eq*, %struct.res_eq** %16, align 8
  %61 = getelementptr inbounds %struct.res_eq, %struct.res_eq* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = call i32 @atomic_dec(i32* %63)
  %65 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.res_eq*, %struct.res_eq** %16, align 8
  %68 = getelementptr inbounds %struct.res_eq, %struct.res_eq* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @RES_MTT, align 4
  %74 = call i32 @put_res(%struct.mlx4_dev* %65, i32 %66, i32 %72, i32 %73)
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @RES_EQ, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @res_end_move(%struct.mlx4_dev* %75, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @RES_EQ, align 4
  %84 = call i32 @rem_res_range(%struct.mlx4_dev* %80, i32 %81, i32 %82, i32 1, i32 %83, i32 0)
  store i32 0, i32* %7, align 4
  br label %103

85:                                               ; preds = %58
  %86 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.res_eq*, %struct.res_eq** %16, align 8
  %89 = getelementptr inbounds %struct.res_eq, %struct.res_eq* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @RES_MTT, align 4
  %95 = call i32 @put_res(%struct.mlx4_dev* %86, i32 %87, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %85, %47
  %97 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @RES_EQ, align 4
  %100 = load i32, i32* %15, align 4
  %101 = call i32 @res_abort_move(%struct.mlx4_dev* %97, i32 %98, i32 %99, i32 %100)
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %96, %59, %32
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @eq_res_start_move_to(%struct.mlx4_dev*, i32, i32, i32, %struct.res_eq**) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, i32*) #1

declare dso_local i32 @mlx4_DMA_wrapper(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_end_move(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @rem_res_range(%struct.mlx4_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @res_abort_move(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
