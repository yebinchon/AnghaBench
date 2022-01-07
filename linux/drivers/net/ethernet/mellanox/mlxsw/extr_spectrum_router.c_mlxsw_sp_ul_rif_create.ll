; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_ul_rif_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_ul_rif_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_sp_rif** }
%struct.mlxsw_sp_vr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Exceeded number of supported router interfaces\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_rif* (%struct.mlxsw_sp*, %struct.mlxsw_sp_vr*, %struct.netlink_ext_ack*)* @mlxsw_sp_ul_rif_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_rif* @mlxsw_sp_ul_rif_create(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_vr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_rif*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_vr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.mlxsw_sp_rif*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_vr* %1, %struct.mlxsw_sp_vr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %12 = call i32 @mlxsw_sp_rif_index_alloc(%struct.mlxsw_sp* %11, i64* %9)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %17 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %16, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %10, align 4
  %19 = call %struct.mlxsw_sp_rif* @ERR_PTR(i32 %18)
  store %struct.mlxsw_sp_rif* %19, %struct.mlxsw_sp_rif** %4, align 8
  br label %63

20:                                               ; preds = %3
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %6, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.mlxsw_sp_rif* @mlxsw_sp_rif_alloc(i32 8, i64 %21, i32 %24, i32* null)
  store %struct.mlxsw_sp_rif* %25, %struct.mlxsw_sp_rif** %8, align 8
  %26 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %8, align 8
  %27 = icmp ne %struct.mlxsw_sp_rif* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.mlxsw_sp_rif* @ERR_PTR(i32 %30)
  store %struct.mlxsw_sp_rif* %31, %struct.mlxsw_sp_rif** %4, align 8
  br label %63

32:                                               ; preds = %20
  %33 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %8, align 8
  %34 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.mlxsw_sp_rif**, %struct.mlxsw_sp_rif*** %37, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %38, i64 %39
  store %struct.mlxsw_sp_rif* %33, %struct.mlxsw_sp_rif** %40, align 8
  %41 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %42 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %8, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_rif, %struct.mlxsw_sp_rif* %42, i32 0, i32 0
  store %struct.mlxsw_sp* %41, %struct.mlxsw_sp** %43, align 8
  %44 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %8, align 8
  %45 = call i32 @mlxsw_sp_rif_ipip_lb_ul_rif_op(%struct.mlxsw_sp_rif* %44, i32 1)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  br label %51

49:                                               ; preds = %32
  %50 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %8, align 8
  store %struct.mlxsw_sp_rif* %50, %struct.mlxsw_sp_rif** %4, align 8
  br label %63

51:                                               ; preds = %48
  %52 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %53 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load %struct.mlxsw_sp_rif**, %struct.mlxsw_sp_rif*** %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %56, i64 %57
  store %struct.mlxsw_sp_rif* null, %struct.mlxsw_sp_rif** %58, align 8
  %59 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %8, align 8
  %60 = call i32 @kfree(%struct.mlxsw_sp_rif* %59)
  %61 = load i32, i32* %10, align 4
  %62 = call %struct.mlxsw_sp_rif* @ERR_PTR(i32 %61)
  store %struct.mlxsw_sp_rif* %62, %struct.mlxsw_sp_rif** %4, align 8
  br label %63

63:                                               ; preds = %51, %49, %28, %15
  %64 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %4, align 8
  ret %struct.mlxsw_sp_rif* %64
}

declare dso_local i32 @mlxsw_sp_rif_index_alloc(%struct.mlxsw_sp*, i64*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.mlxsw_sp_rif* @ERR_PTR(i32) #1

declare dso_local %struct.mlxsw_sp_rif* @mlxsw_sp_rif_alloc(i32, i64, i32, i32*) #1

declare dso_local i32 @mlxsw_sp_rif_ipip_lb_ul_rif_op(%struct.mlxsw_sp_rif*, i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_rif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
