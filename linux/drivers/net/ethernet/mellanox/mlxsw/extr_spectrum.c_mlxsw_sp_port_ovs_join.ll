; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_ovs_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_ovs_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32 }

@VLAN_N_VID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*)* @mlxsw_sp_port_ovs_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_ovs_join(%struct.mlxsw_sp_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %3, align 8
  store i32 1, i32* %4, align 4
  %6 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %7 = call i32 @mlxsw_sp_port_vp_mode_set(%struct.mlxsw_sp_port* %6, i32 1)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %65

12:                                               ; preds = %1
  %13 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %14 = call i32 @mlxsw_sp_port_stp_set(%struct.mlxsw_sp_port* %13, i32 1)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %61

18:                                               ; preds = %12
  %19 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %20 = load i32, i32* @VLAN_N_VID, align 4
  %21 = sub nsw i32 %20, 2
  %22 = call i32 @mlxsw_sp_port_vlan_set(%struct.mlxsw_sp_port* %19, i32 1, i32 %21, i32 1, i32 0)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %58

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %40, %26
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @VLAN_N_VID, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp sle i32 %28, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @mlxsw_sp_port_vid_learning_set(%struct.mlxsw_sp_port* %33, i32 %34, i32 0)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %44

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %27

43:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %65

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %54, %44
  %48 = load i32, i32* %4, align 4
  %49 = icmp sge i32 %48, 1
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @mlxsw_sp_port_vid_learning_set(%struct.mlxsw_sp_port* %51, i32 %52, i32 1)
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %4, align 4
  br label %47

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %25
  %59 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %60 = call i32 @mlxsw_sp_port_stp_set(%struct.mlxsw_sp_port* %59, i32 0)
  br label %61

61:                                               ; preds = %58, %17
  %62 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %3, align 8
  %63 = call i32 @mlxsw_sp_port_vp_mode_set(%struct.mlxsw_sp_port* %62, i32 0)
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %43, %10
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @mlxsw_sp_port_vp_mode_set(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @mlxsw_sp_port_stp_set(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @mlxsw_sp_port_vlan_set(%struct.mlxsw_sp_port*, i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_port_vid_learning_set(%struct.mlxsw_sp_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
