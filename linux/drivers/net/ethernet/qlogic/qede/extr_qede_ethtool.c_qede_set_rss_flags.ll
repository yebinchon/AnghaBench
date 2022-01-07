; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_set_rss_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_set_rss_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, %struct.qed_update_vport_params*)* }
%struct.qed_update_vport_params = type { i32, i32 }
%struct.ethtool_rxnfc = type { i32, i32 }

@QED_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Set rss flags command parameters: flow type = %d, data = %llu\0A\00", align 1
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Command parameters not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_RSS_IPV4_UDP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"UDP 4-tuple enabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"UDP 4-tuple disabled\0A\00", align 1
@QED_RSS_IPV6_UDP = common dso_local global i32 0, align 4
@QEDE_RSS_CAPS_INITED = common dso_local global i32 0, align 4
@QEDE_STATE_OPEN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*, %struct.ethtool_rxnfc*)* @qede_set_rss_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_set_rss_flags(%struct.qede_dev* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qede_dev*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.qed_update_vport_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %11 = load i32, i32* @QED_MSG_DEBUG, align 4
  %12 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (%struct.qede_dev*, i32, i8*, ...) @DP_VERBOSE(%struct.qede_dev* %10, i32 %11, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17)
  %19 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %137 [
    i32 131, label %22
    i32 130, label %22
    i32 129, label %41
    i32 128, label %76
    i32 136, label %111
    i32 135, label %111
    i32 133, label %126
    i32 143, label %126
    i32 141, label %126
    i32 139, label %126
    i32 132, label %126
    i32 142, label %126
    i32 140, label %126
    i32 138, label %126
    i32 134, label %126
    i32 137, label %126
  ]

22:                                               ; preds = %2, %2
  %23 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RXH_IP_SRC, align 4
  %27 = load i32, i32* @RXH_IP_DST, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @RXH_L4_B_0_1, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @RXH_L4_B_2_3, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %25, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %22
  %36 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %37 = call i32 @DP_INFO(%struct.qede_dev* %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %209

40:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %209

41:                                               ; preds = %2
  %42 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @RXH_IP_SRC, align 4
  %46 = load i32, i32* @RXH_IP_DST, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @RXH_L4_B_0_1, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @RXH_L4_B_2_3, align 4
  %51 = or i32 %49, %50
  %52 = icmp eq i32 %44, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %41
  %54 = load i32, i32* @QED_RSS_IPV4_UDP, align 4
  store i32 %54, i32* %7, align 4
  %55 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %56 = load i32, i32* @QED_MSG_DEBUG, align 4
  %57 = call i32 (%struct.qede_dev*, i32, i8*, ...) @DP_VERBOSE(%struct.qede_dev* %55, i32 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %75

58:                                               ; preds = %41
  %59 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RXH_IP_SRC, align 4
  %63 = load i32, i32* @RXH_IP_DST, align 4
  %64 = or i32 %62, %63
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load i32, i32* @QED_RSS_IPV4_UDP, align 4
  store i32 %67, i32* %8, align 4
  %68 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %69 = load i32, i32* @QED_MSG_DEBUG, align 4
  %70 = call i32 (%struct.qede_dev*, i32, i8*, ...) @DP_VERBOSE(%struct.qede_dev* %68, i32 %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %74

71:                                               ; preds = %58
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %209

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %53
  br label %140

76:                                               ; preds = %2
  %77 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @RXH_IP_SRC, align 4
  %81 = load i32, i32* @RXH_IP_DST, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @RXH_L4_B_0_1, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @RXH_L4_B_2_3, align 4
  %86 = or i32 %84, %85
  %87 = icmp eq i32 %79, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %76
  %89 = load i32, i32* @QED_RSS_IPV6_UDP, align 4
  store i32 %89, i32* %7, align 4
  %90 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %91 = load i32, i32* @QED_MSG_DEBUG, align 4
  %92 = call i32 (%struct.qede_dev*, i32, i8*, ...) @DP_VERBOSE(%struct.qede_dev* %90, i32 %91, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %110

93:                                               ; preds = %76
  %94 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %95 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @RXH_IP_SRC, align 4
  %98 = load i32, i32* @RXH_IP_DST, align 4
  %99 = or i32 %97, %98
  %100 = icmp eq i32 %96, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load i32, i32* @QED_RSS_IPV6_UDP, align 4
  store i32 %102, i32* %8, align 4
  %103 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %104 = load i32, i32* @QED_MSG_DEBUG, align 4
  %105 = call i32 (%struct.qede_dev*, i32, i8*, ...) @DP_VERBOSE(%struct.qede_dev* %103, i32 %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %109

106:                                              ; preds = %93
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %209

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %88
  br label %140

111:                                              ; preds = %2, %2
  %112 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %113 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @RXH_IP_SRC, align 4
  %116 = load i32, i32* @RXH_IP_DST, align 4
  %117 = or i32 %115, %116
  %118 = xor i32 %114, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %111
  %121 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %122 = call i32 @DP_INFO(%struct.qede_dev* %121, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %209

125:                                              ; preds = %111
  store i32 0, i32* %3, align 4
  br label %209

126:                                              ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %127 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %128 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %133 = call i32 @DP_INFO(%struct.qede_dev* %132, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %209

136:                                              ; preds = %126
  store i32 0, i32* %3, align 4
  br label %209

137:                                              ; preds = %2
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %209

140:                                              ; preds = %110, %75
  %141 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %142 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %145 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = xor i32 %147, -1
  %149 = and i32 %146, %148
  %150 = load i32, i32* %7, align 4
  %151 = or i32 %149, %150
  %152 = icmp eq i32 %143, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %140
  store i32 0, i32* %3, align 4
  br label %209

154:                                              ; preds = %140
  %155 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %156 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = xor i32 %158, -1
  %160 = and i32 %157, %159
  %161 = load i32, i32* %7, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %164 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* @QEDE_RSS_CAPS_INITED, align 4
  %166 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %167 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 8
  %170 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %171 = call i32 @__qede_lock(%struct.qede_dev* %170)
  %172 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %173 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @QEDE_STATE_OPEN, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %205

177:                                              ; preds = %154
  %178 = call %struct.qed_update_vport_params* @vzalloc(i32 8)
  store %struct.qed_update_vport_params* %178, %struct.qed_update_vport_params** %6, align 8
  %179 = load %struct.qed_update_vport_params*, %struct.qed_update_vport_params** %6, align 8
  %180 = icmp ne %struct.qed_update_vport_params* %179, null
  br i1 %180, label %186, label %181

181:                                              ; preds = %177
  %182 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %183 = call i32 @__qede_unlock(%struct.qede_dev* %182)
  %184 = load i32, i32* @ENOMEM, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %3, align 4
  br label %209

186:                                              ; preds = %177
  %187 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %188 = load %struct.qed_update_vport_params*, %struct.qed_update_vport_params** %6, align 8
  %189 = getelementptr inbounds %struct.qed_update_vport_params, %struct.qed_update_vport_params* %188, i32 0, i32 1
  %190 = load %struct.qed_update_vport_params*, %struct.qed_update_vport_params** %6, align 8
  %191 = getelementptr inbounds %struct.qed_update_vport_params, %struct.qed_update_vport_params* %190, i32 0, i32 0
  %192 = call i32 @qede_fill_rss_params(%struct.qede_dev* %187, i32* %189, i32* %191)
  %193 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %194 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %193, i32 0, i32 3
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i32 (i32, %struct.qed_update_vport_params*)*, i32 (i32, %struct.qed_update_vport_params*)** %196, align 8
  %198 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %199 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.qed_update_vport_params*, %struct.qed_update_vport_params** %6, align 8
  %202 = call i32 %197(i32 %200, %struct.qed_update_vport_params* %201)
  store i32 %202, i32* %9, align 4
  %203 = load %struct.qed_update_vport_params*, %struct.qed_update_vport_params** %6, align 8
  %204 = call i32 @vfree(%struct.qed_update_vport_params* %203)
  br label %205

205:                                              ; preds = %186, %154
  %206 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %207 = call i32 @__qede_unlock(%struct.qede_dev* %206)
  %208 = load i32, i32* %9, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %205, %181, %153, %137, %136, %131, %125, %120, %106, %71, %40, %35
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*, ...) #1

declare dso_local i32 @DP_INFO(%struct.qede_dev*, i8*) #1

declare dso_local i32 @__qede_lock(%struct.qede_dev*) #1

declare dso_local %struct.qed_update_vport_params* @vzalloc(i32) #1

declare dso_local i32 @__qede_unlock(%struct.qede_dev*) #1

declare dso_local i32 @qede_fill_rss_params(%struct.qede_dev*, i32*, i32*) #1

declare dso_local i32 @vfree(%struct.qed_update_vport_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
