; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_vr_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_vr_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_vr = type { i32, %struct.mlxsw_sp_mr_table**, %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table*, i32 }
%struct.mlxsw_sp_mr_table = type { i32 }
%struct.mlxsw_sp = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_fib = type opaque

@.str = private unnamed_addr constant [45 x i8] c"Exceeded number of supported virtual routers\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MLXSW_SP_L3_PROTO_IPV4 = common dso_local global i64 0, align 8
@MLXSW_SP_L3_PROTO_IPV6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_vr* (%struct.mlxsw_sp*, i32, %struct.netlink_ext_ack*)* @mlxsw_sp_vr_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_vr* @mlxsw_sp_vr_create(%struct.mlxsw_sp* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_vr*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.mlxsw_sp_mr_table*, align 8
  %9 = alloca %struct.mlxsw_sp_mr_table*, align 8
  %10 = alloca %struct.mlxsw_sp_fib*, align 8
  %11 = alloca %struct.mlxsw_sp_fib*, align 8
  %12 = alloca %struct.mlxsw_sp_vr*, align 8
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %15 = call %struct.mlxsw_sp_vr* @mlxsw_sp_vr_find_unused(%struct.mlxsw_sp* %14)
  store %struct.mlxsw_sp_vr* %15, %struct.mlxsw_sp_vr** %12, align 8
  %16 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %12, align 8
  %17 = icmp ne %struct.mlxsw_sp_vr* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %20 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.mlxsw_sp_vr* @ERR_PTR(i32 %22)
  store %struct.mlxsw_sp_vr* %23, %struct.mlxsw_sp_vr** %4, align 8
  br label %118

24:                                               ; preds = %3
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %26 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %12, align 8
  %27 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV4, align 8
  %28 = call %struct.mlxsw_sp_mr_table* @mlxsw_sp_fib_create(%struct.mlxsw_sp* %25, %struct.mlxsw_sp_vr* %26, i64 %27)
  %29 = bitcast %struct.mlxsw_sp_mr_table* %28 to %struct.mlxsw_sp_fib*
  store %struct.mlxsw_sp_fib* %29, %struct.mlxsw_sp_fib** %10, align 8
  %30 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %10, align 8
  %31 = bitcast %struct.mlxsw_sp_fib* %30 to %struct.mlxsw_sp_mr_table*
  %32 = call i64 @IS_ERR(%struct.mlxsw_sp_mr_table* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %10, align 8
  %36 = bitcast %struct.mlxsw_sp_fib* %35 to %struct.mlxsw_sp_mr_table*
  %37 = call %struct.mlxsw_sp_vr* @ERR_CAST(%struct.mlxsw_sp_mr_table* %36)
  store %struct.mlxsw_sp_vr* %37, %struct.mlxsw_sp_vr** %4, align 8
  br label %118

38:                                               ; preds = %24
  %39 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %40 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %12, align 8
  %41 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV6, align 8
  %42 = call %struct.mlxsw_sp_mr_table* @mlxsw_sp_fib_create(%struct.mlxsw_sp* %39, %struct.mlxsw_sp_vr* %40, i64 %41)
  %43 = bitcast %struct.mlxsw_sp_mr_table* %42 to %struct.mlxsw_sp_fib*
  store %struct.mlxsw_sp_fib* %43, %struct.mlxsw_sp_fib** %11, align 8
  %44 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %11, align 8
  %45 = bitcast %struct.mlxsw_sp_fib* %44 to %struct.mlxsw_sp_mr_table*
  %46 = call i64 @IS_ERR(%struct.mlxsw_sp_mr_table* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %11, align 8
  %50 = bitcast %struct.mlxsw_sp_fib* %49 to %struct.mlxsw_sp_mr_table*
  %51 = call i32 @PTR_ERR(%struct.mlxsw_sp_mr_table* %50)
  store i32 %51, i32* %13, align 4
  br label %111

52:                                               ; preds = %38
  %53 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %54 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %12, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV4, align 8
  %58 = call %struct.mlxsw_sp_mr_table* @mlxsw_sp_mr_table_create(%struct.mlxsw_sp* %53, i32 %56, i64 %57)
  store %struct.mlxsw_sp_mr_table* %58, %struct.mlxsw_sp_mr_table** %8, align 8
  %59 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %8, align 8
  %60 = call i64 @IS_ERR(%struct.mlxsw_sp_mr_table* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %52
  %63 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %8, align 8
  %64 = call i32 @PTR_ERR(%struct.mlxsw_sp_mr_table* %63)
  store i32 %64, i32* %13, align 4
  br label %106

65:                                               ; preds = %52
  %66 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %67 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %12, align 8
  %68 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV6, align 8
  %71 = call %struct.mlxsw_sp_mr_table* @mlxsw_sp_mr_table_create(%struct.mlxsw_sp* %66, i32 %69, i64 %70)
  store %struct.mlxsw_sp_mr_table* %71, %struct.mlxsw_sp_mr_table** %9, align 8
  %72 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %9, align 8
  %73 = call i64 @IS_ERR(%struct.mlxsw_sp_mr_table* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %9, align 8
  %77 = call i32 @PTR_ERR(%struct.mlxsw_sp_mr_table* %76)
  store i32 %77, i32* %13, align 4
  br label %103

78:                                               ; preds = %65
  %79 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %10, align 8
  %80 = bitcast %struct.mlxsw_sp_fib* %79 to %struct.mlxsw_sp_mr_table*
  %81 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %12, align 8
  %82 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %81, i32 0, i32 3
  store %struct.mlxsw_sp_mr_table* %80, %struct.mlxsw_sp_mr_table** %82, align 8
  %83 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %11, align 8
  %84 = bitcast %struct.mlxsw_sp_fib* %83 to %struct.mlxsw_sp_mr_table*
  %85 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %12, align 8
  %86 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %85, i32 0, i32 2
  store %struct.mlxsw_sp_mr_table* %84, %struct.mlxsw_sp_mr_table** %86, align 8
  %87 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %8, align 8
  %88 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %12, align 8
  %89 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %88, i32 0, i32 1
  %90 = load %struct.mlxsw_sp_mr_table**, %struct.mlxsw_sp_mr_table*** %89, align 8
  %91 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV4, align 8
  %92 = getelementptr inbounds %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %90, i64 %91
  store %struct.mlxsw_sp_mr_table* %87, %struct.mlxsw_sp_mr_table** %92, align 8
  %93 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %9, align 8
  %94 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %12, align 8
  %95 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %94, i32 0, i32 1
  %96 = load %struct.mlxsw_sp_mr_table**, %struct.mlxsw_sp_mr_table*** %95, align 8
  %97 = load i64, i64* @MLXSW_SP_L3_PROTO_IPV6, align 8
  %98 = getelementptr inbounds %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %96, i64 %97
  store %struct.mlxsw_sp_mr_table* %93, %struct.mlxsw_sp_mr_table** %98, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %12, align 8
  %101 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %12, align 8
  store %struct.mlxsw_sp_vr* %102, %struct.mlxsw_sp_vr** %4, align 8
  br label %118

103:                                              ; preds = %75
  %104 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %8, align 8
  %105 = call i32 @mlxsw_sp_mr_table_destroy(%struct.mlxsw_sp_mr_table* %104)
  br label %106

106:                                              ; preds = %103, %62
  %107 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %108 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %11, align 8
  %109 = bitcast %struct.mlxsw_sp_fib* %108 to %struct.mlxsw_sp_mr_table*
  %110 = call i32 @mlxsw_sp_fib_destroy(%struct.mlxsw_sp* %107, %struct.mlxsw_sp_mr_table* %109)
  br label %111

111:                                              ; preds = %106, %48
  %112 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %113 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %10, align 8
  %114 = bitcast %struct.mlxsw_sp_fib* %113 to %struct.mlxsw_sp_mr_table*
  %115 = call i32 @mlxsw_sp_fib_destroy(%struct.mlxsw_sp* %112, %struct.mlxsw_sp_mr_table* %114)
  %116 = load i32, i32* %13, align 4
  %117 = call %struct.mlxsw_sp_vr* @ERR_PTR(i32 %116)
  store %struct.mlxsw_sp_vr* %117, %struct.mlxsw_sp_vr** %4, align 8
  br label %118

118:                                              ; preds = %111, %78, %34, %18
  %119 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %4, align 8
  ret %struct.mlxsw_sp_vr* %119
}

declare dso_local %struct.mlxsw_sp_vr* @mlxsw_sp_vr_find_unused(%struct.mlxsw_sp*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.mlxsw_sp_vr* @ERR_PTR(i32) #1

declare dso_local %struct.mlxsw_sp_mr_table* @mlxsw_sp_fib_create(%struct.mlxsw_sp*, %struct.mlxsw_sp_vr*, i64) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_mr_table*) #1

declare dso_local %struct.mlxsw_sp_vr* @ERR_CAST(%struct.mlxsw_sp_mr_table*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_mr_table*) #1

declare dso_local %struct.mlxsw_sp_mr_table* @mlxsw_sp_mr_table_create(%struct.mlxsw_sp*, i32, i64) #1

declare dso_local i32 @mlxsw_sp_mr_table_destroy(%struct.mlxsw_sp_mr_table*) #1

declare dso_local i32 @mlxsw_sp_fib_destroy(%struct.mlxsw_sp*, %struct.mlxsw_sp_mr_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
