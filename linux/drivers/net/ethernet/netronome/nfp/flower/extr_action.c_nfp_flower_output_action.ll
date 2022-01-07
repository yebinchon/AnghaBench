; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_flower_output_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_flower_output_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32 }
%struct.flow_action_entry = type { i32 }
%struct.nfp_fl_payload = type { i32* }
%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.nfp_fl_output = type { i32 }

@.str = private unnamed_addr constant [78 x i8] c"unsupported offload: set actions without updating checksums are not supported\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFP_FL_MAX_A_SIZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [89 x i8] c"unsupported offload: mirred output increases action list size beyond the allowed maximum\00", align 1
@NFP_FL_FEATS_LAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"unsupported offload: LAG action has to be last action in action list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.flow_action_entry*, %struct.nfp_fl_payload*, i32*, %struct.net_device*, i32, i32*, i32*, i32*, i64*, i32, %struct.netlink_ext_ack*)* @nfp_flower_output_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_output_action(%struct.nfp_app* %0, %struct.flow_action_entry* %1, %struct.nfp_fl_payload* %2, i32* %3, %struct.net_device* %4, i32 %5, i32* %6, i32* %7, i32* %8, i64* %9, i32 %10, %struct.netlink_ext_ack* %11) #0 {
  %13 = alloca i32, align 4
  %14 = alloca %struct.nfp_app*, align 8
  %15 = alloca %struct.flow_action_entry*, align 8
  %16 = alloca %struct.nfp_fl_payload*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.net_device*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.netlink_ext_ack*, align 8
  %26 = alloca %struct.nfp_flower_priv*, align 8
  %27 = alloca %struct.nfp_fl_output*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %14, align 8
  store %struct.flow_action_entry* %1, %struct.flow_action_entry** %15, align 8
  store %struct.nfp_fl_payload* %2, %struct.nfp_fl_payload** %16, align 8
  store i32* %3, i32** %17, align 8
  store %struct.net_device* %4, %struct.net_device** %18, align 8
  store i32 %5, i32* %19, align 4
  store i32* %6, i32** %20, align 8
  store i32* %7, i32** %21, align 8
  store i32* %8, i32** %22, align 8
  store i64* %9, i64** %23, align 8
  store i32 %10, i32* %24, align 4
  store %struct.netlink_ext_ack* %11, %struct.netlink_ext_ack** %25, align 8
  %30 = load %struct.nfp_app*, %struct.nfp_app** %14, align 8
  %31 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %30, i32 0, i32 0
  %32 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %31, align 8
  store %struct.nfp_flower_priv* %32, %struct.nfp_flower_priv** %26, align 8
  %33 = load i64*, i64** %23, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %12
  %37 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %25, align 8
  %38 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %37, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %13, align 4
  br label %128

41:                                               ; preds = %12
  %42 = load i32*, i32** %17, align 8
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, 4
  %46 = load i32, i32* @NFP_FL_MAX_A_SIZ, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ugt i64 %45, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %25, align 8
  %51 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %50, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %13, align 4
  br label %128

54:                                               ; preds = %41
  %55 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %16, align 8
  %56 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32*, i32** %17, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = bitcast i32* %61 to %struct.nfp_fl_output*
  store %struct.nfp_fl_output* %62, %struct.nfp_fl_output** %27, align 8
  %63 = load %struct.nfp_app*, %struct.nfp_app** %14, align 8
  %64 = load %struct.nfp_fl_output*, %struct.nfp_fl_output** %27, align 8
  %65 = load %struct.flow_action_entry*, %struct.flow_action_entry** %15, align 8
  %66 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %16, align 8
  %67 = load i32, i32* %19, align 4
  %68 = load %struct.net_device*, %struct.net_device** %18, align 8
  %69 = load i32*, i32** %20, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %21, align 8
  %72 = load i32, i32* %24, align 4
  %73 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %25, align 8
  %74 = call i32 @nfp_fl_output(%struct.nfp_app* %63, %struct.nfp_fl_output* %64, %struct.flow_action_entry* %65, %struct.nfp_fl_payload* %66, i32 %67, %struct.net_device* %68, i32 %70, i32* %71, i32 %72, %struct.netlink_ext_ack* %73)
  store i32 %74, i32* %28, align 4
  %75 = load i32, i32* %28, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %54
  %78 = load i32, i32* %28, align 4
  store i32 %78, i32* %13, align 4
  br label %128

79:                                               ; preds = %54
  %80 = load i32*, i32** %17, align 8
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, 4
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 4
  %85 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %26, align 8
  %86 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @NFP_FL_FEATS_LAG, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %124

91:                                               ; preds = %79
  %92 = load %struct.nfp_app*, %struct.nfp_app** %14, align 8
  %93 = load %struct.flow_action_entry*, %struct.flow_action_entry** %15, align 8
  %94 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %16, align 8
  %95 = load i32*, i32** %17, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %25, align 8
  %98 = call i32 @nfp_fl_pre_lag(%struct.nfp_app* %92, %struct.flow_action_entry* %93, %struct.nfp_fl_payload* %94, i32 %96, %struct.netlink_ext_ack* %97)
  store i32 %98, i32* %29, align 4
  %99 = load i32, i32* %29, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %91
  %102 = load i32, i32* %29, align 4
  store i32 %102, i32* %13, align 4
  br label %128

103:                                              ; preds = %91
  %104 = load i32, i32* %29, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %103
  %107 = load i32, i32* %19, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32*, i32** %22, align 8
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109, %106
  %114 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %25, align 8
  %115 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %114, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  %116 = load i32, i32* @EOPNOTSUPP, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %13, align 4
  br label %128

118:                                              ; preds = %109, %103
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %29, align 4
  %121 = load i32*, i32** %17, align 8
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, %120
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %119, %79
  %125 = load i32*, i32** %22, align 8
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %124, %113, %101, %77, %49, %36
  %129 = load i32, i32* %13, align 4
  ret i32 %129
}

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @nfp_fl_output(%struct.nfp_app*, %struct.nfp_fl_output*, %struct.flow_action_entry*, %struct.nfp_fl_payload*, i32, %struct.net_device*, i32, i32*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @nfp_fl_pre_lag(%struct.nfp_app*, %struct.flow_action_entry*, %struct.nfp_fl_payload*, i32, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
