; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c__mlx5_eswitch_set_vepa_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c__mlx5_eswitch_set_vepa_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.mlx5_flow_handle*, i32, %struct.mlx5_flow_handle*, i32 }
%struct.mlx5_flow_handle = type { i32 }
%struct.mlx5_flow_destination = type { %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_flow_act = type { i8* }
%struct.mlx5_flow_spec = type { %struct.TYPE_4__, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@misc_parameters = common dso_local global i32 0, align 4
@fte_match_set_misc = common dso_local global i32 0, align 4
@source_port = common dso_local global i32 0, align 4
@MLX5_VPORT_UPLINK = common dso_local global i32 0, align 4
@MLX5_MATCH_MISC_PARAMETERS = common dso_local global i32 0, align 4
@MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE = common dso_local global i32 0, align 4
@MLX5_FLOW_CONTEXT_ACTION_FWD_DEST = common dso_local global i8* null, align 8
@MLX5_FLOW_DESTINATION_TYPE_VPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*, i32)* @_mlx5_eswitch_set_vepa_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mlx5_eswitch_set_vepa_locked(%struct.mlx5_eswitch* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_flow_destination, align 4
  %7 = alloca %struct.mlx5_flow_act, align 8
  %8 = alloca %struct.mlx5_flow_handle*, align 8
  %9 = alloca %struct.mlx5_flow_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = bitcast %struct.mlx5_flow_destination* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 24, i1 false)
  %13 = bitcast %struct.mlx5_flow_act* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 8, i1 false)
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %18 = call i32 @esw_cleanup_vepa_rules(%struct.mlx5_eswitch* %17)
  store i32 0, i32* %3, align 4
  br label %133

19:                                               ; preds = %2
  %20 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %23, align 8
  %25 = icmp ne %struct.mlx5_flow_handle* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %133

27:                                               ; preds = %19
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.mlx5_flow_spec* @kvzalloc(i32 24, i32 %28)
  store %struct.mlx5_flow_spec* %29, %struct.mlx5_flow_spec** %9, align 8
  %30 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %31 = icmp ne %struct.mlx5_flow_spec* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %133

35:                                               ; preds = %27
  %36 = load i32, i32* @fte_match_param, align 4
  %37 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %38 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @misc_parameters, align 4
  %41 = call i8* @MLX5_ADDR_OF(i32 %36, i32 %39, i32 %40)
  store i8* %41, i8** %11, align 8
  %42 = load i32, i32* @fte_match_set_misc, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = load i32, i32* @source_port, align 4
  %45 = load i32, i32* @MLX5_VPORT_UPLINK, align 4
  %46 = call i32 @MLX5_SET(i32 %42, i8* %43, i32 %44, i32 %45)
  %47 = load i32, i32* @fte_match_param, align 4
  %48 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %49 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @misc_parameters, align 4
  %52 = call i8* @MLX5_ADDR_OF(i32 %47, i32 %50, i32 %51)
  store i8* %52, i8** %11, align 8
  %53 = load i32, i32* @fte_match_set_misc, align 4
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* @source_port, align 4
  %56 = call i32 @MLX5_SET_TO_ONES(i32 %53, i8* %54, i32 %55)
  %57 = load i32, i32* @MLX5_MATCH_MISC_PARAMETERS, align 4
  %58 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %59 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_FLOW_TABLE, align 4
  %61 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %6, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %63 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %6, i32 0, i32 2
  store i32 %66, i32* %67, align 4
  %68 = load i8*, i8** @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 8
  %69 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %7, i32 0, i32 0
  store i8* %68, i8** %69, align 8
  %70 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %71 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %76 = bitcast %struct.mlx5_flow_destination* %6 to %struct.mlx5_flow_spec*
  %77 = call %struct.mlx5_flow_handle* @mlx5_add_flow_rules(i32 %74, %struct.mlx5_flow_spec* %75, %struct.mlx5_flow_act* %7, %struct.mlx5_flow_spec* %76, i32 1)
  store %struct.mlx5_flow_handle* %77, %struct.mlx5_flow_handle** %8, align 8
  %78 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %8, align 8
  %79 = call i64 @IS_ERR(%struct.mlx5_flow_handle* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %35
  %82 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %8, align 8
  %83 = call i32 @PTR_ERR(%struct.mlx5_flow_handle* %82)
  store i32 %83, i32* %10, align 4
  br label %123

84:                                               ; preds = %35
  %85 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %8, align 8
  %86 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %87 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  store %struct.mlx5_flow_handle* %85, %struct.mlx5_flow_handle** %89, align 8
  br label %90

90:                                               ; preds = %84
  %91 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %92 = call i32 @memset(%struct.mlx5_flow_spec* %91, i32 0, i32 24)
  %93 = bitcast %struct.mlx5_flow_destination* %6 to %struct.mlx5_flow_spec*
  %94 = call i32 @memset(%struct.mlx5_flow_spec* %93, i32 0, i32 24)
  %95 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_VPORT, align 4
  %96 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %6, i32 0, i32 1
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* @MLX5_VPORT_UPLINK, align 4
  %98 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %6, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load i8*, i8** @MLX5_FLOW_CONTEXT_ACTION_FWD_DEST, align 8
  %101 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %7, i32 0, i32 0
  store i8* %100, i8** %101, align 8
  %102 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %103 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %108 = bitcast %struct.mlx5_flow_destination* %6 to %struct.mlx5_flow_spec*
  %109 = call %struct.mlx5_flow_handle* @mlx5_add_flow_rules(i32 %106, %struct.mlx5_flow_spec* %107, %struct.mlx5_flow_act* %7, %struct.mlx5_flow_spec* %108, i32 1)
  store %struct.mlx5_flow_handle* %109, %struct.mlx5_flow_handle** %8, align 8
  %110 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %8, align 8
  %111 = call i64 @IS_ERR(%struct.mlx5_flow_handle* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %90
  %114 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %8, align 8
  %115 = call i32 @PTR_ERR(%struct.mlx5_flow_handle* %114)
  store i32 %115, i32* %10, align 4
  br label %123

116:                                              ; preds = %90
  %117 = load %struct.mlx5_flow_handle*, %struct.mlx5_flow_handle** %8, align 8
  %118 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %119 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  store %struct.mlx5_flow_handle* %117, %struct.mlx5_flow_handle** %121, align 8
  br label %122

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122, %113, %81
  %124 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %9, align 8
  %125 = call i32 @kvfree(%struct.mlx5_flow_spec* %124)
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %130 = call i32 @esw_cleanup_vepa_rules(%struct.mlx5_eswitch* %129)
  br label %131

131:                                              ; preds = %128, %123
  %132 = load i32, i32* %10, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %131, %32, %26, %16
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @esw_cleanup_vepa_rules(%struct.mlx5_eswitch*) #2

declare dso_local %struct.mlx5_flow_spec* @kvzalloc(i32, i32) #2

declare dso_local i8* @MLX5_ADDR_OF(i32, i32, i32) #2

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #2

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i8*, i32) #2

declare dso_local %struct.mlx5_flow_handle* @mlx5_add_flow_rules(i32, %struct.mlx5_flow_spec*, %struct.mlx5_flow_act*, %struct.mlx5_flow_spec*, i32) #2

declare dso_local i64 @IS_ERR(%struct.mlx5_flow_handle*) #2

declare dso_local i32 @PTR_ERR(%struct.mlx5_flow_handle*) #2

declare dso_local i32 @memset(%struct.mlx5_flow_spec*, i32, i32) #2

declare dso_local i32 @kvfree(%struct.mlx5_flow_spec*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
