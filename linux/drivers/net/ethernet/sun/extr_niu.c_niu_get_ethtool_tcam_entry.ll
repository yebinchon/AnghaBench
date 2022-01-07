; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_get_ethtool_tcam_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_get_ethtool_tcam_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.niu_parent* }
%struct.niu_parent = type { i32, %struct.niu_tcam_entry* }
%struct.niu_tcam_entry = type { i32*, i32, i32 }
%struct.ethtool_rxnfc = type { i32, %struct.ethtool_rx_flow_spec }
%struct.ethtool_rx_flow_spec = type { i32, i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"niu%d: entry [%d] invalid for idx[%d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TCAM_V4KEY0_CLASS_CODE = common dso_local global i32 0, align 4
@TCAM_V4KEY0_CLASS_CODE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"niu%d: niu_class_to_ethflow failed\0A\00", align 1
@TCAM_V4KEY2_PROTO = common dso_local global i64 0, align 8
@TCAM_V4KEY2_PROTO_SHIFT = common dso_local global i64 0, align 8
@IPPROTO_ESP = common dso_local global i64 0, align 8
@TCAM_ASSOCDATA_DISC = common dso_local global i32 0, align 4
@RX_CLS_FLOW_DISC = common dso_local global i32 0, align 4
@TCAM_ASSOCDATA_OFFSET = common dso_local global i32 0, align 4
@TCAM_ASSOCDATA_OFFSET_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, %struct.ethtool_rxnfc*)* @niu_get_ethtool_tcam_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_get_ethtool_tcam_entry(%struct.niu* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.niu*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.niu_parent*, align 8
  %7 = alloca %struct.niu_tcam_entry*, align 8
  %8 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.niu* %0, %struct.niu** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %13 = load %struct.niu*, %struct.niu** %4, align 8
  %14 = getelementptr inbounds %struct.niu, %struct.niu* %13, i32 0, i32 1
  %15 = load %struct.niu_parent*, %struct.niu_parent** %14, align 8
  store %struct.niu_parent* %15, %struct.niu_parent** %6, align 8
  %16 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %16, i32 0, i32 1
  store %struct.ethtool_rx_flow_spec* %17, %struct.ethtool_rx_flow_spec** %8, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.niu*, %struct.niu** %4, align 8
  %19 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i64 @tcam_get_index(%struct.niu* %18, i64 %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.niu_parent*, %struct.niu_parent** %6, align 8
  %25 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %24, i32 0, i32 1
  %26 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %26, i64 %27
  store %struct.niu_tcam_entry* %28, %struct.niu_tcam_entry** %7, align 8
  %29 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %7, align 8
  %30 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %2
  %34 = load %struct.niu*, %struct.niu** %4, align 8
  %35 = getelementptr inbounds %struct.niu, %struct.niu* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.niu_parent*, %struct.niu_parent** %6, align 8
  %38 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 (i32, i8*, i32, ...) @netdev_info(i32 %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %43, i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %159

48:                                               ; preds = %2
  %49 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %7, align 8
  %50 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @TCAM_V4KEY0_CLASS_CODE, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @TCAM_V4KEY0_CLASS_CODE_SHIFT, align 4
  %57 = ashr i32 %55, %56
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %8, align 8
  %60 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %59, i32 0, i32 0
  %61 = call i32 @niu_class_to_ethflow(i32 %58, i32* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %48
  %65 = load %struct.niu*, %struct.niu** %4, align 8
  %66 = getelementptr inbounds %struct.niu, %struct.niu* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.niu_parent*, %struct.niu_parent** %6, align 8
  %69 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32, i8*, i32, ...) @netdev_info(i32 %67, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %157

72:                                               ; preds = %48
  %73 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %8, align 8
  %74 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 138
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %8, align 8
  %79 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %80, 137
  br i1 %81, label %82, label %109

82:                                               ; preds = %77, %72
  %83 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %7, align 8
  %84 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* @TCAM_V4KEY2_PROTO, align 8
  %90 = and i64 %88, %89
  %91 = load i64, i64* @TCAM_V4KEY2_PROTO_SHIFT, align 8
  %92 = ashr i64 %90, %91
  store i64 %92, i64* %12, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* @IPPROTO_ESP, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %82
  %97 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %8, align 8
  %98 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 138
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %8, align 8
  %103 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %102, i32 0, i32 0
  store i32 136, i32* %103, align 8
  br label %107

104:                                              ; preds = %96
  %105 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %8, align 8
  %106 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %105, i32 0, i32 0
  store i32 135, i32* %106, align 8
  br label %107

107:                                              ; preds = %104, %101
  br label %108

108:                                              ; preds = %107, %82
  br label %109

109:                                              ; preds = %108, %77
  %110 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %8, align 8
  %111 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  switch i32 %112, label %124 [
    i32 131, label %113
    i32 129, label %113
    i32 133, label %113
    i32 138, label %113
    i32 136, label %113
    i32 130, label %117
    i32 128, label %117
    i32 132, label %117
    i32 137, label %117
    i32 135, label %117
    i32 134, label %120
  ]

113:                                              ; preds = %109, %109, %109, %109, %109
  %114 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %7, align 8
  %115 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %8, align 8
  %116 = call i32 @niu_get_ip4fs_from_tcam_key(%struct.niu_tcam_entry* %114, %struct.ethtool_rx_flow_spec* %115)
  br label %127

117:                                              ; preds = %109, %109, %109, %109, %109
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %11, align 4
  br label %127

120:                                              ; preds = %109
  %121 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %7, align 8
  %122 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %8, align 8
  %123 = call i32 @niu_get_ip4fs_from_tcam_key(%struct.niu_tcam_entry* %121, %struct.ethtool_rx_flow_spec* %122)
  br label %127

124:                                              ; preds = %109
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %124, %120, %117, %113
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %157

131:                                              ; preds = %127
  %132 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %7, align 8
  %133 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @TCAM_ASSOCDATA_DISC, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %131
  %139 = load i32, i32* @RX_CLS_FLOW_DISC, align 4
  %140 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %8, align 8
  %141 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  br label %152

142:                                              ; preds = %131
  %143 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %7, align 8
  %144 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @TCAM_ASSOCDATA_OFFSET, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* @TCAM_ASSOCDATA_OFFSET_SHIFT, align 4
  %149 = ashr i32 %147, %148
  %150 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %8, align 8
  %151 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %142, %138
  %153 = load %struct.niu*, %struct.niu** %4, align 8
  %154 = call i32 @tcam_get_size(%struct.niu* %153)
  %155 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %156 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  br label %157

157:                                              ; preds = %152, %130, %64
  %158 = load i32, i32* %11, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %157, %33
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i64 @tcam_get_index(%struct.niu*, i64) #1

declare dso_local i32 @netdev_info(i32, i8*, i32, ...) #1

declare dso_local i32 @niu_class_to_ethflow(i32, i32*) #1

declare dso_local i32 @niu_get_ip4fs_from_tcam_key(%struct.niu_tcam_entry*, %struct.ethtool_rx_flow_spec*) #1

declare dso_local i32 @tcam_get_size(%struct.niu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
