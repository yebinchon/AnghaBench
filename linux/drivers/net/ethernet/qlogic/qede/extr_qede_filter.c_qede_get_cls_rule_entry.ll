; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_get_cls_rule_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_filter.c_qede_get_cls_rule_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%struct.ethtool_rxnfc = type { i32, %struct.ethtool_rx_flow_spec }
%struct.ethtool_rx_flow_spec = type { i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.qede_arfs_fltr_node = type { i32, i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i32, i32, i32, i32, i32, i32 }

@QEDE_RFS_MAX_FLTR = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Rule not found - location=0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@TCP_V4_FLOW = common dso_local global i32 0, align 4
@UDP_V4_FLOW = common dso_local global i32 0, align 4
@TCP_V6_FLOW = common dso_local global i32 0, align 4
@UDP_V6_FLOW = common dso_local global i32 0, align 4
@ETHTOOL_RX_FLOW_SPEC_RING_VF_OFF = common dso_local global i32 0, align 4
@RX_CLS_FLOW_DISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qede_get_cls_rule_entry(%struct.qede_dev* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca %struct.qede_dev*, align 8
  %4 = alloca %struct.ethtool_rxnfc*, align 8
  %5 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %6 = alloca %struct.qede_arfs_fltr_node*, align 8
  %7 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %3, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %4, align 8
  %8 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %8, i32 0, i32 1
  store %struct.ethtool_rx_flow_spec* %9, %struct.ethtool_rx_flow_spec** %5, align 8
  store %struct.qede_arfs_fltr_node* null, %struct.qede_arfs_fltr_node** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @QEDE_RFS_MAX_FLTR, align 4
  %11 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %14 = call i32 @__qede_lock(%struct.qede_dev* %13)
  %15 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %16 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %174

22:                                               ; preds = %2
  %23 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %24 = call i32 @QEDE_ARFS_BUCKET_HEAD(%struct.qede_dev* %23, i32 0)
  %25 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.qede_arfs_fltr_node* @qede_get_arfs_fltr_by_loc(i32 %24, i32 %27)
  store %struct.qede_arfs_fltr_node* %28, %struct.qede_arfs_fltr_node** %6, align 8
  %29 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %30 = icmp ne %struct.qede_arfs_fltr_node* %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %22
  %32 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %33 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @DP_NOTICE(%struct.qede_dev* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %174

39:                                               ; preds = %22
  %40 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %41 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @ETH_P_IP, align 4
  %45 = call i64 @htons(i32 %44)
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %95

47:                                               ; preds = %39
  %48 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %49 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IPPROTO_TCP, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @TCP_V4_FLOW, align 4
  %56 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  br label %62

58:                                               ; preds = %47
  %59 = load i32, i32* @UDP_V4_FLOW, align 4
  %60 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %61 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %64 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  store i32 %66, i32* %70, align 4
  %71 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %72 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %76 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  store i32 %74, i32* %78, align 4
  %79 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %80 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %84 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i32 %82, i32* %86, align 4
  %87 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %88 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %92 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 %90, i32* %94, align 4
  br label %143

95:                                               ; preds = %39
  %96 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %97 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @IPPROTO_TCP, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load i32, i32* @TCP_V6_FLOW, align 4
  %104 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %105 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  br label %110

106:                                              ; preds = %95
  %107 = load i32, i32* @UDP_V6_FLOW, align 4
  %108 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %109 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %106, %102
  %111 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %112 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %116 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 3
  store i32 %114, i32* %118, align 4
  %119 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %120 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %124 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  store i32 %122, i32* %126, align 4
  %127 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %128 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %132 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 3
  %134 = call i32 @memcpy(i32* %130, i32* %133, i32 4)
  %135 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %136 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %140 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = call i32 @memcpy(i32* %138, i32* %141, i32 4)
  br label %143

143:                                              ; preds = %110, %62
  %144 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %145 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %148 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %150 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %143
  %154 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %155 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = load i32, i32* @ETHTOOL_RX_FLOW_SPEC_RING_VF_OFF, align 4
  %159 = shl i32 %157, %158
  %160 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %161 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %153, %143
  %165 = load %struct.qede_arfs_fltr_node*, %struct.qede_arfs_fltr_node** %6, align 8
  %166 = getelementptr inbounds %struct.qede_arfs_fltr_node, %struct.qede_arfs_fltr_node* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load i32, i32* @RX_CLS_FLOW_DISC, align 4
  %171 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %172 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %169, %164
  br label %174

174:                                              ; preds = %173, %31, %19
  %175 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %176 = call i32 @__qede_unlock(%struct.qede_dev* %175)
  %177 = load i32, i32* %7, align 4
  ret i32 %177
}

declare dso_local i32 @__qede_lock(%struct.qede_dev*) #1

declare dso_local %struct.qede_arfs_fltr_node* @qede_get_arfs_fltr_by_loc(i32, i32) #1

declare dso_local i32 @QEDE_ARFS_BUCKET_HEAD(%struct.qede_dev*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @__qede_unlock(%struct.qede_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
