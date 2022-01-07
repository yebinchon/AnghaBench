; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.vmxnet3_adapter = type { i32, i32, i32, %struct.TYPE_12__*, %struct.Vmxnet3_DriverShared* }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8*, i8*, i8* }
%struct.TYPE_8__ = type { i64 }
%struct.Vmxnet3_DriverShared = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %union.Vmxnet3_CmdInfo }
%union.Vmxnet3_CmdInfo = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VMXNET3_COALESCE_DISABLED = common dso_local global i32 0, align 4
@VMXNET3_COAL_RBC_MIN_RATE = common dso_local global i64 0, align 8
@VMXNET3_COAL_RBC_MAX_RATE = common dso_local global i64 0, align 8
@VMXNET3_COALESCE_RBC = common dso_local global i32 0, align 4
@VMXNET3_COALESCE_ADAPT = common dso_local global i32 0, align 4
@VMXNET3_COAL_STATIC_MAX_DEPTH = common dso_local global i64 0, align 8
@VMXNET3_COALESCE_STATIC = common dso_local global i32 0, align 4
@VMXNET3_COAL_STATIC_DEFAULT_DEPTH = common dso_local global i8* null, align 8
@VMXNET3_REG_CMD = common dso_local global i32 0, align 4
@VMXNET3_CMD_SET_COALESCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @vmxnet3_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.vmxnet3_adapter*, align 8
  %7 = alloca %struct.Vmxnet3_DriverShared*, align 8
  %8 = alloca %union.Vmxnet3_CmdInfo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.vmxnet3_adapter* %12, %struct.vmxnet3_adapter** %6, align 8
  %13 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %14 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %13, i32 0, i32 4
  %15 = load %struct.Vmxnet3_DriverShared*, %struct.Vmxnet3_DriverShared** %14, align 8
  store %struct.Vmxnet3_DriverShared* %15, %struct.Vmxnet3_DriverShared** %7, align 8
  %16 = load %struct.Vmxnet3_DriverShared*, %struct.Vmxnet3_DriverShared** %7, align 8
  %17 = getelementptr inbounds %struct.Vmxnet3_DriverShared, %struct.Vmxnet3_DriverShared* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  store %union.Vmxnet3_CmdInfo* %18, %union.Vmxnet3_CmdInfo** %8, align 8
  %19 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %20 = call i32 @VMXNET3_VERSION_GE_3(%struct.vmxnet3_adapter* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %364

25:                                               ; preds = %2
  %26 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %26, i32 0, i32 21
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %115, label %30

30:                                               ; preds = %25
  %31 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %31, i32 0, i32 20
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %115, label %35

35:                                               ; preds = %30
  %36 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %36, i32 0, i32 19
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %115, label %40

40:                                               ; preds = %35
  %41 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %41, i32 0, i32 18
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %115, label %45

45:                                               ; preds = %40
  %46 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %46, i32 0, i32 17
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %115, label %50

50:                                               ; preds = %45
  %51 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %51, i32 0, i32 16
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %115, label %55

55:                                               ; preds = %50
  %56 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %56, i32 0, i32 15
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %115, label %60

60:                                               ; preds = %55
  %61 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %61, i32 0, i32 14
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %115, label %65

65:                                               ; preds = %60
  %66 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %66, i32 0, i32 13
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %115, label %70

70:                                               ; preds = %65
  %71 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %71, i32 0, i32 12
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %115, label %75

75:                                               ; preds = %70
  %76 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %76, i32 0, i32 11
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %115, label %80

80:                                               ; preds = %75
  %81 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %82 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %81, i32 0, i32 10
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %115, label %85

85:                                               ; preds = %80
  %86 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %87 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %86, i32 0, i32 9
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %115, label %90

90:                                               ; preds = %85
  %91 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %92 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %91, i32 0, i32 8
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %115, label %95

95:                                               ; preds = %90
  %96 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %97 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %96, i32 0, i32 7
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %95
  %101 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %102 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %100
  %106 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %107 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %112 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110, %105, %100, %95, %90, %85, %80, %75, %70, %65, %60, %55, %50, %45, %40, %35, %30, %25
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  br label %364

118:                                              ; preds = %110
  %119 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %120 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %148

123:                                              ; preds = %118
  %124 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %125 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %148

128:                                              ; preds = %123
  %129 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %130 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %148

133:                                              ; preds = %128
  %134 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %135 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %133
  %139 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %140 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %139, i32 0, i32 3
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = call i32 @memset(%struct.TYPE_12__* %141, i32 0, i32 40)
  %143 = load i32, i32* @VMXNET3_COALESCE_DISABLED, align 4
  %144 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %145 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %144, i32 0, i32 3
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  store i32 %143, i32* %147, align 8
  br label %330

148:                                              ; preds = %133, %128, %123, %118
  %149 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %150 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %203

153:                                              ; preds = %148
  %154 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %155 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %168, label %158

158:                                              ; preds = %153
  %159 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %160 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %158
  %164 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %165 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %163, %158, %153
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %3, align 4
  br label %364

171:                                              ; preds = %163
  %172 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %173 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i64 @VMXNET3_COAL_RBC_RATE(i64 %174)
  store i64 %175, i64* %10, align 8
  %176 = load i64, i64* %10, align 8
  %177 = load i64, i64* @VMXNET3_COAL_RBC_MIN_RATE, align 8
  %178 = icmp slt i64 %176, %177
  br i1 %178, label %183, label %179

179:                                              ; preds = %171
  %180 = load i64, i64* %10, align 8
  %181 = load i64, i64* @VMXNET3_COAL_RBC_MAX_RATE, align 8
  %182 = icmp sgt i64 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %179, %171
  %184 = load i32, i32* @EINVAL, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %3, align 4
  br label %364

186:                                              ; preds = %179
  %187 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %188 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %187, i32 0, i32 3
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %188, align 8
  %190 = call i32 @memset(%struct.TYPE_12__* %189, i32 0, i32 40)
  %191 = load i32, i32* @VMXNET3_COALESCE_RBC, align 4
  %192 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %193 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %192, i32 0, i32 3
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 1
  store i32 %191, i32* %195, align 8
  %196 = load i64, i64* %10, align 8
  %197 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %198 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %197, i32 0, i32 3
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  store i64 %196, i64* %202, align 8
  br label %330

203:                                              ; preds = %148
  %204 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %205 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %236

208:                                              ; preds = %203
  %209 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %210 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %223, label %213

213:                                              ; preds = %208
  %214 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %215 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %213
  %219 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %220 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %218, %213, %208
  %224 = load i32, i32* @EINVAL, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %3, align 4
  br label %364

226:                                              ; preds = %218
  %227 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %228 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %227, i32 0, i32 3
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %228, align 8
  %230 = call i32 @memset(%struct.TYPE_12__* %229, i32 0, i32 40)
  %231 = load i32, i32* @VMXNET3_COALESCE_ADAPT, align 4
  %232 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %233 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %232, i32 0, i32 3
  %234 = load %struct.TYPE_12__*, %struct.TYPE_12__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 1
  store i32 %231, i32* %235, align 8
  br label %330

236:                                              ; preds = %203
  %237 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %238 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %236
  %242 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %243 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %329

246:                                              ; preds = %241, %236
  %247 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %248 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %256, label %251

251:                                              ; preds = %246
  %252 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %253 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %251, %246
  %257 = load i32, i32* @EINVAL, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %3, align 4
  br label %364

259:                                              ; preds = %251
  %260 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %261 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @VMXNET3_COAL_STATIC_MAX_DEPTH, align 8
  %264 = icmp sgt i64 %262, %263
  br i1 %264, label %271, label %265

265:                                              ; preds = %259
  %266 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %267 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @VMXNET3_COAL_STATIC_MAX_DEPTH, align 8
  %270 = icmp sgt i64 %268, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %265, %259
  %272 = load i32, i32* @EINVAL, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %3, align 4
  br label %364

274:                                              ; preds = %265
  %275 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %276 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %275, i32 0, i32 3
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %276, align 8
  %278 = call i32 @memset(%struct.TYPE_12__* %277, i32 0, i32 40)
  %279 = load i32, i32* @VMXNET3_COALESCE_STATIC, align 4
  %280 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %281 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %280, i32 0, i32 3
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 1
  store i32 %279, i32* %283, align 8
  %284 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %285 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %284, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %274
  %289 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %290 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = inttoptr i64 %291 to i8*
  br label %295

293:                                              ; preds = %274
  %294 = load i8*, i8** @VMXNET3_COAL_STATIC_DEFAULT_DEPTH, align 8
  br label %295

295:                                              ; preds = %293, %288
  %296 = phi i8* [ %292, %288 ], [ %294, %293 ]
  %297 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %298 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %297, i32 0, i32 3
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %301, i32 0, i32 2
  store i8* %296, i8** %302, align 8
  %303 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %304 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %303, i32 0, i32 3
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %295
  %308 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %309 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %308, i32 0, i32 3
  %310 = load i64, i64* %309, align 8
  %311 = inttoptr i64 %310 to i8*
  br label %314

312:                                              ; preds = %295
  %313 = load i8*, i8** @VMXNET3_COAL_STATIC_DEFAULT_DEPTH, align 8
  br label %314

314:                                              ; preds = %312, %307
  %315 = phi i8* [ %311, %307 ], [ %313, %312 ]
  %316 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %317 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %316, i32 0, i32 3
  %318 = load %struct.TYPE_12__*, %struct.TYPE_12__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 1
  store i8* %315, i8** %321, align 8
  %322 = load i8*, i8** @VMXNET3_COAL_STATIC_DEFAULT_DEPTH, align 8
  %323 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %324 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %323, i32 0, i32 3
  %325 = load %struct.TYPE_12__*, %struct.TYPE_12__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 0
  store i8* %322, i8** %328, align 8
  br label %330

329:                                              ; preds = %241
  br label %330

330:                                              ; preds = %329, %314, %226, %186, %138
  %331 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %332 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %331, i32 0, i32 0
  store i32 0, i32* %332, align 8
  %333 = load %struct.net_device*, %struct.net_device** %4, align 8
  %334 = call i64 @netif_running(%struct.net_device* %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %363

336:                                              ; preds = %330
  %337 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %338 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %337, i32 0, i32 1
  %339 = load i64, i64* %9, align 8
  %340 = call i32 @spin_lock_irqsave(i32* %338, i64 %339)
  %341 = load %union.Vmxnet3_CmdInfo*, %union.Vmxnet3_CmdInfo** %8, align 8
  %342 = bitcast %union.Vmxnet3_CmdInfo* %341 to %struct.TYPE_11__*
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 0
  store i32 1, i32* %343, align 4
  %344 = call i32 @cpu_to_le32(i32 40)
  %345 = load %union.Vmxnet3_CmdInfo*, %union.Vmxnet3_CmdInfo** %8, align 8
  %346 = bitcast %union.Vmxnet3_CmdInfo* %345 to %struct.TYPE_11__*
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i32 0, i32 2
  store i32 %344, i32* %347, align 4
  %348 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %349 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 8
  %351 = call i32 @cpu_to_le64(i32 %350)
  %352 = load %union.Vmxnet3_CmdInfo*, %union.Vmxnet3_CmdInfo** %8, align 8
  %353 = bitcast %union.Vmxnet3_CmdInfo* %352 to %struct.TYPE_11__*
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 1
  store i32 %351, i32* %354, align 4
  %355 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %356 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %357 = load i32, i32* @VMXNET3_CMD_SET_COALESCE, align 4
  %358 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %355, i32 %356, i32 %357)
  %359 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %6, align 8
  %360 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %359, i32 0, i32 1
  %361 = load i64, i64* %9, align 8
  %362 = call i32 @spin_unlock_irqrestore(i32* %360, i64 %361)
  br label %363

363:                                              ; preds = %336, %330
  store i32 0, i32* %3, align 4
  br label %364

364:                                              ; preds = %363, %271, %256, %223, %183, %168, %115, %22
  %365 = load i32, i32* %3, align 4
  ret i32 %365
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @VMXNET3_VERSION_GE_3(%struct.vmxnet3_adapter*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @VMXNET3_COAL_RBC_RATE(i64) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
