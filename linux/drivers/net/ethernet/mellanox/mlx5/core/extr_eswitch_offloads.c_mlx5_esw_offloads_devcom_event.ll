; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_esw_offloads_devcom_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_mlx5_esw_offloads_devcom_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mlx5_devcom* }
%struct.mlx5_devcom = type { i32 }

@MLX5_DEVCOM_ESW_OFFLOADS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"esw offloads devcom event failure, event %u err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i8*)* @mlx5_esw_offloads_devcom_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_esw_offloads_devcom_event(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlx5_eswitch*, align 8
  %9 = alloca %struct.mlx5_devcom*, align 8
  %10 = alloca %struct.mlx5_eswitch*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.mlx5_eswitch*
  store %struct.mlx5_eswitch* %13, %struct.mlx5_eswitch** %8, align 8
  %14 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %15 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %18, align 8
  store %struct.mlx5_devcom* %19, %struct.mlx5_devcom** %9, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.mlx5_eswitch*
  store %struct.mlx5_eswitch* %21, %struct.mlx5_eswitch** %10, align 8
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %72 [
    i32 129, label %23
    i32 128, label %55
  ]

23:                                               ; preds = %3
  %24 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %25 = call i32 @mlx5_eswitch_vport_match_metadata_enabled(%struct.mlx5_eswitch* %24)
  %26 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %10, align 8
  %27 = call i32 @mlx5_eswitch_vport_match_metadata_enabled(%struct.mlx5_eswitch* %26)
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %72

30:                                               ; preds = %23
  %31 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %32 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %10, align 8
  %33 = call i32 @mlx5_esw_offloads_set_ns_peer(%struct.mlx5_eswitch* %31, %struct.mlx5_eswitch* %32, i32 1)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %80

37:                                               ; preds = %30
  %38 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %39 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %10, align 8
  %40 = call i32 @mlx5_esw_offloads_pair(%struct.mlx5_eswitch* %38, %struct.mlx5_eswitch* %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %76

44:                                               ; preds = %37
  %45 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %10, align 8
  %46 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %47 = call i32 @mlx5_esw_offloads_pair(%struct.mlx5_eswitch* %45, %struct.mlx5_eswitch* %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %73

51:                                               ; preds = %44
  %52 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %9, align 8
  %53 = load i32, i32* @MLX5_DEVCOM_ESW_OFFLOADS, align 4
  %54 = call i32 @mlx5_devcom_set_paired(%struct.mlx5_devcom* %52, i32 %53, i32 1)
  br label %72

55:                                               ; preds = %3
  %56 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %9, align 8
  %57 = load i32, i32* @MLX5_DEVCOM_ESW_OFFLOADS, align 4
  %58 = call i32 @mlx5_devcom_is_paired(%struct.mlx5_devcom* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %72

61:                                               ; preds = %55
  %62 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %9, align 8
  %63 = load i32, i32* @MLX5_DEVCOM_ESW_OFFLOADS, align 4
  %64 = call i32 @mlx5_devcom_set_paired(%struct.mlx5_devcom* %62, i32 %63, i32 0)
  %65 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %10, align 8
  %66 = call i32 @mlx5_esw_offloads_unpair(%struct.mlx5_eswitch* %65)
  %67 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %68 = call i32 @mlx5_esw_offloads_unpair(%struct.mlx5_eswitch* %67)
  %69 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %70 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %10, align 8
  %71 = call i32 @mlx5_esw_offloads_set_ns_peer(%struct.mlx5_eswitch* %69, %struct.mlx5_eswitch* %70, i32 0)
  br label %72

72:                                               ; preds = %3, %61, %60, %51, %29
  store i32 0, i32* %4, align 4
  br label %88

73:                                               ; preds = %50
  %74 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %75 = call i32 @mlx5_esw_offloads_unpair(%struct.mlx5_eswitch* %74)
  br label %76

76:                                               ; preds = %73, %43
  %77 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %78 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %10, align 8
  %79 = call i32 @mlx5_esw_offloads_set_ns_peer(%struct.mlx5_eswitch* %77, %struct.mlx5_eswitch* %78, i32 0)
  br label %80

80:                                               ; preds = %76, %36
  %81 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %8, align 8
  %82 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @mlx5_core_err(%struct.TYPE_4__* %83, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %80, %72
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @mlx5_eswitch_vport_match_metadata_enabled(%struct.mlx5_eswitch*) #1

declare dso_local i32 @mlx5_esw_offloads_set_ns_peer(%struct.mlx5_eswitch*, %struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @mlx5_esw_offloads_pair(%struct.mlx5_eswitch*, %struct.mlx5_eswitch*) #1

declare dso_local i32 @mlx5_devcom_set_paired(%struct.mlx5_devcom*, i32, i32) #1

declare dso_local i32 @mlx5_devcom_is_paired(%struct.mlx5_devcom*, i32) #1

declare dso_local i32 @mlx5_esw_offloads_unpair(%struct.mlx5_eswitch*) #1

declare dso_local i32 @mlx5_core_err(%struct.TYPE_4__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
