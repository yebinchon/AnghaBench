; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_pool_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_pool_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_sb_pr* }
%struct.mlxsw_sp_sb_pr = type { i32, i64, i64, i64 }

@MAX_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Exceeded shared buffer size\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Changing this pool's threshold type is forbidden\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Changing this pool's size is forbidden\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_sb_pool_set(%struct.mlxsw_core* %0, i32 %1, i64 %2, i64 %3, i32 %4, %struct.netlink_ext_ack* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlxsw_core*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.netlink_ext_ack*, align 8
  %14 = alloca %struct.mlxsw_sp*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.mlxsw_sp_sb_pr*, align 8
  %17 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.netlink_ext_ack* %5, %struct.netlink_ext_ack** %13, align 8
  %18 = load %struct.mlxsw_core*, %struct.mlxsw_core** %8, align 8
  %19 = call %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core* %18)
  store %struct.mlxsw_sp* %19, %struct.mlxsw_sp** %14, align 8
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %14, align 8
  %21 = load i64, i64* %11, align 8
  %22 = call i64 @mlxsw_sp_bytes_cells(%struct.mlxsw_sp* %20, i64 %21)
  store i64 %22, i64* %15, align 8
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %17, align 4
  %24 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %14, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.mlxsw_sp_sb_pr*, %struct.mlxsw_sp_sb_pr** %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_sb_pr, %struct.mlxsw_sp_sb_pr* %28, i64 %29
  store %struct.mlxsw_sp_sb_pr* %30, %struct.mlxsw_sp_sb_pr** %16, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %14, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MAX_BUFFER_SIZE, align 4
  %36 = call i64 @MLXSW_CORE_RES_GET(i32 %34, i32 %35)
  %37 = icmp sgt i64 %31, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %6
  %39 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %40 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %81

43:                                               ; preds = %6
  %44 = load %struct.mlxsw_sp_sb_pr*, %struct.mlxsw_sp_sb_pr** %16, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_sb_pr, %struct.mlxsw_sp_sb_pr* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.mlxsw_sp_sb_pr*, %struct.mlxsw_sp_sb_pr** %16, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_sb_pr, %struct.mlxsw_sp_sb_pr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %17, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %56 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %55, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %81

59:                                               ; preds = %48, %43
  %60 = load %struct.mlxsw_sp_sb_pr*, %struct.mlxsw_sp_sb_pr** %16, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp_sb_pr, %struct.mlxsw_sp_sb_pr* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load %struct.mlxsw_sp_sb_pr*, %struct.mlxsw_sp_sb_pr** %16, align 8
  %66 = getelementptr inbounds %struct.mlxsw_sp_sb_pr, %struct.mlxsw_sp_sb_pr* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %13, align 8
  %72 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %71, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %7, align 4
  br label %81

75:                                               ; preds = %64, %59
  %76 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %14, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load i32, i32* %17, align 4
  %79 = load i64, i64* %15, align 8
  %80 = call i32 @mlxsw_sp_sb_pr_write(%struct.mlxsw_sp* %76, i64 %77, i32 %78, i64 %79, i32 0)
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %75, %70, %54, %38
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core*) #1

declare dso_local i64 @mlxsw_sp_bytes_cells(%struct.mlxsw_sp*, i64) #1

declare dso_local i64 @MLXSW_CORE_RES_GET(i32, i32) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @mlxsw_sp_sb_pr_write(%struct.mlxsw_sp*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
