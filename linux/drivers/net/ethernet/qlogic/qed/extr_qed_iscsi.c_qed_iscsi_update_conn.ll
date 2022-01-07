; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_iscsi_update_conn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iscsi.c_qed_iscsi_update_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_iscsi_params_update = type { i32, i32, i32, i32, i32, i32 }
%struct.qed_hash_iscsi_con = type { %struct.qed_iscsi_conn* }
%struct.qed_iscsi_conn = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"Failed to find connection for handle %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i32, %struct.qed_iscsi_params_update*)* @qed_iscsi_update_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iscsi_update_conn(%struct.qed_dev* %0, i32 %1, %struct.qed_iscsi_params_update* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_iscsi_params_update*, align 8
  %8 = alloca %struct.qed_hash_iscsi_con*, align 8
  %9 = alloca %struct.qed_iscsi_conn*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qed_iscsi_params_update* %2, %struct.qed_iscsi_params_update** %7, align 8
  %10 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.qed_hash_iscsi_con* @qed_iscsi_get_hash(%struct.qed_dev* %10, i32 %11)
  store %struct.qed_hash_iscsi_con* %12, %struct.qed_hash_iscsi_con** %8, align 8
  %13 = load %struct.qed_hash_iscsi_con*, %struct.qed_hash_iscsi_con** %8, align 8
  %14 = icmp ne %struct.qed_hash_iscsi_con* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @DP_NOTICE(%struct.qed_dev* %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %60

21:                                               ; preds = %3
  %22 = load %struct.qed_hash_iscsi_con*, %struct.qed_hash_iscsi_con** %8, align 8
  %23 = getelementptr inbounds %struct.qed_hash_iscsi_con, %struct.qed_hash_iscsi_con* %22, i32 0, i32 0
  %24 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %23, align 8
  store %struct.qed_iscsi_conn* %24, %struct.qed_iscsi_conn** %9, align 8
  %25 = load %struct.qed_iscsi_params_update*, %struct.qed_iscsi_params_update** %7, align 8
  %26 = getelementptr inbounds %struct.qed_iscsi_params_update, %struct.qed_iscsi_params_update* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %29 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 4
  %30 = load %struct.qed_iscsi_params_update*, %struct.qed_iscsi_params_update** %7, align 8
  %31 = getelementptr inbounds %struct.qed_iscsi_params_update, %struct.qed_iscsi_params_update* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %34 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.qed_iscsi_params_update*, %struct.qed_iscsi_params_update** %7, align 8
  %36 = getelementptr inbounds %struct.qed_iscsi_params_update, %struct.qed_iscsi_params_update* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %39 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.qed_iscsi_params_update*, %struct.qed_iscsi_params_update** %7, align 8
  %41 = getelementptr inbounds %struct.qed_iscsi_params_update, %struct.qed_iscsi_params_update* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %44 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.qed_iscsi_params_update*, %struct.qed_iscsi_params_update** %7, align 8
  %46 = getelementptr inbounds %struct.qed_iscsi_params_update, %struct.qed_iscsi_params_update* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %49 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.qed_iscsi_params_update*, %struct.qed_iscsi_params_update** %7, align 8
  %51 = getelementptr inbounds %struct.qed_iscsi_params_update, %struct.qed_iscsi_params_update* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %54 = getelementptr inbounds %struct.qed_iscsi_conn, %struct.qed_iscsi_conn* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %56 = call i32 @QED_AFFIN_HWFN(%struct.qed_dev* %55)
  %57 = load %struct.qed_iscsi_conn*, %struct.qed_iscsi_conn** %9, align 8
  %58 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %59 = call i32 @qed_sp_iscsi_conn_update(i32 %56, %struct.qed_iscsi_conn* %57, i32 %58, i32* null)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %21, %15
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.qed_hash_iscsi_con* @qed_iscsi_get_hash(%struct.qed_dev*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*, i32) #1

declare dso_local i32 @qed_sp_iscsi_conn_update(i32, %struct.qed_iscsi_conn*, i32, i32*) #1

declare dso_local i32 @QED_AFFIN_HWFN(%struct.qed_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
