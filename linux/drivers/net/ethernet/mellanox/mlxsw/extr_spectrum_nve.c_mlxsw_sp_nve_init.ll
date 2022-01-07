; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_nve.c_mlxsw_sp_nve_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_nve*, i32 }
%struct.mlxsw_sp_nve = type { i32, i32, %struct.mlxsw_sp* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_sp_nve_mc_list_ht_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_nve_init(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_nve*, align 8
  %5 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.mlxsw_sp_nve* @kzalloc(i32 16, i32 %6)
  store %struct.mlxsw_sp_nve* %7, %struct.mlxsw_sp_nve** %4, align 8
  %8 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %4, align 8
  %9 = icmp ne %struct.mlxsw_sp_nve* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %62

13:                                               ; preds = %1
  %14 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %4, align 8
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %15, i32 0, i32 0
  store %struct.mlxsw_sp_nve* %14, %struct.mlxsw_sp_nve** %16, align 8
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %18 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %4, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %18, i32 0, i32 2
  store %struct.mlxsw_sp* %17, %struct.mlxsw_sp** %19, align 8
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %4, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %4, align 8
  %26 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %25, i32 0, i32 0
  %27 = call i32 @rhashtable_init(i32* %26, i32* @mlxsw_sp_nve_mc_list_ht_params)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %13
  br label %56

31:                                               ; preds = %13
  %32 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %33 = call i32 @mlxsw_sp_nve_qos_init(%struct.mlxsw_sp* %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %52

37:                                               ; preds = %31
  %38 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %39 = call i32 @mlxsw_sp_nve_ecn_init(%struct.mlxsw_sp* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %51

43:                                               ; preds = %37
  %44 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %45 = call i32 @mlxsw_sp_nve_resources_query(%struct.mlxsw_sp* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %50

49:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %62

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50, %42
  br label %52

52:                                               ; preds = %51, %36
  %53 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %4, align 8
  %54 = getelementptr inbounds %struct.mlxsw_sp_nve, %struct.mlxsw_sp_nve* %53, i32 0, i32 0
  %55 = call i32 @rhashtable_destroy(i32* %54)
  br label %56

56:                                               ; preds = %52, %30
  %57 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %58 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %57, i32 0, i32 0
  store %struct.mlxsw_sp_nve* null, %struct.mlxsw_sp_nve** %58, align 8
  %59 = load %struct.mlxsw_sp_nve*, %struct.mlxsw_sp_nve** %4, align 8
  %60 = call i32 @kfree(%struct.mlxsw_sp_nve* %59)
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %56, %49, %10
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.mlxsw_sp_nve* @kzalloc(i32, i32) #1

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local i32 @mlxsw_sp_nve_qos_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_nve_ecn_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_nve_resources_query(%struct.mlxsw_sp*) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_nve*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
