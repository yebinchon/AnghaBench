; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_8021q_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_8021q_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fid_8021q = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_fid*)* @mlxsw_sp_fid_8021q_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_fid_8021q_configure(%struct.mlxsw_sp_fid* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp_fid*, align 8
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_fid_8021q*, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_sp_fid* %0, %struct.mlxsw_sp_fid** %3, align 8
  %7 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %3, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  store %struct.mlxsw_sp* %11, %struct.mlxsw_sp** %4, align 8
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %13 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %3, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %3, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @mlxsw_sp_fid_op(%struct.mlxsw_sp* %12, i32 %15, i32 %18, i32 1)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %46

24:                                               ; preds = %1
  %25 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %3, align 8
  %26 = call %struct.mlxsw_sp_fid_8021q* @mlxsw_sp_fid_8021q_fid(%struct.mlxsw_sp_fid* %25)
  store %struct.mlxsw_sp_fid_8021q* %26, %struct.mlxsw_sp_fid_8021q** %5, align 8
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %28 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %3, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mlxsw_sp_fid_8021q*, %struct.mlxsw_sp_fid_8021q** %5, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp_fid_8021q, %struct.mlxsw_sp_fid_8021q* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mlxsw_sp_fid_vid_map(%struct.mlxsw_sp* %27, i32 %30, i32 %33, i32 1)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %39

38:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %46

39:                                               ; preds = %37
  %40 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %41 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %3, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @mlxsw_sp_fid_op(%struct.mlxsw_sp* %40, i32 %43, i32 0, i32 0)
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %39, %38, %22
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @mlxsw_sp_fid_op(%struct.mlxsw_sp*, i32, i32, i32) #1

declare dso_local %struct.mlxsw_sp_fid_8021q* @mlxsw_sp_fid_8021q_fid(%struct.mlxsw_sp_fid*) #1

declare dso_local i32 @mlxsw_sp_fid_vid_map(%struct.mlxsw_sp*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
