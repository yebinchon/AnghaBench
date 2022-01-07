; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_get_iscsi_tc_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_get_iscsi_tc_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { %struct.i40e_dcbx_config }
%struct.i40e_dcbx_config = type { i64, %struct.TYPE_2__, %struct.i40e_dcb_app_priority_table* }
%struct.TYPE_2__ = type { i64* }
%struct.i40e_dcb_app_priority_table = type { i64, i64, i64 }

@I40E_APP_SEL_TCPIP = common dso_local global i64 0, align 8
@I40E_APP_PROTOID_ISCSI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i40e_pf*)* @i40e_get_iscsi_tc_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i40e_get_iscsi_tc_map(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca %struct.i40e_dcb_app_priority_table, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i40e_dcbx_config*, align 8
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 0
  store %struct.i40e_hw* %10, %struct.i40e_hw** %4, align 8
  store i64 1, i64* %5, align 8
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %12 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %11, i32 0, i32 0
  store %struct.i40e_dcbx_config* %12, %struct.i40e_dcbx_config** %8, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %50, %1
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %8, align 8
  %16 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %13
  %20 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %8, align 8
  %21 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %20, i32 0, i32 2
  %22 = load %struct.i40e_dcb_app_priority_table*, %struct.i40e_dcb_app_priority_table** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.i40e_dcb_app_priority_table, %struct.i40e_dcb_app_priority_table* %22, i64 %23
  %25 = bitcast %struct.i40e_dcb_app_priority_table* %3 to i8*
  %26 = bitcast %struct.i40e_dcb_app_priority_table* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 24, i1 false)
  %27 = getelementptr inbounds %struct.i40e_dcb_app_priority_table, %struct.i40e_dcb_app_priority_table* %3, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @I40E_APP_SEL_TCPIP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.i40e_dcb_app_priority_table, %struct.i40e_dcb_app_priority_table* %3, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @I40E_APP_PROTOID_ISCSI, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.i40e_dcbx_config*, %struct.i40e_dcbx_config** %8, align 8
  %38 = getelementptr inbounds %struct.i40e_dcbx_config, %struct.i40e_dcbx_config* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds %struct.i40e_dcb_app_priority_table, %struct.i40e_dcb_app_priority_table* %3, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i64 @BIT(i64 %45)
  %47 = load i64, i64* %5, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %5, align 8
  br label %53

49:                                               ; preds = %31, %19
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %7, align 8
  br label %13

53:                                               ; preds = %36, %13
  %54 = load i64, i64* %5, align 8
  ret i64 %54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @BIT(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
