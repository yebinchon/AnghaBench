; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_route4_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c_mlxsw_sp_mr_route4_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_mr_table = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mr_mfc = type { i32 }
%struct.mfc_cache = type { i64, i64 }

@INADDR_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Offloading proxy routes is not supported.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_mr_table*, %struct.mr_mfc*)* @mlxsw_sp_mr_route4_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_mr_route4_validate(%struct.mlxsw_sp_mr_table* %0, %struct.mr_mfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_mr_table*, align 8
  %5 = alloca %struct.mr_mfc*, align 8
  %6 = alloca %struct.mfc_cache*, align 8
  store %struct.mlxsw_sp_mr_table* %0, %struct.mlxsw_sp_mr_table** %4, align 8
  store %struct.mr_mfc* %1, %struct.mr_mfc** %5, align 8
  %7 = load %struct.mr_mfc*, %struct.mr_mfc** %5, align 8
  %8 = bitcast %struct.mr_mfc* %7 to %struct.mfc_cache*
  store %struct.mfc_cache* %8, %struct.mfc_cache** %6, align 8
  %9 = load %struct.mfc_cache*, %struct.mfc_cache** %6, align 8
  %10 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @INADDR_ANY, align 4
  %13 = call i64 @htonl(i32 %12)
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load %struct.mfc_cache*, %struct.mfc_cache** %6, align 8
  %17 = getelementptr inbounds %struct.mfc_cache, %struct.mfc_cache* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* @INADDR_ANY, align 4
  %20 = call i64 @htonl(i32 %19)
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %15
  %23 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %4, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_mr_table, %struct.mlxsw_sp_mr_table* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_warn(i32 %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %32

31:                                               ; preds = %15, %2
  store i32 1, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %22
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
