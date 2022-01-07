; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_set_vf_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_set_vf_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.mlx4_vport_state = type { i32, i64, i32 }
%struct.mlx4_priv = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.mlx4_vport_state* }

@MLX4_DEV_CAP_FLAG2_QOS_VPP = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Minimum BW share not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"vf %d failed to set rate %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"rate set for VF %d when not in valid state\0A\00", align 1
@MLX4_VGT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"VST priority not supported by QoS\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"VF in VGT mode (needed VST)\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"rate %d take affect when VF moves to valid state\0A\00", align 1
@MLX4_VPP_DEFAULT_VPORT = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_UPDATE_QP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_set_vf_rate(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx4_vport_state*, align 8
  %15 = alloca %struct.mlx4_priv*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %17 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %16)
  store %struct.mlx4_priv* %17, %struct.mlx4_priv** %15, align 8
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %19 = call i32 @mlx4_is_master(%struct.mlx4_dev* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %5
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %23 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MLX4_DEV_CAP_FLAG2_QOS_VPP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21, %5
  %30 = load i32, i32* @EPROTONOSUPPORT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %144

32:                                               ; preds = %21
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %37 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_info(%struct.mlx4_dev* %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EPROTONOSUPPORT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %144

40:                                               ; preds = %32
  %41 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @mlx4_get_slave_indx(%struct.mlx4_dev* %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %144

49:                                               ; preds = %40
  %50 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @mlx4_slaves_closest_port(%struct.mlx4_dev* %50, i32 %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.mlx4_priv*, %struct.mlx4_priv** %15, align 8
  %55 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %63, i64 %65
  store %struct.mlx4_vport_state* %66, %struct.mlx4_vport_state** %14, align 8
  %67 = load %struct.mlx4_priv*, %struct.mlx4_priv** %15, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @mlx4_set_vport_qos(%struct.mlx4_priv* %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %49
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_info(%struct.mlx4_dev* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %6, align 4
  br label %144

80:                                               ; preds = %49
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %14, align 8
  %83 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %14, align 8
  %87 = call i32 @mlx4_is_vf_vst_and_prio_qos(%struct.mlx4_dev* %84, i32 %85, %struct.mlx4_vport_state* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %108, label %89

89:                                               ; preds = %80
  %90 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_info(%struct.mlx4_dev* %90, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %14, align 8
  %94 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MLX4_VGT, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %100 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_info(%struct.mlx4_dev* %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %104

101:                                              ; preds = %89
  %102 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %103 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_info(%struct.mlx4_dev* %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_info(%struct.mlx4_dev* %105, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 %106)
  store i32 0, i32* %6, align 4
  br label %144

108:                                              ; preds = %80
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* %13, align 4
  br label %115

113:                                              ; preds = %108
  %114 = load i32, i32* @MLX4_VPP_DEFAULT_VPORT, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %14, align 8
  %118 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.mlx4_priv*, %struct.mlx4_priv** %15, align 8
  %120 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = load i32, i32* %13, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %143

130:                                              ; preds = %115
  %131 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %132 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @MLX4_DEV_CAP_FLAG2_UPDATE_QP, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %130
  %139 = load %struct.mlx4_priv*, %struct.mlx4_priv** %15, align 8
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @mlx4_master_immediate_activate_vlan_qos(%struct.mlx4_priv* %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %130, %115
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %143, %104, %74, %46, %35, %29
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_info(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_get_slave_indx(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_slaves_closest_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_set_vport_qos(%struct.mlx4_priv*, i32, i32, i32) #1

declare dso_local i32 @mlx4_is_vf_vst_and_prio_qos(%struct.mlx4_dev*, i32, %struct.mlx4_vport_state*) #1

declare dso_local i32 @mlx4_master_immediate_activate_vlan_qos(%struct.mlx4_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
