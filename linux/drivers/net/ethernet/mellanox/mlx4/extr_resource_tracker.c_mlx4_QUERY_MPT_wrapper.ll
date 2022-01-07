; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_QUERY_MPT_wrapper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_mlx4_QUERY_MPT_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32* }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_mpt = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.mlx4_mpt_entry = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@RES_MPT = common dso_local global i32 0, align 4
@RES_MPT_MAPPED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RES_MPT_HW = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_QUERY_MPT_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.res_mpt*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.mlx4_mpt_entry*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %19 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %20 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %24 = call i32 @mpt_mask(%struct.mlx4_dev* %23)
  %25 = and i32 %22, %24
  store i32 %25, i32* %17, align 4
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* @RES_MPT, align 4
  %30 = call i32 @get_res(%struct.mlx4_dev* %26, i32 %27, i32 %28, i32 %29, %struct.res_mpt** %16)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i32, i32* %14, align 4
  store i32 %34, i32* %7, align 4
  br label %94

35:                                               ; preds = %6
  %36 = load %struct.res_mpt*, %struct.res_mpt** %16, align 8
  %37 = getelementptr inbounds %struct.res_mpt, %struct.res_mpt* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @RES_MPT_MAPPED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %67

42:                                               ; preds = %35
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %44 = call %struct.TYPE_6__* @mlx4_priv(%struct.mlx4_dev* %43)
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.res_mpt*, %struct.res_mpt** %16, align 8
  %48 = getelementptr inbounds %struct.res_mpt, %struct.res_mpt* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.mlx4_mpt_entry* @mlx4_table_find(i32* %46, i32 %49, i32* null)
  store %struct.mlx4_mpt_entry* %50, %struct.mlx4_mpt_entry** %18, align 8
  %51 = load %struct.mlx4_mpt_entry*, %struct.mlx4_mpt_entry** %18, align 8
  %52 = icmp eq %struct.mlx4_mpt_entry* null, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %42
  %54 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %55 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* null, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53, %42
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %14, align 4
  br label %87

61:                                               ; preds = %53
  %62 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %63 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.mlx4_mpt_entry*, %struct.mlx4_mpt_entry** %18, align 8
  %66 = call i32 @memcpy(i32* %64, %struct.mlx4_mpt_entry* %65, i32 4)
  store i32 0, i32* %14, align 4
  br label %86

67:                                               ; preds = %35
  %68 = load %struct.res_mpt*, %struct.res_mpt** %16, align 8
  %69 = getelementptr inbounds %struct.res_mpt, %struct.res_mpt* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @RES_MPT_HW, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %67
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %78 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %79 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %80 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %13, align 8
  %81 = call i32 @mlx4_DMA_wrapper(%struct.mlx4_dev* %75, i32 %76, %struct.mlx4_vhcr* %77, %struct.mlx4_cmd_mailbox* %78, %struct.mlx4_cmd_mailbox* %79, %struct.mlx4_cmd_info* %80)
  store i32 %81, i32* %14, align 4
  br label %85

82:                                               ; preds = %67
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %14, align 4
  br label %87

85:                                               ; preds = %74
  br label %86

86:                                               ; preds = %85, %61
  br label %87

87:                                               ; preds = %86, %82, %58
  %88 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* @RES_MPT, align 4
  %92 = call i32 @put_res(%struct.mlx4_dev* %88, i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %87, %33
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @mpt_mask(%struct.mlx4_dev*) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_mpt**) #1

declare dso_local %struct.mlx4_mpt_entry* @mlx4_table_find(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @memcpy(i32*, %struct.mlx4_mpt_entry*, i32) #1

declare dso_local i32 @mlx4_DMA_wrapper(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
