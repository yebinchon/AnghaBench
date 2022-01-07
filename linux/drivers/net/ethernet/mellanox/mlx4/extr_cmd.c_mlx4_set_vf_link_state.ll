; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_set_vf_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_set_vf_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.mlx4_vport_state* }
%struct.mlx4_vport_state = type { i32 }
%struct.TYPE_5__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@MLX4_PORT_CHANGE_SUBTYPE_ACTIVE = common dso_local global i32 0, align 4
@MLX4_PORT_CHANGE_SUBTYPE_DOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"unknown value for link_state %02x on slave %d port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"updating vf %d port %d no link state HW enforcement\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_set_vf_link_state(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_priv*, align 8
  %11 = alloca %struct.mlx4_vport_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %15 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %14)
  store %struct.mlx4_priv* %15, %struct.mlx4_priv** %10, align 8
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @mlx4_get_slave_indx(%struct.mlx4_dev* %16, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %90

24:                                               ; preds = %4
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @mlx4_slaves_closest_port(%struct.mlx4_dev* %25, i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %49 [
    i32 130, label %30
    i32 128, label %45
    i32 129, label %47
  ]

30:                                               ; preds = %24
  %31 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %32 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* @MLX4_PORT_CHANGE_SUBTYPE_ACTIVE, align 4
  store i32 %41, i32* %13, align 4
  br label %44

42:                                               ; preds = %30
  %43 = load i32, i32* @MLX4_PORT_CHANGE_SUBTYPE_DOWN, align 4
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %42, %40
  br label %57

45:                                               ; preds = %24
  %46 = load i32, i32* @MLX4_PORT_CHANGE_SUBTYPE_ACTIVE, align 4
  store i32 %46, i32* %13, align 4
  br label %57

47:                                               ; preds = %24
  %48 = load i32, i32* @MLX4_PORT_CHANGE_SUBTYPE_DOWN, align 4
  store i32 %48, i32* %13, align 4
  br label %57

49:                                               ; preds = %24
  %50 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @mlx4_warn(%struct.mlx4_dev* %50, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %90

57:                                               ; preds = %47, %45, %44
  %58 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %59 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %67, i64 %69
  store %struct.mlx4_vport_state* %70, %struct.mlx4_vport_state** %11, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %11, align 8
  %73 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @mlx4_gen_port_state_change_eqe(%struct.mlx4_dev* %74, i32 %75, i32 %76, i32 %77)
  %79 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i64 @mlx4_master_immediate_activate_vlan_qos(%struct.mlx4_priv* %79, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %57
  %85 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @mlx4_dbg(%struct.mlx4_dev* %85, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %57
  store i32 0, i32* %5, align 4
  br label %90

90:                                               ; preds = %89, %49, %21
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_get_slave_indx(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_slaves_closest_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32, i32, i32) #1

declare dso_local i32 @mlx4_gen_port_state_change_eqe(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i64 @mlx4_master_immediate_activate_vlan_qos(%struct.mlx4_priv*, i32, i32) #1

declare dso_local i32 @mlx4_dbg(%struct.mlx4_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
