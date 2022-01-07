; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_set_vf_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_cmd.c_mlx4_set_vf_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.mlx4_slave_state* }
%struct.TYPE_9__ = type { %struct.mlx4_vport_oper_state* }
%struct.mlx4_vport_oper_state = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_8__ = type { %struct.mlx4_vport_state* }
%struct.mlx4_vport_state = type { i32, i32, i32, i64, i64 }
%struct.mlx4_slave_state = type { i32, i64 }

@MLX4_DEV_CAP_FLAG2_VLAN_CONTROL = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETH_P_8021AD = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG2_SVLAN_BY_QP = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@MLX4_VGT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"vf %d does not support VST QinQ mode\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"updating vf %d port %d config will take effect on next VF restart\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_set_vf_vlan(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.mlx4_priv*, align 8
  %15 = alloca %struct.mlx4_vport_state*, align 8
  %16 = alloca %struct.mlx4_slave_state*, align 8
  %17 = alloca %struct.mlx4_vport_oper_state*, align 8
  %18 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %20 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %19)
  store %struct.mlx4_priv* %20, %struct.mlx4_priv** %14, align 8
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %22 = call i32 @mlx4_is_master(%struct.mlx4_dev* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %6
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %26 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MLX4_DEV_CAP_FLAG2_VLAN_CONTROL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %24, %6
  %33 = load i32, i32* @EPROTONOSUPPORT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %226

35:                                               ; preds = %24
  %36 = load i32, i32* %11, align 4
  %37 = icmp sgt i32 %36, 4095
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  %40 = icmp sgt i32 %39, 7
  br i1 %40, label %41, label %44

41:                                               ; preds = %38, %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  br label %226

44:                                               ; preds = %38
  %45 = load i64, i64* %13, align 8
  %46 = load i32, i32* @ETH_P_8021AD, align 4
  %47 = call i64 @htons(i32 %46)
  %48 = icmp eq i64 %45, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %51 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MLX4_DEV_CAP_FLAG2_SVLAN_BY_QP, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* @EPROTONOSUPPORT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %226

60:                                               ; preds = %49, %44
  %61 = load i64, i64* %13, align 8
  %62 = load i32, i32* @ETH_P_8021Q, align 4
  %63 = call i64 @htons(i32 %62)
  %64 = icmp ne i64 %61, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i64, i64* %13, align 8
  %67 = load i32, i32* @ETH_P_8021AD, align 4
  %68 = call i64 @htons(i32 %67)
  %69 = icmp ne i64 %66, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %226

73:                                               ; preds = %65, %60
  %74 = load i64, i64* %13, align 8
  %75 = load i32, i32* @ETH_P_8021AD, align 4
  %76 = call i64 @htons(i32 %75)
  %77 = icmp eq i64 %74, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = load i32, i32* %11, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @MLX4_VGT, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81, %78
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %7, align 4
  br label %226

88:                                               ; preds = %81, %73
  %89 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @mlx4_get_slave_indx(%struct.mlx4_dev* %89, i32 %90)
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %18, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %7, align 4
  br label %226

97:                                               ; preds = %88
  %98 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %99 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  %102 = load %struct.mlx4_slave_state*, %struct.mlx4_slave_state** %101, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.mlx4_slave_state, %struct.mlx4_slave_state* %102, i64 %104
  store %struct.mlx4_slave_state* %105, %struct.mlx4_slave_state** %16, align 8
  %106 = load i64, i64* %13, align 8
  %107 = load i32, i32* @ETH_P_8021AD, align 4
  %108 = call i64 @htons(i32 %107)
  %109 = icmp eq i64 %106, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %97
  %111 = load %struct.mlx4_slave_state*, %struct.mlx4_slave_state** %16, align 8
  %112 = getelementptr inbounds %struct.mlx4_slave_state, %struct.mlx4_slave_state* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %110
  %116 = load %struct.mlx4_slave_state*, %struct.mlx4_slave_state** %16, align 8
  %117 = getelementptr inbounds %struct.mlx4_slave_state, %struct.mlx4_slave_state* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %115
  %121 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @mlx4_err(%struct.mlx4_dev* %121, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @EPROTONOSUPPORT, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %7, align 4
  br label %226

126:                                              ; preds = %115, %110, %97
  %127 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @mlx4_slaves_closest_port(%struct.mlx4_dev* %127, i32 %128, i32 %129)
  store i32 %130, i32* %9, align 4
  %131 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %132 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %134, align 8
  %136 = load i32, i32* %18, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %140, i64 %142
  store %struct.mlx4_vport_state* %143, %struct.mlx4_vport_state** %15, align 8
  %144 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %145 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = load i32, i32* %18, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %153, i64 %155
  store %struct.mlx4_vport_oper_state* %156, %struct.mlx4_vport_oper_state** %17, align 8
  %157 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %158 = load i32, i32* %9, align 4
  %159 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %15, align 8
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @mlx4_valid_vf_state_change(%struct.mlx4_dev* %157, i32 %158, %struct.mlx4_vport_state* %159, i32 %160, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %167, label %164

164:                                              ; preds = %126
  %165 = load i32, i32* @EPERM, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %7, align 4
  br label %226

167:                                              ; preds = %126
  %168 = load i32, i32* %11, align 4
  %169 = icmp eq i32 0, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  %171 = load i32, i32* %12, align 4
  %172 = icmp eq i32 0, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = load i32, i32* @MLX4_VGT, align 4
  %175 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %15, align 8
  %176 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  br label %181

177:                                              ; preds = %170, %167
  %178 = load i32, i32* %11, align 4
  %179 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %15, align 8
  %180 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %177, %173
  %182 = load i32, i32* %12, align 4
  %183 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %15, align 8
  %184 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  %185 = load i64, i64* %13, align 8
  %186 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %15, align 8
  %187 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %186, i32 0, i32 4
  store i64 %185, i64* %187, align 8
  %188 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %189 = load i32, i32* %9, align 4
  %190 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %15, align 8
  %191 = call i64 @mlx4_is_vf_vst_and_prio_qos(%struct.mlx4_dev* %188, i32 %189, %struct.mlx4_vport_state* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %181
  %194 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %15, align 8
  %195 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load i32, i32* %18, align 4
  %200 = load %struct.mlx4_vport_state*, %struct.mlx4_vport_state** %15, align 8
  %201 = getelementptr inbounds %struct.mlx4_vport_state, %struct.mlx4_vport_state* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 8
  br label %202

202:                                              ; preds = %198, %193, %181
  %203 = load i64, i64* %13, align 8
  %204 = load i32, i32* @ETH_P_8021AD, align 4
  %205 = call i64 @htons(i32 %204)
  %206 = icmp eq i64 %203, %205
  br i1 %206, label %207, label %214

207:                                              ; preds = %202
  %208 = load %struct.mlx4_vport_oper_state*, %struct.mlx4_vport_oper_state** %17, align 8
  %209 = getelementptr inbounds %struct.mlx4_vport_oper_state, %struct.mlx4_vport_oper_state* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* %13, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %220, label %214

214:                                              ; preds = %207, %202
  %215 = load %struct.mlx4_priv*, %struct.mlx4_priv** %14, align 8
  %216 = load i32, i32* %18, align 4
  %217 = load i32, i32* %9, align 4
  %218 = call i64 @mlx4_master_immediate_activate_vlan_qos(%struct.mlx4_priv* %215, i32 %216, i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %214, %207
  %221 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* %9, align 4
  %224 = call i32 @mlx4_info(%struct.mlx4_dev* %221, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %220, %214
  store i32 0, i32* %7, align 4
  br label %226

226:                                              ; preds = %225, %164, %120, %94, %85, %70, %57, %41, %32
  %227 = load i32, i32* %7, align 4
  ret i32 %227
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @mlx4_get_slave_indx(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*, i32) #1

declare dso_local i32 @mlx4_slaves_closest_port(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_valid_vf_state_change(%struct.mlx4_dev*, i32, %struct.mlx4_vport_state*, i32, i32) #1

declare dso_local i64 @mlx4_is_vf_vst_and_prio_qos(%struct.mlx4_dev*, i32, %struct.mlx4_vport_state*) #1

declare dso_local i64 @mlx4_master_immediate_activate_vlan_qos(%struct.mlx4_priv*, i32, i32) #1

declare dso_local i32 @mlx4_info(%struct.mlx4_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
