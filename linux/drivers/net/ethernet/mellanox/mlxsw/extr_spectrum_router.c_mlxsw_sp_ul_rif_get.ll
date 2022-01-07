; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_ul_rif_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_ul_rif_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_rif = type { %struct.mlxsw_sp_rif*, i32, i32 }
%struct.mlxsw_sp = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp_vr = type { %struct.mlxsw_sp_vr*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_rif* (%struct.mlxsw_sp*, i32, %struct.netlink_ext_ack*)* @mlxsw_sp_ul_rif_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_rif* @mlxsw_sp_ul_rif_get(%struct.mlxsw_sp* %0, i32 %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca %struct.mlxsw_sp_rif*, align 8
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.mlxsw_sp_vr*, align 8
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %13 = call %struct.mlxsw_sp_vr* @mlxsw_sp_vr_get(%struct.mlxsw_sp* %10, i32 %11, %struct.netlink_ext_ack* %12)
  store %struct.mlxsw_sp_vr* %13, %struct.mlxsw_sp_vr** %8, align 8
  %14 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %8, align 8
  %15 = call i64 @IS_ERR(%struct.mlxsw_sp_vr* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %8, align 8
  %19 = call %struct.mlxsw_sp_vr* @ERR_CAST(%struct.mlxsw_sp_vr* %18)
  %20 = bitcast %struct.mlxsw_sp_vr* %19 to %struct.mlxsw_sp_rif*
  store %struct.mlxsw_sp_rif* %20, %struct.mlxsw_sp_rif** %4, align 8
  br label %67

21:                                               ; preds = %3
  %22 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %8, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %22, i32 0, i32 1
  %24 = call i64 @refcount_inc_not_zero(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %8, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %27, i32 0, i32 0
  %29 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %28, align 8
  %30 = bitcast %struct.mlxsw_sp_vr* %29 to %struct.mlxsw_sp_rif*
  store %struct.mlxsw_sp_rif* %30, %struct.mlxsw_sp_rif** %4, align 8
  br label %67

31:                                               ; preds = %21
  %32 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %33 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %8, align 8
  %34 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %35 = call %struct.mlxsw_sp_vr* @mlxsw_sp_ul_rif_create(%struct.mlxsw_sp* %32, %struct.mlxsw_sp_vr* %33, %struct.netlink_ext_ack* %34)
  %36 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %8, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %36, i32 0, i32 0
  store %struct.mlxsw_sp_vr* %35, %struct.mlxsw_sp_vr** %37, align 8
  %38 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %8, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %38, i32 0, i32 0
  %40 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %39, align 8
  %41 = call i64 @IS_ERR(%struct.mlxsw_sp_vr* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %8, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %44, i32 0, i32 0
  %46 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %45, align 8
  %47 = call i32 @PTR_ERR(%struct.mlxsw_sp_vr* %46)
  store i32 %47, i32* %9, align 4
  br label %60

48:                                               ; preds = %31
  %49 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %8, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %8, align 8
  %54 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %53, i32 0, i32 1
  %55 = call i32 @refcount_set(i32* %54, i32 1)
  %56 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %8, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_vr, %struct.mlxsw_sp_vr* %56, i32 0, i32 0
  %58 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %57, align 8
  %59 = bitcast %struct.mlxsw_sp_vr* %58 to %struct.mlxsw_sp_rif*
  store %struct.mlxsw_sp_rif* %59, %struct.mlxsw_sp_rif** %4, align 8
  br label %67

60:                                               ; preds = %43
  %61 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %62 = load %struct.mlxsw_sp_vr*, %struct.mlxsw_sp_vr** %8, align 8
  %63 = call i32 @mlxsw_sp_vr_put(%struct.mlxsw_sp* %61, %struct.mlxsw_sp_vr* %62)
  %64 = load i32, i32* %9, align 4
  %65 = call %struct.mlxsw_sp_vr* @ERR_PTR(i32 %64)
  %66 = bitcast %struct.mlxsw_sp_vr* %65 to %struct.mlxsw_sp_rif*
  store %struct.mlxsw_sp_rif* %66, %struct.mlxsw_sp_rif** %4, align 8
  br label %67

67:                                               ; preds = %60, %48, %26, %17
  %68 = load %struct.mlxsw_sp_rif*, %struct.mlxsw_sp_rif** %4, align 8
  ret %struct.mlxsw_sp_rif* %68
}

declare dso_local %struct.mlxsw_sp_vr* @mlxsw_sp_vr_get(%struct.mlxsw_sp*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_vr*) #1

declare dso_local %struct.mlxsw_sp_vr* @ERR_CAST(%struct.mlxsw_sp_vr*) #1

declare dso_local i64 @refcount_inc_not_zero(i32*) #1

declare dso_local %struct.mlxsw_sp_vr* @mlxsw_sp_ul_rif_create(%struct.mlxsw_sp*, %struct.mlxsw_sp_vr*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_vr*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @mlxsw_sp_vr_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_vr*) #1

declare dso_local %struct.mlxsw_sp_vr* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
