; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_push_geneve_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_action.c_nfp_fl_push_geneve_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_fl_payload = type { i32* }
%struct.flow_action_entry = type { i64 }
%struct.netlink_ext_ack = type { i32 }
%struct.ip_tunnel_info = type { i32 }
%struct.geneve_opt = type { i32, i32, i32, i32 }
%struct.nfp_fl_push_geneve = type { i32, i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@NFP_FL_MAX_GENEVE_OPT_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"unsupported offload: maximum allowed number of geneve options exceeded\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFP_FL_MAX_GENEVE_OPT_ACT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [86 x i8] c"unsupported offload: maximum allowed action list size exceeded at push geneve options\00", align 1
@NFP_FL_MAX_A_SIZ = common dso_local global i32 0, align 4
@NFP_FL_ACTION_OPCODE_PUSH_GENEVE = common dso_local global i32 0, align 4
@NFP_FL_LW_SIZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_fl_payload*, i32*, %struct.flow_action_entry*, %struct.netlink_ext_ack*)* @nfp_fl_push_geneve_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_fl_push_geneve_options(%struct.nfp_fl_payload* %0, i32* %1, %struct.flow_action_entry* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_fl_payload*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.flow_action_entry*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.ip_tunnel_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.geneve_opt*, align 8
  %17 = alloca %struct.geneve_opt*, align 8
  %18 = alloca %struct.nfp_fl_push_geneve*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.nfp_fl_payload* %0, %struct.nfp_fl_payload** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.flow_action_entry* %2, %struct.flow_action_entry** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %21 = load %struct.flow_action_entry*, %struct.flow_action_entry** %8, align 8
  %22 = getelementptr inbounds %struct.flow_action_entry, %struct.flow_action_entry* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.ip_tunnel_info*
  store %struct.ip_tunnel_info* %24, %struct.ip_tunnel_info** %10, align 8
  %25 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %10, align 8
  %26 = call i32* @ip_tunnel_info_opts(%struct.ip_tunnel_info* %25)
  store i32* %26, i32** %15, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %27 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %10, align 8
  %28 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %65, %4
  %31 = load i32, i32* %11, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %84

33:                                               ; preds = %30
  %34 = load i32*, i32** %15, align 8
  %35 = bitcast i32* %34 to %struct.geneve_opt*
  store %struct.geneve_opt* %35, %struct.geneve_opt** %16, align 8
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @NFP_FL_MAX_GENEVE_OPT_CNT, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %43 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %42, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EOPNOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %180

46:                                               ; preds = %33
  %47 = load %struct.geneve_opt*, %struct.geneve_opt** %16, align 8
  %48 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 4
  %51 = sext i32 %50 to i64
  %52 = add i64 40, %51
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* @NFP_FL_MAX_GENEVE_OPT_ACT, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %46
  %61 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %62 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %61, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %180

65:                                               ; preds = %46
  %66 = load %struct.geneve_opt*, %struct.geneve_opt** %16, align 8
  %67 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 4
  %70 = sext i32 %69 to i64
  %71 = add i64 16, %70
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = sub i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %11, align 4
  %76 = load %struct.geneve_opt*, %struct.geneve_opt** %16, align 8
  %77 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %78, 4
  %80 = sext i32 %79 to i64
  %81 = add i64 16, %80
  %82 = load i32*, i32** %15, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 %81
  store i32* %83, i32** %15, align 8
  br label %30

84:                                               ; preds = %30
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* @NFP_FL_MAX_A_SIZ, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %93 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %92, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @EOPNOTSUPP, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %180

96:                                               ; preds = %84
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %14, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, %99
  store i32 %102, i32* %100, align 4
  %103 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %10, align 8
  %104 = call i32* @ip_tunnel_info_opts(%struct.ip_tunnel_info* %103)
  store i32* %104, i32** %15, align 8
  br label %105

105:                                              ; preds = %108, %96
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %179

108:                                              ; preds = %105
  %109 = load i32*, i32** %15, align 8
  %110 = bitcast i32* %109 to %struct.geneve_opt*
  store %struct.geneve_opt* %110, %struct.geneve_opt** %17, align 8
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %12, align 4
  %113 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %114 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %115, 4
  %117 = sext i32 %116 to i64
  %118 = add i64 40, %117
  store i64 %118, i64* %19, align 8
  %119 = load i64, i64* %19, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = sub i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %124, %125
  %127 = sext i32 %126 to i64
  store i64 %127, i64* %20, align 8
  %128 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %129 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* %20, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = bitcast i32* %132 to %struct.nfp_fl_push_geneve*
  store %struct.nfp_fl_push_geneve* %133, %struct.nfp_fl_push_geneve** %18, align 8
  %134 = load i32, i32* @NFP_FL_ACTION_OPCODE_PUSH_GENEVE, align 4
  %135 = load %struct.nfp_fl_push_geneve*, %struct.nfp_fl_push_geneve** %18, align 8
  %136 = getelementptr inbounds %struct.nfp_fl_push_geneve, %struct.nfp_fl_push_geneve* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  store i32 %134, i32* %137, align 8
  %138 = load i64, i64* %19, align 8
  %139 = load i64, i64* @NFP_FL_LW_SIZ, align 8
  %140 = lshr i64 %138, %139
  %141 = load %struct.nfp_fl_push_geneve*, %struct.nfp_fl_push_geneve** %18, align 8
  %142 = getelementptr inbounds %struct.nfp_fl_push_geneve, %struct.nfp_fl_push_geneve* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  store i64 %140, i64* %143, align 8
  %144 = load %struct.nfp_fl_push_geneve*, %struct.nfp_fl_push_geneve** %18, align 8
  %145 = getelementptr inbounds %struct.nfp_fl_push_geneve, %struct.nfp_fl_push_geneve* %144, i32 0, i32 4
  store i64 0, i64* %145, align 8
  %146 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %147 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.nfp_fl_push_geneve*, %struct.nfp_fl_push_geneve** %18, align 8
  %150 = getelementptr inbounds %struct.nfp_fl_push_geneve, %struct.nfp_fl_push_geneve* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  %151 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %152 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.nfp_fl_push_geneve*, %struct.nfp_fl_push_geneve** %18, align 8
  %155 = getelementptr inbounds %struct.nfp_fl_push_geneve, %struct.nfp_fl_push_geneve* %154, i32 0, i32 2
  store i32 %153, i32* %155, align 8
  %156 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %157 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.nfp_fl_push_geneve*, %struct.nfp_fl_push_geneve** %18, align 8
  %160 = getelementptr inbounds %struct.nfp_fl_push_geneve, %struct.nfp_fl_push_geneve* %159, i32 0, i32 0
  store i32 %158, i32* %160, align 8
  %161 = load %struct.nfp_fl_push_geneve*, %struct.nfp_fl_push_geneve** %18, align 8
  %162 = getelementptr inbounds %struct.nfp_fl_push_geneve, %struct.nfp_fl_push_geneve* %161, i32 0, i32 1
  %163 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %164 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %167 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 %168, 4
  %170 = call i32 @memcpy(i32* %162, i32 %165, i32 %169)
  %171 = load %struct.geneve_opt*, %struct.geneve_opt** %17, align 8
  %172 = getelementptr inbounds %struct.geneve_opt, %struct.geneve_opt* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 %173, 4
  %175 = sext i32 %174 to i64
  %176 = add i64 16, %175
  %177 = load i32*, i32** %15, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 %176
  store i32* %178, i32** %15, align 8
  br label %105

179:                                              ; preds = %105
  store i32 0, i32* %5, align 4
  br label %180

180:                                              ; preds = %179, %91, %60, %41
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32* @ip_tunnel_info_opts(%struct.ip_tunnel_info*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
