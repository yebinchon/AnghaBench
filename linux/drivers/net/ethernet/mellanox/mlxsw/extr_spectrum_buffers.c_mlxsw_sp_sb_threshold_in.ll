; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_threshold_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_threshold_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_sb_pr = type { i64 }

@MLXSW_REG_SBPR_MODE_DYNAMIC = common dso_local global i64 0, align 8
@MLXSW_SP_SB_THRESHOLD_TO_ALPHA_OFFSET = common dso_local global i32 0, align 4
@MLXSW_REG_SBXX_DYN_MAX_BUFF_MIN = common dso_local global i32 0, align 4
@MLXSW_REG_SBXX_DYN_MAX_BUFF_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Invalid dynamic threshold value\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i32, i32, i32*, %struct.netlink_ext_ack*)* @mlxsw_sp_sb_threshold_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_sb_threshold_in(%struct.mlxsw_sp* %0, i32 %1, i32 %2, i32* %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.mlxsw_sp_sb_pr*, align 8
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.mlxsw_sp_sb_pr* @mlxsw_sp_sb_pr_get(%struct.mlxsw_sp* %14, i32 %15)
  store %struct.mlxsw_sp_sb_pr* %16, %struct.mlxsw_sp_sb_pr** %12, align 8
  %17 = load %struct.mlxsw_sp_sb_pr*, %struct.mlxsw_sp_sb_pr** %12, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_sb_pr, %struct.mlxsw_sp_sb_pr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MLXSW_REG_SBPR_MODE_DYNAMIC, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @MLXSW_SP_SB_THRESHOLD_TO_ALPHA_OFFSET, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* @MLXSW_REG_SBXX_DYN_MAX_BUFF_MIN, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @MLXSW_REG_SBXX_DYN_MAX_BUFF_MAX, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29, %22
  %34 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %35 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %47

38:                                               ; preds = %29
  %39 = load i32, i32* %13, align 4
  %40 = load i32*, i32** %10, align 8
  store i32 %39, i32* %40, align 4
  br label %46

41:                                               ; preds = %5
  %42 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @mlxsw_sp_bytes_cells(%struct.mlxsw_sp* %42, i32 %43)
  %45 = load i32*, i32** %10, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %38
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %46, %33
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.mlxsw_sp_sb_pr* @mlxsw_sp_sb_pr_get(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @mlxsw_sp_bytes_cells(%struct.mlxsw_sp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
