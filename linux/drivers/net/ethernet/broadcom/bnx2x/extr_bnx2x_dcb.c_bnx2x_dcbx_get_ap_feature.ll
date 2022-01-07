; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_get_ap_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_get_ap_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64* }
%struct.dcbx_app_priority_feature = type { %struct.dcbx_app_priority_entry*, i64 }
%struct.dcbx_app_priority_entry = type { i64, i64, i32 }

@DCBX_LOCAL_APP_ERROR = common dso_local global i32 0, align 4
@BNX2X_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"DCBX_LOCAL_APP_ERROR\0A\00", align 1
@DCBX_LOCAL_APP_MISMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"DCBX_LOCAL_APP_MISMATCH\0A\00", align 1
@DCBX_REMOTE_APP_TLV_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"DCBX_REMOTE_APP_TLV_NOT_FOUND\0A\00", align 1
@LLFC_DRIVER_TRAFFIC_TYPE_MAX = common dso_local global i64 0, align 8
@DCBX_MAX_APP_PROTOCOL = common dso_local global i64 0, align 8
@MAX_TRAFFIC_TYPE = common dso_local global i32 0, align 4
@DCBX_APP_SF_DEFAULT = common dso_local global i32 0, align 4
@DCBX_APP_SF_ETH_TYPE = common dso_local global i32 0, align 4
@LLFC_TRAFFIC_TYPE_NW = common dso_local global i64 0, align 8
@DCBX_APP_SF_PORT = common dso_local global i32 0, align 4
@TCP_PORT_ISCSI = common dso_local global i64 0, align 8
@LLFC_TRAFFIC_TYPE_ISCSI = common dso_local global i64 0, align 8
@ETH_TYPE_FCOE = common dso_local global i64 0, align 8
@LLFC_TRAFFIC_TYPE_FCOE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"ISCSI is using default priority.\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"FCoE is using default priority.\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"DCBX_LOCAL_APP_DISABLED\0A\00", align 1
@INVALID_TRAFFIC_TYPE_PRIORITY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.dcbx_app_priority_feature*, i64)* @bnx2x_dcbx_get_ap_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_dcbx_get_ap_feature(%struct.bnx2x* %0, %struct.dcbx_app_priority_feature* %1, i64 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.dcbx_app_priority_feature*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dcbx_app_priority_entry*, align 8
  %12 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.dcbx_app_priority_feature* %1, %struct.dcbx_app_priority_feature** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  store i64* %17, i64** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i32, i32* @DCBX_LOCAL_APP_ERROR, align 4
  %20 = call i64 @GET_FLAGS(i64 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %24 = call i32 @DP(i32 %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %3
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* @DCBX_LOCAL_APP_MISMATCH, align 4
  %28 = call i64 @GET_FLAGS(i64 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %32 = call i32 @DP(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* @DCBX_REMOTE_APP_TLV_NOT_FOUND, align 4
  %36 = call i64 @GET_FLAGS(i64 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %40 = call i32 @DP(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %5, align 8
  %43 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %194

46:                                               ; preds = %41
  %47 = load i64, i64* %6, align 8
  %48 = load i32, i32* @DCBX_LOCAL_APP_ERROR, align 4
  %49 = load i32, i32* @DCBX_LOCAL_APP_MISMATCH, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @DCBX_REMOTE_APP_TLV_NOT_FOUND, align 4
  %52 = or i32 %50, %51
  %53 = call i64 @GET_FLAGS(i64 %47, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %194, label %55

55:                                               ; preds = %46
  %56 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %57 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  store i64 0, i64* %7, align 8
  br label %60

60:                                               ; preds = %68, %55
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @LLFC_DRIVER_TRAFFIC_TYPE_MAX, align 8
  %63 = icmp ult i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %60
  %65 = load i64*, i64** %8, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %7, align 8
  br label %60

71:                                               ; preds = %60
  store i64 0, i64* %7, align 8
  br label %72

72:                                               ; preds = %157, %71
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @DCBX_MAX_APP_PROTOCOL, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %160

76:                                               ; preds = %72
  %77 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %5, align 8
  %78 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %77, i32 0, i32 0
  %79 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %78, align 8
  store %struct.dcbx_app_priority_entry* %79, %struct.dcbx_app_priority_entry** %11, align 8
  %80 = load i32, i32* @MAX_TRAFFIC_TYPE, align 4
  store i32 %80, i32* %12, align 4
  %81 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %11, align 8
  %82 = load i64, i64* %7, align 8
  %83 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %81, i64 %82
  %84 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @DCBX_APP_SF_DEFAULT, align 4
  %87 = call i64 @GET_FLAGS(i64 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %76
  %90 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %11, align 8
  %91 = load i64, i64* %7, align 8
  %92 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %90, i64 %91
  %93 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @DCBX_APP_SF_ETH_TYPE, align 4
  %96 = call i64 @GET_FLAGS(i64 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = load i64, i64* @LLFC_TRAFFIC_TYPE_NW, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %12, align 4
  br label %143

101:                                              ; preds = %89, %76
  %102 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %11, align 8
  %103 = load i64, i64* %7, align 8
  %104 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %102, i64 %103
  %105 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @DCBX_APP_SF_PORT, align 4
  %108 = call i64 @GET_FLAGS(i64 %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %101
  %111 = load i64, i64* @TCP_PORT_ISCSI, align 8
  %112 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %11, align 8
  %113 = load i64, i64* %7, align 8
  %114 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %112, i64 %113
  %115 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %111, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = load i64, i64* @LLFC_TRAFFIC_TYPE_ISCSI, align 8
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %12, align 4
  store i64 1, i64* %9, align 8
  br label %142

121:                                              ; preds = %110, %101
  %122 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %11, align 8
  %123 = load i64, i64* %7, align 8
  %124 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %122, i64 %123
  %125 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* @DCBX_APP_SF_ETH_TYPE, align 4
  %128 = call i64 @GET_FLAGS(i64 %126, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %121
  %131 = load i64, i64* @ETH_TYPE_FCOE, align 8
  %132 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %11, align 8
  %133 = load i64, i64* %7, align 8
  %134 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %132, i64 %133
  %135 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %131, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %130
  %139 = load i64, i64* @LLFC_TRAFFIC_TYPE_FCOE, align 8
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %12, align 4
  store i64 1, i64* %10, align 8
  br label %141

141:                                              ; preds = %138, %130, %121
  br label %142

142:                                              ; preds = %141, %118
  br label %143

143:                                              ; preds = %142, %98
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* @MAX_TRAFFIC_TYPE, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %157

148:                                              ; preds = %143
  %149 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %150 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %11, align 8
  %151 = load i64, i64* %7, align 8
  %152 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %150, i64 %151
  %153 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @bnx2x_dcbx_get_ap_priority(%struct.bnx2x* %149, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %148, %147
  %158 = load i64, i64* %7, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %7, align 8
  br label %72

160:                                              ; preds = %72
  %161 = load i64*, i64** %8, align 8
  %162 = load i64, i64* @LLFC_TRAFFIC_TYPE_NW, align 8
  %163 = getelementptr inbounds i64, i64* %161, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %193

166:                                              ; preds = %160
  %167 = load i64, i64* %9, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %179, label %169

169:                                              ; preds = %166
  %170 = load i64*, i64** %8, align 8
  %171 = load i64, i64* @LLFC_TRAFFIC_TYPE_NW, align 8
  %172 = getelementptr inbounds i64, i64* %170, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = load i64*, i64** %8, align 8
  %175 = load i64, i64* @LLFC_TRAFFIC_TYPE_ISCSI, align 8
  %176 = getelementptr inbounds i64, i64* %174, i64 %175
  store i64 %173, i64* %176, align 8
  %177 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %178 = call i32 @DP(i32 %177, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %179

179:                                              ; preds = %169, %166
  %180 = load i64, i64* %10, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %192, label %182

182:                                              ; preds = %179
  %183 = load i64*, i64** %8, align 8
  %184 = load i64, i64* @LLFC_TRAFFIC_TYPE_NW, align 8
  %185 = getelementptr inbounds i64, i64* %183, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = load i64*, i64** %8, align 8
  %188 = load i64, i64* @LLFC_TRAFFIC_TYPE_FCOE, align 8
  %189 = getelementptr inbounds i64, i64* %187, i64 %188
  store i64 %186, i64* %189, align 8
  %190 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %191 = call i32 @DP(i32 %190, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %192

192:                                              ; preds = %182, %179
  br label %193

193:                                              ; preds = %192, %160
  br label %214

194:                                              ; preds = %46, %41
  %195 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %196 = call i32 @DP(i32 %195, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %197 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %198 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  store i32 0, i32* %200, align 8
  store i64 0, i64* %7, align 8
  br label %201

201:                                              ; preds = %210, %194
  %202 = load i64, i64* %7, align 8
  %203 = load i64, i64* @LLFC_DRIVER_TRAFFIC_TYPE_MAX, align 8
  %204 = icmp ult i64 %202, %203
  br i1 %204, label %205, label %213

205:                                              ; preds = %201
  %206 = load i64, i64* @INVALID_TRAFFIC_TYPE_PRIORITY, align 8
  %207 = load i64*, i64** %8, align 8
  %208 = load i64, i64* %7, align 8
  %209 = getelementptr inbounds i64, i64* %207, i64 %208
  store i64 %206, i64* %209, align 8
  br label %210

210:                                              ; preds = %205
  %211 = load i64, i64* %7, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %7, align 8
  br label %201

213:                                              ; preds = %201
  br label %214

214:                                              ; preds = %213, %193
  ret void
}

declare dso_local i64 @GET_FLAGS(i64, i32) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_dcbx_get_ap_priority(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
