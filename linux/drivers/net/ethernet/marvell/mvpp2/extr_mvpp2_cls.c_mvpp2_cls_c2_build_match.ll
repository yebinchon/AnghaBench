; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_c2_build_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_cls.c_mvpp2_cls_c2_build_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_rfs_rule = type { i32, i32, i32, %struct.flow_rule* }
%struct.flow_rule = type { i32 }
%struct.flow_match_vlan = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.flow_match_ports = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }

@FLOW_DISSECTOR_KEY_VLAN = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_VLAN = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_VLAN_PRI = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_PORTS = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_L4SIP = common dso_local global i32 0, align 4
@MVPP22_CLS_HEK_OPT_L4DIP = common dso_local global i32 0, align 4
@MVPP2_FLOW_N_FIELDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2_rfs_rule*)* @mvpp2_cls_c2_build_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_cls_c2_build_match(%struct.mvpp2_rfs_rule* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvpp2_rfs_rule*, align 8
  %4 = alloca %struct.flow_rule*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.flow_match_vlan, align 8
  %7 = alloca %struct.flow_match_ports, align 8
  store %struct.mvpp2_rfs_rule* %0, %struct.mvpp2_rfs_rule** %3, align 8
  %8 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %3, align 8
  %9 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %8, i32 0, i32 3
  %10 = load %struct.flow_rule*, %struct.flow_rule** %9, align 8
  store %struct.flow_rule* %10, %struct.flow_rule** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.flow_rule*, %struct.flow_rule** %4, align 8
  %12 = load i32, i32* @FLOW_DISSECTOR_KEY_VLAN, align 4
  %13 = call i64 @flow_rule_match_key(%struct.flow_rule* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %99

15:                                               ; preds = %1
  %16 = load %struct.flow_rule*, %struct.flow_rule** %4, align 8
  %17 = call i32 @flow_rule_match_vlan(%struct.flow_rule* %16, %struct.flow_match_vlan* %6)
  %18 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %6, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %15
  %24 = load i32, i32* @MVPP22_CLS_HEK_OPT_VLAN, align 4
  %25 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %3, align 8
  %26 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %6, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* %5, align 4
  %35 = shl i32 %33, %34
  %36 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %3, align 8
  %37 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %6, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* %5, align 4
  %46 = shl i32 %44, %45
  %47 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %3, align 8
  %48 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %23, %15
  %52 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %6, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %51
  %58 = load i32, i32* @MVPP22_CLS_HEK_OPT_VLAN_PRI, align 4
  %59 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %3, align 8
  %60 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %6, i32 0, i32 1
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 13
  %70 = shl i32 %67, %69
  %71 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %3, align 8
  %72 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %6, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 13
  %82 = shl i32 %79, %81
  %83 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %3, align 8
  %84 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %57, %51
  %88 = getelementptr inbounds %struct.flow_match_vlan, %struct.flow_match_vlan* %6, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load i32, i32* @EOPNOTSUPP, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %202

96:                                               ; preds = %87
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 16
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %96, %1
  %100 = load %struct.flow_rule*, %struct.flow_rule** %4, align 8
  %101 = load i32, i32* @FLOW_DISSECTOR_KEY_PORTS, align 4
  %102 = call i64 @flow_rule_match_key(%struct.flow_rule* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %191

104:                                              ; preds = %99
  %105 = load %struct.flow_rule*, %struct.flow_rule** %4, align 8
  %106 = call i32 @flow_rule_match_ports(%struct.flow_rule* %105, %struct.flow_match_ports* %7)
  %107 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %7, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %148

112:                                              ; preds = %104
  %113 = load i32, i32* @MVPP22_CLS_HEK_OPT_L4SIP, align 4
  %114 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %3, align 8
  %115 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  %118 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %7, i32 0, i32 1
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @ntohs(i64 %121)
  %123 = trunc i64 %122 to i32
  %124 = load i32, i32* %5, align 4
  %125 = shl i32 %123, %124
  %126 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %3, align 8
  %127 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  %130 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %7, i32 0, i32 0
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i64 @ntohs(i64 %133)
  %135 = trunc i64 %134 to i32
  %136 = load i32, i32* %5, align 4
  %137 = shl i32 %135, %136
  %138 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %3, align 8
  %139 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* @MVPP22_CLS_HEK_OPT_L4SIP, align 4
  %143 = call i64 @mvpp2_cls_hek_field_size(i32 %142)
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %143
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %112, %104
  %149 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %7, i32 0, i32 0
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %190

154:                                              ; preds = %148
  %155 = load i32, i32* @MVPP22_CLS_HEK_OPT_L4DIP, align 4
  %156 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %3, align 8
  %157 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  %160 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %7, i32 0, i32 1
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i64 @ntohs(i64 %163)
  %165 = trunc i64 %164 to i32
  %166 = load i32, i32* %5, align 4
  %167 = shl i32 %165, %166
  %168 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %3, align 8
  %169 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  %172 = getelementptr inbounds %struct.flow_match_ports, %struct.flow_match_ports* %7, i32 0, i32 0
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = call i64 @ntohs(i64 %175)
  %177 = trunc i64 %176 to i32
  %178 = load i32, i32* %5, align 4
  %179 = shl i32 %177, %178
  %180 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %3, align 8
  %181 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 4
  %184 = load i32, i32* @MVPP22_CLS_HEK_OPT_L4DIP, align 4
  %185 = call i64 @mvpp2_cls_hek_field_size(i32 %184)
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %187, %185
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %5, align 4
  br label %190

190:                                              ; preds = %154, %148
  br label %191

191:                                              ; preds = %190, %99
  %192 = load %struct.mvpp2_rfs_rule*, %struct.mvpp2_rfs_rule** %3, align 8
  %193 = getelementptr inbounds %struct.mvpp2_rfs_rule, %struct.mvpp2_rfs_rule* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i64 @hweight16(i32 %194)
  %196 = load i64, i64* @MVPP2_FLOW_N_FIELDS, align 8
  %197 = icmp sgt i64 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %191
  %199 = load i32, i32* @EOPNOTSUPP, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %2, align 4
  br label %202

201:                                              ; preds = %191
  store i32 0, i32* %2, align 4
  br label %202

202:                                              ; preds = %201, %198, %93
  %203 = load i32, i32* %2, align 4
  ret i32 %203
}

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_vlan(%struct.flow_rule*, %struct.flow_match_vlan*) #1

declare dso_local i32 @flow_rule_match_ports(%struct.flow_rule*, %struct.flow_match_ports*) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i64 @mvpp2_cls_hek_field_size(i32) #1

declare dso_local i64 @hweight16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
