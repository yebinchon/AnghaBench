; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.mlxsw_sp = type { %struct.TYPE_4__*, %struct.mlxsw_sp_port** }
%struct.TYPE_4__ = type { i32 }
%struct.mlxsw_sp_port = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@LOCAL_PORTS_IN_1X = common dso_local global i32 0, align 4
@LOCAL_PORTS_IN_2X = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Port number \22%d\22 does not exist\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Port number does not exist\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Port can only be split into 2 or 4 ports\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Port can only be split into 2 or 4 ports\00", align 1
@MLXSW_PORT_MODULE_MAX_WIDTH = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"Port cannot be split further\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Port cannot be split further\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Invalid split configuration\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Invalid split configuration\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Failed to create split ports\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_core*, i64, i32, %struct.netlink_ext_ack*)* @mlxsw_sp_port_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_split(%struct.mlxsw_core* %0, i64 %1, i32 %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_core*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.mlxsw_sp*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.mlxsw_sp_port*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mlxsw_core* %0, %struct.mlxsw_core** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %20 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %21 = call %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core* %20)
  store %struct.mlxsw_sp* %21, %struct.mlxsw_sp** %10, align 8
  %22 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %23 = load i32, i32* @LOCAL_PORTS_IN_1X, align 4
  %24 = call i32 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %28 = load i32, i32* @LOCAL_PORTS_IN_2X, align 4
  %29 = call i32 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26, %4
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %204

34:                                               ; preds = %26
  %35 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %36 = load i32, i32* @LOCAL_PORTS_IN_1X, align 4
  %37 = call i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %35, i32 %36)
  store i64 %37, i64* %11, align 8
  %38 = load %struct.mlxsw_core*, %struct.mlxsw_core** %6, align 8
  %39 = load i32, i32* @LOCAL_PORTS_IN_2X, align 4
  %40 = call i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core* %38, i32 %39)
  store i64 %40, i64* %12, align 8
  %41 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %41, i32 0, i32 1
  %43 = load %struct.mlxsw_sp_port**, %struct.mlxsw_sp_port*** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %43, i64 %44
  %46 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %45, align 8
  store %struct.mlxsw_sp_port* %46, %struct.mlxsw_sp_port** %14, align 8
  %47 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %14, align 8
  %48 = icmp ne %struct.mlxsw_sp_port* %47, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %34
  %50 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %51 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %7, align 8
  %56 = call i32 (i32, i8*, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %55)
  %57 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %58 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %204

61:                                               ; preds = %34
  %62 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %14, align 8
  %63 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %15, align 8
  %66 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %14, align 8
  %67 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %16, align 8
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 2
  br i1 %71, label %72, label %84

72:                                               ; preds = %61
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 4
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %14, align 8
  %77 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @netdev_err(i32 %78, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %81 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %80, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %204

84:                                               ; preds = %72, %61
  %85 = load i64, i64* %16, align 8
  %86 = load i64, i64* @MLXSW_PORT_MODULE_MAX_WIDTH, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %14, align 8
  %90 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @netdev_err(i32 %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %93 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %94 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %204

97:                                               ; preds = %84
  %98 = load i32, i32* %8, align 4
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %122

100:                                              ; preds = %97
  %101 = load i64, i64* %12, align 8
  store i64 %101, i64* %13, align 8
  %102 = load i64, i64* %7, align 8
  store i64 %102, i64* %17, align 8
  %103 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %104 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %103, i32 0, i32 1
  %105 = load %struct.mlxsw_sp_port**, %struct.mlxsw_sp_port*** %104, align 8
  %106 = load i64, i64* %17, align 8
  %107 = load i64, i64* %12, align 8
  %108 = add i64 %106, %107
  %109 = getelementptr inbounds %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %105, i64 %108
  %110 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %109, align 8
  %111 = icmp ne %struct.mlxsw_sp_port* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %100
  %113 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %14, align 8
  %114 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @netdev_err(i32 %115, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %117 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %118 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %117, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %5, align 4
  br label %204

121:                                              ; preds = %100
  br label %153

122:                                              ; preds = %97
  %123 = load i64, i64* %11, align 8
  store i64 %123, i64* %13, align 8
  %124 = load i64, i64* %7, align 8
  %125 = call i64 @mlxsw_sp_cluster_base_port_get(i64 %124)
  store i64 %125, i64* %17, align 8
  %126 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %127 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %126, i32 0, i32 1
  %128 = load %struct.mlxsw_sp_port**, %struct.mlxsw_sp_port*** %127, align 8
  %129 = load i64, i64* %17, align 8
  %130 = add i64 %129, 1
  %131 = getelementptr inbounds %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %128, i64 %130
  %132 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %131, align 8
  %133 = icmp ne %struct.mlxsw_sp_port* %132, null
  br i1 %133, label %143, label %134

134:                                              ; preds = %122
  %135 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %136 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %135, i32 0, i32 1
  %137 = load %struct.mlxsw_sp_port**, %struct.mlxsw_sp_port*** %136, align 8
  %138 = load i64, i64* %17, align 8
  %139 = add i64 %138, 3
  %140 = getelementptr inbounds %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %137, i64 %139
  %141 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %140, align 8
  %142 = icmp ne %struct.mlxsw_sp_port* %141, null
  br i1 %142, label %143, label %152

143:                                              ; preds = %134, %122
  %144 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %14, align 8
  %145 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @netdev_err(i32 %146, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %148 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %149 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %148, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %5, align 4
  br label %204

152:                                              ; preds = %134
  br label %153

153:                                              ; preds = %152, %121
  store i32 0, i32* %18, align 4
  br label %154

154:                                              ; preds = %178, %153
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* %8, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %158, label %181

158:                                              ; preds = %154
  %159 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %160 = load i64, i64* %17, align 8
  %161 = load i32, i32* %18, align 4
  %162 = sext i32 %161 to i64
  %163 = load i64, i64* %13, align 8
  %164 = mul i64 %162, %163
  %165 = add i64 %160, %164
  %166 = call i64 @mlxsw_sp_port_created(%struct.mlxsw_sp* %159, i64 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %158
  %169 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %170 = load i64, i64* %17, align 8
  %171 = load i32, i32* %18, align 4
  %172 = sext i32 %171 to i64
  %173 = load i64, i64* %13, align 8
  %174 = mul i64 %172, %173
  %175 = add i64 %170, %174
  %176 = call i32 @mlxsw_sp_port_remove(%struct.mlxsw_sp* %169, i64 %175)
  br label %177

177:                                              ; preds = %168, %158
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %18, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %18, align 4
  br label %154

181:                                              ; preds = %154
  %182 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %183 = load i64, i64* %17, align 8
  %184 = load i64, i64* %15, align 8
  %185 = load i32, i32* %8, align 4
  %186 = load i64, i64* %13, align 8
  %187 = call i32 @mlxsw_sp_port_split_create(%struct.mlxsw_sp* %182, i64 %183, i64 %184, i32 %185, i64 %186)
  store i32 %187, i32* %19, align 4
  %188 = load i32, i32* %19, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %197

190:                                              ; preds = %181
  %191 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %192 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %191, i32 0, i32 0
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (i32, i8*, ...) @dev_err(i32 %195, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  br label %198

197:                                              ; preds = %181
  store i32 0, i32* %5, align 4
  br label %204

198:                                              ; preds = %190
  %199 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %200 = load i64, i64* %17, align 8
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @mlxsw_sp_port_unsplit_create(%struct.mlxsw_sp* %199, i64 %200, i32 %201)
  %203 = load i32, i32* %19, align 4
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %198, %197, %143, %112, %88, %75, %49, %31
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local %struct.mlxsw_sp* @mlxsw_core_driver_priv(%struct.mlxsw_core*) #1

declare dso_local i32 @MLXSW_CORE_RES_VALID(%struct.mlxsw_core*, i32) #1

declare dso_local i64 @MLXSW_CORE_RES_GET(%struct.mlxsw_core*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i64 @mlxsw_sp_cluster_base_port_get(i64) #1

declare dso_local i64 @mlxsw_sp_port_created(%struct.mlxsw_sp*, i64) #1

declare dso_local i32 @mlxsw_sp_port_remove(%struct.mlxsw_sp*, i64) #1

declare dso_local i32 @mlxsw_sp_port_split_create(%struct.mlxsw_sp*, i64, i64, i32, i64) #1

declare dso_local i32 @mlxsw_sp_port_unsplit_create(%struct.mlxsw_sp*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
