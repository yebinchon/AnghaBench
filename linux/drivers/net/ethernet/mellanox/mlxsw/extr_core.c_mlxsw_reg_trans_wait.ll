; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_reg_trans_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core.c_mlxsw_reg_trans_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_reg_trans = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i32, %struct.mlxsw_core* }
%struct.TYPE_4__ = type { i32 }
%struct.mlxsw_core = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"EMAD retries (%d/%d) (tid=%llx)\0A\00", align 1
@MLXSW_EMAD_MAX_RETRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"EMAD reg access failed (tid=%llx,reg_id=%x(%s),type=%s,status=%x(%s))\0A\00", align 1
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_reg_trans*)* @mlxsw_reg_trans_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_reg_trans_wait(%struct.mlxsw_reg_trans* %0) #0 {
  %2 = alloca %struct.mlxsw_reg_trans*, align 8
  %3 = alloca %struct.mlxsw_core*, align 8
  %4 = alloca i32, align 4
  store %struct.mlxsw_reg_trans* %0, %struct.mlxsw_reg_trans** %2, align 8
  %5 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %2, align 8
  %6 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %5, i32 0, i32 9
  %7 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  store %struct.mlxsw_core* %7, %struct.mlxsw_core** %3, align 8
  %8 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %2, align 8
  %9 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %8, i32 0, i32 8
  %10 = call i32 @wait_for_completion(i32* %9)
  %11 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %2, align 8
  %12 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %11, i32 0, i32 7
  %13 = call i32 @cancel_delayed_work_sync(i32* %12)
  %14 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %2, align 8
  %15 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %4, align 4
  %17 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %2, align 8
  %18 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %23 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %2, align 8
  %28 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MLXSW_EMAD_MAX_RETRY, align 4
  %31 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %2, align 8
  %32 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_warn(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %21, %1
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %80

38:                                               ; preds = %35
  %39 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %40 = getelementptr inbounds %struct.mlxsw_core, %struct.mlxsw_core* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %2, align 8
  %45 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %2, align 8
  %48 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %47, i32 0, i32 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %2, align 8
  %53 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %52, i32 0, i32 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mlxsw_reg_id_str(i32 %56)
  %58 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %2, align 8
  %59 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @mlxsw_core_reg_access_type_str(i32 %60)
  %62 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %2, align 8
  %63 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %2, align 8
  %66 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @mlxsw_emad_op_tlv_status_str(i32 %67)
  %69 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %51, i32 %57, i32 %61, i32 %64, i32 %68)
  %70 = load %struct.mlxsw_core*, %struct.mlxsw_core** %3, align 8
  %71 = call i32 @priv_to_devlink(%struct.mlxsw_core* %70)
  %72 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %2, align 8
  %73 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %2, align 8
  %76 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @mlxsw_emad_op_tlv_status_str(i32 %77)
  %79 = call i32 @trace_devlink_hwerr(i32 %71, i32 %74, i32 %78)
  br label %80

80:                                               ; preds = %38, %35
  %81 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %2, align 8
  %82 = getelementptr inbounds %struct.mlxsw_reg_trans, %struct.mlxsw_reg_trans* %81, i32 0, i32 1
  %83 = call i32 @list_del(i32* %82)
  %84 = load %struct.mlxsw_reg_trans*, %struct.mlxsw_reg_trans** %2, align 8
  %85 = load i32, i32* @rcu, align 4
  %86 = call i32 @kfree_rcu(%struct.mlxsw_reg_trans* %84, i32 %85)
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_reg_id_str(i32) #1

declare dso_local i32 @mlxsw_core_reg_access_type_str(i32) #1

declare dso_local i32 @mlxsw_emad_op_tlv_status_str(i32) #1

declare dso_local i32 @trace_devlink_hwerr(i32, i32, i32) #1

declare dso_local i32 @priv_to_devlink(%struct.mlxsw_core*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.mlxsw_reg_trans*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
