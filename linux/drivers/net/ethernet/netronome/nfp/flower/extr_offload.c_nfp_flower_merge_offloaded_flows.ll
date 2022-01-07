; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_merge_offloaded_flows.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_merge_offloaded_flows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { i32 }
%struct.nfp_fl_payload = type { i64, i32, %struct.nfp_fl_payload*, %struct.nfp_fl_payload*, %struct.nfp_fl_payload*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.flow_cls_offload = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.netlink_ext_ack* }
%struct.netlink_ext_ack = type { i32 }
%struct.nfp_fl_key_ls = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfp_flower_table_params = common dso_local global i32 0, align 4
@NFP_FLOWER_CMSG_TYPE_FLOW_MOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_flower_merge_offloaded_flows(%struct.nfp_app* %0, %struct.nfp_fl_payload* %1, %struct.nfp_fl_payload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca %struct.nfp_fl_payload*, align 8
  %7 = alloca %struct.nfp_fl_payload*, align 8
  %8 = alloca %struct.flow_cls_offload, align 8
  %9 = alloca %struct.nfp_flower_priv*, align 8
  %10 = alloca %struct.netlink_ext_ack*, align 8
  %11 = alloca %struct.nfp_fl_payload*, align 8
  %12 = alloca %struct.nfp_fl_key_ls, align 4
  %13 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store %struct.nfp_fl_payload* %1, %struct.nfp_fl_payload** %6, align 8
  store %struct.nfp_fl_payload* %2, %struct.nfp_fl_payload** %7, align 8
  %14 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %15 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %14, i32 0, i32 0
  %16 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %15, align 8
  store %struct.nfp_flower_priv* %16, %struct.nfp_flower_priv** %9, align 8
  store %struct.netlink_ext_ack* null, %struct.netlink_ext_ack** %10, align 8
  %17 = call i32 (...) @ASSERT_RTNL()
  %18 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %8, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %19, align 8
  store %struct.netlink_ext_ack* %20, %struct.netlink_ext_ack** %10, align 8
  %21 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %22 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %7, align 8
  %23 = icmp eq %struct.nfp_fl_payload* %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %3
  %25 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %26 = call i64 @nfp_flower_is_merge_flow(%struct.nfp_fl_payload* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %7, align 8
  %30 = call i64 @nfp_flower_is_merge_flow(%struct.nfp_fl_payload* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28, %24, %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %182

35:                                               ; preds = %28
  %36 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %37 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %7, align 8
  %38 = call i32 @nfp_flower_can_merge(%struct.nfp_fl_payload* %36, %struct.nfp_fl_payload* %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %4, align 4
  br label %182

43:                                               ; preds = %35
  %44 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %45 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %44, i32 0, i32 7
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.nfp_fl_key_ls, %struct.nfp_fl_key_ls* %12, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = call %struct.nfp_fl_payload* @nfp_flower_allocate_new(%struct.nfp_fl_key_ls* %12)
  store %struct.nfp_fl_payload* %49, %struct.nfp_fl_payload** %11, align 8
  %50 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %51 = icmp ne %struct.nfp_fl_payload* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %182

55:                                               ; preds = %43
  %56 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %57 = ptrtoint %struct.nfp_fl_payload* %56 to i64
  %58 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %59 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %61 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %64 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 4
  %65 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %66 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %65, i32 0, i32 2
  %67 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %66, align 8
  %68 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %69 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %68, i32 0, i32 2
  %70 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %69, align 8
  %71 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %72 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @memcpy(%struct.nfp_fl_payload* %67, %struct.nfp_fl_payload* %70, i32 %74)
  %76 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %77 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %76, i32 0, i32 3
  %78 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %77, align 8
  %79 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %80 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %79, i32 0, i32 3
  %81 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %80, align 8
  %82 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %83 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %82, i32 0, i32 7
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @memcpy(%struct.nfp_fl_payload* %78, %struct.nfp_fl_payload* %81, i32 %85)
  %87 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %88 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %7, align 8
  %89 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %90 = call i32 @nfp_flower_merge_action(%struct.nfp_fl_payload* %87, %struct.nfp_fl_payload* %88, %struct.nfp_fl_payload* %89)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %55
  br label %166

94:                                               ; preds = %55
  %95 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %96 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %97 = call i32 @nfp_flower_link_flows(%struct.nfp_fl_payload* %95, %struct.nfp_fl_payload* %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %166

101:                                              ; preds = %94
  %102 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %103 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %7, align 8
  %104 = call i32 @nfp_flower_link_flows(%struct.nfp_fl_payload* %102, %struct.nfp_fl_payload* %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %162

108:                                              ; preds = %101
  %109 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %110 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %8, i32 0, i32 0
  store i64 %111, i64* %112, align 8
  %113 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %114 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %115 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %116 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %10, align 8
  %119 = call i32 @nfp_compile_flow_metadata(%struct.nfp_app* %113, %struct.flow_cls_offload* %8, %struct.nfp_fl_payload* %114, i32 %117, %struct.netlink_ext_ack* %118)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %108
  br label %158

123:                                              ; preds = %108
  %124 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %125 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %124, i32 0, i32 0
  %126 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %127 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %126, i32 0, i32 5
  %128 = load i32, i32* @nfp_flower_table_params, align 4
  %129 = call i32 @rhashtable_insert_fast(i32* %125, i32* %127, i32 %128)
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  br label %154

133:                                              ; preds = %123
  %134 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %135 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %136 = load i32, i32* @NFP_FLOWER_CMSG_TYPE_FLOW_MOD, align 4
  %137 = call i32 @nfp_flower_xmit_flow(%struct.nfp_app* %134, %struct.nfp_fl_payload* %135, i32 %136)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %146

141:                                              ; preds = %133
  %142 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %143 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %142, i32 0, i32 1
  store i32 1, i32* %143, align 8
  %144 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %145 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %144, i32 0, i32 1
  store i32 0, i32* %145, align 8
  store i32 0, i32* %4, align 4
  br label %182

146:                                              ; preds = %140
  %147 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %9, align 8
  %148 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %147, i32 0, i32 0
  %149 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %150 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %149, i32 0, i32 5
  %151 = load i32, i32* @nfp_flower_table_params, align 4
  %152 = call i32 @rhashtable_remove_fast(i32* %148, i32* %150, i32 %151)
  %153 = call i32 @WARN_ON_ONCE(i32 %152)
  br label %154

154:                                              ; preds = %146, %132
  %155 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %156 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %157 = call i32 @nfp_modify_flow_metadata(%struct.nfp_app* %155, %struct.nfp_fl_payload* %156)
  br label %158

158:                                              ; preds = %154, %122
  %159 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %160 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %7, align 8
  %161 = call i32 @nfp_flower_unlink_flows(%struct.nfp_fl_payload* %159, %struct.nfp_fl_payload* %160)
  br label %162

162:                                              ; preds = %158, %107
  %163 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %164 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %6, align 8
  %165 = call i32 @nfp_flower_unlink_flows(%struct.nfp_fl_payload* %163, %struct.nfp_fl_payload* %164)
  br label %166

166:                                              ; preds = %162, %100, %93
  %167 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %168 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %167, i32 0, i32 4
  %169 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %168, align 8
  %170 = call i32 @kfree(%struct.nfp_fl_payload* %169)
  %171 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %172 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %171, i32 0, i32 3
  %173 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %172, align 8
  %174 = call i32 @kfree(%struct.nfp_fl_payload* %173)
  %175 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %176 = getelementptr inbounds %struct.nfp_fl_payload, %struct.nfp_fl_payload* %175, i32 0, i32 2
  %177 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %176, align 8
  %178 = call i32 @kfree(%struct.nfp_fl_payload* %177)
  %179 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %11, align 8
  %180 = call i32 @kfree(%struct.nfp_fl_payload* %179)
  %181 = load i32, i32* %13, align 4
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %166, %141, %52, %41, %32
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i64 @nfp_flower_is_merge_flow(%struct.nfp_fl_payload*) #1

declare dso_local i32 @nfp_flower_can_merge(%struct.nfp_fl_payload*, %struct.nfp_fl_payload*) #1

declare dso_local %struct.nfp_fl_payload* @nfp_flower_allocate_new(%struct.nfp_fl_key_ls*) #1

declare dso_local i32 @memcpy(%struct.nfp_fl_payload*, %struct.nfp_fl_payload*, i32) #1

declare dso_local i32 @nfp_flower_merge_action(%struct.nfp_fl_payload*, %struct.nfp_fl_payload*, %struct.nfp_fl_payload*) #1

declare dso_local i32 @nfp_flower_link_flows(%struct.nfp_fl_payload*, %struct.nfp_fl_payload*) #1

declare dso_local i32 @nfp_compile_flow_metadata(%struct.nfp_app*, %struct.flow_cls_offload*, %struct.nfp_fl_payload*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @rhashtable_insert_fast(i32*, i32*, i32) #1

declare dso_local i32 @nfp_flower_xmit_flow(%struct.nfp_app*, %struct.nfp_fl_payload*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @nfp_modify_flow_metadata(%struct.nfp_app*, %struct.nfp_fl_payload*) #1

declare dso_local i32 @nfp_flower_unlink_flows(%struct.nfp_fl_payload*, %struct.nfp_fl_payload*) #1

declare dso_local i32 @kfree(%struct.nfp_fl_payload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
