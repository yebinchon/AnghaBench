; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.devlink = type { i32 }

@mlxsw_sp_dpipe_headers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_dpipe_init(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %6 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.devlink* @priv_to_devlink(i32 %8)
  store %struct.devlink* %9, %struct.devlink** %4, align 8
  %10 = load %struct.devlink*, %struct.devlink** %4, align 8
  %11 = call i32 @devlink_dpipe_headers_register(%struct.devlink* %10, i32* @mlxsw_sp_dpipe_headers)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %57

16:                                               ; preds = %1
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %18 = call i32 @mlxsw_sp_dpipe_erif_table_init(%struct.mlxsw_sp* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %50

22:                                               ; preds = %16
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %24 = call i32 @mlxsw_sp_dpipe_host4_table_init(%struct.mlxsw_sp* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %47

28:                                               ; preds = %22
  %29 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %30 = call i32 @mlxsw_sp_dpipe_host6_table_init(%struct.mlxsw_sp* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %44

34:                                               ; preds = %28
  %35 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %36 = call i32 @mlxsw_sp_dpipe_adj_table_init(%struct.mlxsw_sp* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %41

40:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %57

41:                                               ; preds = %39
  %42 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %43 = call i32 @mlxsw_sp_dpipe_host6_table_fini(%struct.mlxsw_sp* %42)
  br label %44

44:                                               ; preds = %41, %33
  %45 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %46 = call i32 @mlxsw_sp_dpipe_host4_table_fini(%struct.mlxsw_sp* %45)
  br label %47

47:                                               ; preds = %44, %27
  %48 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %49 = call i32 @mlxsw_sp_dpipe_erif_table_fini(%struct.mlxsw_sp* %48)
  br label %50

50:                                               ; preds = %47, %21
  %51 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.devlink* @priv_to_devlink(i32 %53)
  %55 = call i32 @devlink_dpipe_headers_unregister(%struct.devlink* %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %50, %40, %14
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.devlink* @priv_to_devlink(i32) #1

declare dso_local i32 @devlink_dpipe_headers_register(%struct.devlink*, i32*) #1

declare dso_local i32 @mlxsw_sp_dpipe_erif_table_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_dpipe_host4_table_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_dpipe_host6_table_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_dpipe_adj_table_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_dpipe_host6_table_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_dpipe_host4_table_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_dpipe_erif_table_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @devlink_dpipe_headers_unregister(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
