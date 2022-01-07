; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_ethtool_cls_rule_ins.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_ethtool_cls_rule_ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, %struct.mvpp2_ethtool_fs** }
%struct.mvpp2_ethtool_fs = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i64, i32* }
%struct.ethtool_rxnfc = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.ethtool_rx_flow_spec_input = type { i32, %struct.TYPE_5__* }
%struct.ethtool_rx_flow_rule = type { i32* }

@MVPP2_N_RFS_ENTRIES_PER_FLOW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FLOW_RSS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvpp2_ethtool_cls_rule_ins(%struct.mvpp2_port* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvpp2_port*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.ethtool_rx_flow_spec_input, align 8
  %7 = alloca %struct.ethtool_rx_flow_rule*, align 8
  %8 = alloca %struct.mvpp2_ethtool_fs*, align 8
  %9 = alloca %struct.mvpp2_ethtool_fs*, align 8
  %10 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %11 = bitcast %struct.ethtool_rx_flow_spec_input* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false)
  store i32 0, i32* %10, align 4
  %12 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MVPP2_N_RFS_ENTRIES_PER_FLOW, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %166

21:                                               ; preds = %2
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.mvpp2_ethtool_fs* @kzalloc(i32 32, i32 %22)
  store %struct.mvpp2_ethtool_fs* %23, %struct.mvpp2_ethtool_fs** %8, align 8
  %24 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %8, align 8
  %25 = icmp ne %struct.mvpp2_ethtool_fs* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %166

29:                                               ; preds = %21
  %30 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.ethtool_rx_flow_spec_input, %struct.ethtool_rx_flow_spec_input* %6, i32 0, i32 1
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %32, align 8
  %33 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FLOW_RSS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.ethtool_rx_flow_spec_input, %struct.ethtool_rx_flow_spec_input* %6, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  br label %45

45:                                               ; preds = %40, %29
  %46 = call %struct.ethtool_rx_flow_rule* @ethtool_rx_flow_rule_create(%struct.ethtool_rx_flow_spec_input* %6)
  store %struct.ethtool_rx_flow_rule* %46, %struct.ethtool_rx_flow_rule** %7, align 8
  %47 = load %struct.ethtool_rx_flow_rule*, %struct.ethtool_rx_flow_rule** %7, align 8
  %48 = call i64 @IS_ERR(%struct.ethtool_rx_flow_rule* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load %struct.ethtool_rx_flow_rule*, %struct.ethtool_rx_flow_rule** %7, align 8
  %52 = call i32 @PTR_ERR(%struct.ethtool_rx_flow_rule* %51)
  store i32 %52, i32* %10, align 4
  br label %162

53:                                               ; preds = %45
  %54 = load %struct.ethtool_rx_flow_rule*, %struct.ethtool_rx_flow_rule** %7, align 8
  %55 = getelementptr inbounds %struct.ethtool_rx_flow_rule, %struct.ethtool_rx_flow_rule* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %8, align 8
  %58 = getelementptr inbounds %struct.mvpp2_ethtool_fs, %struct.mvpp2_ethtool_fs* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  store i32* %56, i32** %59, align 8
  %60 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %61 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @mvpp2_cls_ethtool_flow_to_type(i32 %63)
  %65 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %8, align 8
  %66 = getelementptr inbounds %struct.mvpp2_ethtool_fs, %struct.mvpp2_ethtool_fs* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %8, align 8
  %69 = getelementptr inbounds %struct.mvpp2_ethtool_fs, %struct.mvpp2_ethtool_fs* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %53
  %74 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %8, align 8
  %75 = getelementptr inbounds %struct.mvpp2_ethtool_fs, %struct.mvpp2_ethtool_fs* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %10, align 4
  br label %162

78:                                               ; preds = %53
  %79 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %8, align 8
  %80 = getelementptr inbounds %struct.mvpp2_ethtool_fs, %struct.mvpp2_ethtool_fs* %79, i32 0, i32 0
  %81 = call i32 @mvpp2_cls_rfs_parse_rule(%struct.TYPE_6__* %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %159

85:                                               ; preds = %78
  %86 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %87 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %8, align 8
  %91 = getelementptr inbounds %struct.mvpp2_ethtool_fs, %struct.mvpp2_ethtool_fs* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  store i64 %89, i64* %92, align 8
  %93 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %94 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %93, i32 0, i32 1
  %95 = load %struct.mvpp2_ethtool_fs**, %struct.mvpp2_ethtool_fs*** %94, align 8
  %96 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %8, align 8
  %97 = getelementptr inbounds %struct.mvpp2_ethtool_fs, %struct.mvpp2_ethtool_fs* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %95, i64 %99
  %101 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %100, align 8
  %102 = icmp ne %struct.mvpp2_ethtool_fs* %101, null
  br i1 %102, label %103, label %127

103:                                              ; preds = %85
  %104 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %105 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %104, i32 0, i32 1
  %106 = load %struct.mvpp2_ethtool_fs**, %struct.mvpp2_ethtool_fs*** %105, align 8
  %107 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %8, align 8
  %108 = getelementptr inbounds %struct.mvpp2_ethtool_fs, %struct.mvpp2_ethtool_fs* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %106, i64 %110
  %112 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %111, align 8
  store %struct.mvpp2_ethtool_fs* %112, %struct.mvpp2_ethtool_fs** %9, align 8
  %113 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %114 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %9, align 8
  %115 = getelementptr inbounds %struct.mvpp2_ethtool_fs, %struct.mvpp2_ethtool_fs* %114, i32 0, i32 0
  %116 = call i32 @mvpp2_port_cls_rfs_rule_remove(%struct.mvpp2_port* %113, %struct.TYPE_6__* %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %103
  br label %159

120:                                              ; preds = %103
  %121 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %9, align 8
  %122 = call i32 @kfree(%struct.mvpp2_ethtool_fs* %121)
  %123 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %124 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %120, %85
  %128 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %129 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %8, align 8
  %130 = getelementptr inbounds %struct.mvpp2_ethtool_fs, %struct.mvpp2_ethtool_fs* %129, i32 0, i32 0
  %131 = call i32 @mvpp2_port_flt_rfs_rule_insert(%struct.mvpp2_port* %128, %struct.TYPE_6__* %130)
  store i32 %131, i32* %10, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %159

135:                                              ; preds = %127
  %136 = load %struct.ethtool_rx_flow_rule*, %struct.ethtool_rx_flow_rule** %7, align 8
  %137 = call i32 @ethtool_rx_flow_rule_destroy(%struct.ethtool_rx_flow_rule* %136)
  %138 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %8, align 8
  %139 = getelementptr inbounds %struct.mvpp2_ethtool_fs, %struct.mvpp2_ethtool_fs* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  store i32* null, i32** %140, align 8
  %141 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %8, align 8
  %142 = getelementptr inbounds %struct.mvpp2_ethtool_fs, %struct.mvpp2_ethtool_fs* %141, i32 0, i32 1
  %143 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %144 = call i32 @memcpy(i32* %142, %struct.ethtool_rxnfc* %143, i32 24)
  %145 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %8, align 8
  %146 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %147 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %146, i32 0, i32 1
  %148 = load %struct.mvpp2_ethtool_fs**, %struct.mvpp2_ethtool_fs*** %147, align 8
  %149 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %8, align 8
  %150 = getelementptr inbounds %struct.mvpp2_ethtool_fs, %struct.mvpp2_ethtool_fs* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %148, i64 %152
  store %struct.mvpp2_ethtool_fs* %145, %struct.mvpp2_ethtool_fs** %153, align 8
  %154 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %155 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 8
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %3, align 4
  br label %166

159:                                              ; preds = %134, %119, %84
  %160 = load %struct.ethtool_rx_flow_rule*, %struct.ethtool_rx_flow_rule** %7, align 8
  %161 = call i32 @ethtool_rx_flow_rule_destroy(%struct.ethtool_rx_flow_rule* %160)
  br label %162

162:                                              ; preds = %159, %73, %50
  %163 = load %struct.mvpp2_ethtool_fs*, %struct.mvpp2_ethtool_fs** %8, align 8
  %164 = call i32 @kfree(%struct.mvpp2_ethtool_fs* %163)
  %165 = load i32, i32* %10, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %162, %135, %26, %18
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mvpp2_ethtool_fs* @kzalloc(i32, i32) #2

declare dso_local %struct.ethtool_rx_flow_rule* @ethtool_rx_flow_rule_create(%struct.ethtool_rx_flow_spec_input*) #2

declare dso_local i64 @IS_ERR(%struct.ethtool_rx_flow_rule*) #2

declare dso_local i32 @PTR_ERR(%struct.ethtool_rx_flow_rule*) #2

declare dso_local i32 @mvpp2_cls_ethtool_flow_to_type(i32) #2

declare dso_local i32 @mvpp2_cls_rfs_parse_rule(%struct.TYPE_6__*) #2

declare dso_local i32 @mvpp2_port_cls_rfs_rule_remove(%struct.mvpp2_port*, %struct.TYPE_6__*) #2

declare dso_local i32 @kfree(%struct.mvpp2_ethtool_fs*) #2

declare dso_local i32 @mvpp2_port_flt_rfs_rule_insert(%struct.mvpp2_port*, %struct.TYPE_6__*) #2

declare dso_local i32 @ethtool_rx_flow_rule_destroy(%struct.ethtool_rx_flow_rule*) #2

declare dso_local i32 @memcpy(i32*, %struct.ethtool_rxnfc*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
