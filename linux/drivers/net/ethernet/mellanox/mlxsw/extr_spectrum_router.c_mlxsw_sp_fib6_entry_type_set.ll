; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib6_entry_type_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib6_entry_type_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fib_entry = type { i8* }
%struct.fib6_info = type { i32, i64 }

@RTF_LOCAL = common dso_local global i32 0, align 4
@RTF_ANYCAST = common dso_local global i32 0, align 4
@MLXSW_SP_FIB_ENTRY_TYPE_TRAP = common dso_local global i8* null, align 8
@RTN_BLACKHOLE = common dso_local global i64 0, align 8
@MLXSW_SP_FIB_ENTRY_TYPE_BLACKHOLE = common dso_local global i8* null, align 8
@RTF_REJECT = common dso_local global i32 0, align 4
@MLXSW_SP_FIB_ENTRY_TYPE_LOCAL = common dso_local global i8* null, align 8
@MLXSW_SP_FIB_ENTRY_TYPE_REMOTE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_entry*, %struct.fib6_info*)* @mlxsw_sp_fib6_entry_type_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_fib6_entry_type_set(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fib_entry* %1, %struct.fib6_info* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_fib_entry*, align 8
  %6 = alloca %struct.fib6_info*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_fib_entry* %1, %struct.mlxsw_sp_fib_entry** %5, align 8
  store %struct.fib6_info* %2, %struct.fib6_info** %6, align 8
  %7 = load %struct.fib6_info*, %struct.fib6_info** %6, align 8
  %8 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @RTF_LOCAL, align 4
  %11 = load i32, i32* @RTF_ANYCAST, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i8*, i8** @MLXSW_SP_FIB_ENTRY_TYPE_TRAP, align 8
  %17 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %5, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  br label %56

19:                                               ; preds = %3
  %20 = load %struct.fib6_info*, %struct.fib6_info** %6, align 8
  %21 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RTN_BLACKHOLE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i8*, i8** @MLXSW_SP_FIB_ENTRY_TYPE_BLACKHOLE, align 8
  %27 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %5, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %55

29:                                               ; preds = %19
  %30 = load %struct.fib6_info*, %struct.fib6_info** %6, align 8
  %31 = getelementptr inbounds %struct.fib6_info, %struct.fib6_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @RTF_REJECT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i8*, i8** @MLXSW_SP_FIB_ENTRY_TYPE_LOCAL, align 8
  %38 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %5, align 8
  %39 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %54

40:                                               ; preds = %29
  %41 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %42 = load %struct.fib6_info*, %struct.fib6_info** %6, align 8
  %43 = call i64 @mlxsw_sp_rt6_is_gateway(%struct.mlxsw_sp* %41, %struct.fib6_info* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i8*, i8** @MLXSW_SP_FIB_ENTRY_TYPE_REMOTE, align 8
  %47 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %5, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  br label %53

49:                                               ; preds = %40
  %50 = load i8*, i8** @MLXSW_SP_FIB_ENTRY_TYPE_LOCAL, align 8
  %51 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %5, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %53, %36
  br label %55

55:                                               ; preds = %54, %25
  br label %56

56:                                               ; preds = %55, %15
  ret void
}

declare dso_local i64 @mlxsw_sp_rt6_is_gateway(%struct.mlxsw_sp*, %struct.fib6_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
