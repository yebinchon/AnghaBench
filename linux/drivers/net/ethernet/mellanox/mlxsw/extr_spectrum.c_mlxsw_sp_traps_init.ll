; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_traps_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_traps_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32, i32, i32 }

@mlxsw_sp_listener = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*)* @mlxsw_sp_traps_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_traps_init(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %5 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %6 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @mlxsw_sp_cpu_policers_set(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %52

13:                                               ; preds = %1
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mlxsw_sp_trap_groups_set(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %52

22:                                               ; preds = %13
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %24 = load i32, i32* @mlxsw_sp_listener, align 4
  %25 = load i32, i32* @mlxsw_sp_listener, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call i32 @mlxsw_sp_traps_register(%struct.mlxsw_sp* %23, i32 %24, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %52

32:                                               ; preds = %22
  %33 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %34 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mlxsw_sp_traps_register(%struct.mlxsw_sp* %33, i32 %36, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %45

44:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %52

45:                                               ; preds = %43
  %46 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %47 = load i32, i32* @mlxsw_sp_listener, align 4
  %48 = load i32, i32* @mlxsw_sp_listener, align 4
  %49 = call i32 @ARRAY_SIZE(i32 %48)
  %50 = call i32 @mlxsw_sp_traps_unregister(%struct.mlxsw_sp* %46, i32 %47, i32 %49)
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %45, %44, %30, %20, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @mlxsw_sp_cpu_policers_set(i32) #1

declare dso_local i32 @mlxsw_sp_trap_groups_set(i32) #1

declare dso_local i32 @mlxsw_sp_traps_register(%struct.mlxsw_sp*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mlxsw_sp_traps_unregister(%struct.mlxsw_sp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
