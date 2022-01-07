; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_tas.c_sja1105_init_scheduling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_tas.c_sja1105_init_scheduling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_4__, %struct.sja1105_tas_data }
%struct.TYPE_4__ = type { %struct.sja1105_table* }
%struct.sja1105_table = type { i32, %struct.sja1105_schedule_params_entry*, %struct.TYPE_5__* }
%struct.sja1105_schedule_params_entry = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sja1105_tas_data = type { %struct.tc_taprio_qopt_offload** }
%struct.tc_taprio_qopt_offload = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sja1105_schedule_entry_points_entry = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.sja1105_schedule_entry_points_params_entry = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.sja1105_schedule_entry = type { i32, i32, i32, i32, i32*, i32, i32, i32, i32 }

@BLK_IDX_SCHEDULE = common dso_local global i64 0, align 8
@BLK_IDX_SCHEDULE_ENTRY_POINTS_PARAMS = common dso_local global i64 0, align 8
@BLK_IDX_SCHEDULE_PARAMS = common dso_local global i64 0, align 8
@BLK_IDX_SCHEDULE_ENTRY_POINTS = common dso_local global i64 0, align 8
@SJA1105_NUM_PORTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SJA1105_MAX_SCHEDULE_ENTRY_POINTS_PARAMS_COUNT = common dso_local global i32 0, align 4
@SJA1105_MAX_SCHEDULE_PARAMS_COUNT = common dso_local global i32 0, align 4
@SJA1105_TAS_CLKSRC_STANDALONE = common dso_local global i32 0, align 4
@SJA1105_GATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*)* @sja1105_init_scheduling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_init_scheduling(%struct.sja1105_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sja1105_private*, align 8
  %4 = alloca %struct.sja1105_schedule_entry_points_entry*, align 8
  %5 = alloca %struct.sja1105_schedule_entry_points_params_entry*, align 8
  %6 = alloca %struct.sja1105_schedule_params_entry*, align 8
  %7 = alloca %struct.sja1105_tas_data*, align 8
  %8 = alloca %struct.sja1105_schedule_entry*, align 8
  %9 = alloca %struct.sja1105_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.tc_taprio_qopt_offload*, align 8
  %20 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %3, align 8
  %21 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %22 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %21, i32 0, i32 1
  store %struct.sja1105_tas_data* %22, %struct.sja1105_tas_data** %7, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %23 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %24 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.sja1105_table*, %struct.sja1105_table** %25, align 8
  %27 = load i64, i64* @BLK_IDX_SCHEDULE, align 8
  %28 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %26, i64 %27
  store %struct.sja1105_table* %28, %struct.sja1105_table** %9, align 8
  %29 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %30 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %1
  %34 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %35 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %34, i32 0, i32 1
  %36 = load %struct.sja1105_schedule_params_entry*, %struct.sja1105_schedule_params_entry** %35, align 8
  %37 = call i32 @kfree(%struct.sja1105_schedule_params_entry* %36)
  %38 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %39 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  br label %40

40:                                               ; preds = %33, %1
  %41 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %42 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.sja1105_table*, %struct.sja1105_table** %43, align 8
  %45 = load i64, i64* @BLK_IDX_SCHEDULE_ENTRY_POINTS_PARAMS, align 8
  %46 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %44, i64 %45
  store %struct.sja1105_table* %46, %struct.sja1105_table** %9, align 8
  %47 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %48 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %40
  %52 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %53 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %52, i32 0, i32 1
  %54 = load %struct.sja1105_schedule_params_entry*, %struct.sja1105_schedule_params_entry** %53, align 8
  %55 = call i32 @kfree(%struct.sja1105_schedule_params_entry* %54)
  %56 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %57 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  br label %58

58:                                               ; preds = %51, %40
  %59 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %60 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.sja1105_table*, %struct.sja1105_table** %61, align 8
  %63 = load i64, i64* @BLK_IDX_SCHEDULE_PARAMS, align 8
  %64 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %62, i64 %63
  store %struct.sja1105_table* %64, %struct.sja1105_table** %9, align 8
  %65 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %66 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %58
  %70 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %71 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %70, i32 0, i32 1
  %72 = load %struct.sja1105_schedule_params_entry*, %struct.sja1105_schedule_params_entry** %71, align 8
  %73 = call i32 @kfree(%struct.sja1105_schedule_params_entry* %72)
  %74 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %75 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %69, %58
  %77 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %78 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.sja1105_table*, %struct.sja1105_table** %79, align 8
  %81 = load i64, i64* @BLK_IDX_SCHEDULE_ENTRY_POINTS, align 8
  %82 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %80, i64 %81
  store %struct.sja1105_table* %82, %struct.sja1105_table** %9, align 8
  %83 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %84 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %76
  %88 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %89 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %88, i32 0, i32 1
  %90 = load %struct.sja1105_schedule_params_entry*, %struct.sja1105_schedule_params_entry** %89, align 8
  %91 = call i32 @kfree(%struct.sja1105_schedule_params_entry* %90)
  %92 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %93 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %92, i32 0, i32 0
  store i32 0, i32* %93, align 8
  br label %94

94:                                               ; preds = %87, %76
  store i32 0, i32* %18, align 4
  br label %95

95:                                               ; preds = %123, %94
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %126

99:                                               ; preds = %95
  %100 = load %struct.sja1105_tas_data*, %struct.sja1105_tas_data** %7, align 8
  %101 = getelementptr inbounds %struct.sja1105_tas_data, %struct.sja1105_tas_data* %100, i32 0, i32 0
  %102 = load %struct.tc_taprio_qopt_offload**, %struct.tc_taprio_qopt_offload*** %101, align 8
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %102, i64 %104
  %106 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %105, align 8
  %107 = icmp ne %struct.tc_taprio_qopt_offload* %106, null
  br i1 %107, label %108, label %122

108:                                              ; preds = %99
  %109 = load %struct.sja1105_tas_data*, %struct.sja1105_tas_data** %7, align 8
  %110 = getelementptr inbounds %struct.sja1105_tas_data, %struct.sja1105_tas_data* %109, i32 0, i32 0
  %111 = load %struct.tc_taprio_qopt_offload**, %struct.tc_taprio_qopt_offload*** %110, align 8
  %112 = load i32, i32* %18, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %111, i64 %113
  %115 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %114, align 8
  %116 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %14, align 4
  br label %122

122:                                              ; preds = %108, %99
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %18, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %18, align 4
  br label %95

126:                                              ; preds = %95
  %127 = load i32, i32* %14, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %126
  store i32 0, i32* %2, align 4
  br label %384

130:                                              ; preds = %126
  %131 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %132 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load %struct.sja1105_table*, %struct.sja1105_table** %133, align 8
  %135 = load i64, i64* @BLK_IDX_SCHEDULE, align 8
  %136 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %134, i64 %135
  store %struct.sja1105_table* %136, %struct.sja1105_table** %9, align 8
  %137 = load i32, i32* %13, align 4
  %138 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %139 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %138, i32 0, i32 2
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @GFP_KERNEL, align 4
  %144 = call i8* @kcalloc(i32 %137, i32 %142, i32 %143)
  %145 = bitcast i8* %144 to %struct.sja1105_schedule_params_entry*
  %146 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %147 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %146, i32 0, i32 1
  store %struct.sja1105_schedule_params_entry* %145, %struct.sja1105_schedule_params_entry** %147, align 8
  %148 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %149 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %148, i32 0, i32 1
  %150 = load %struct.sja1105_schedule_params_entry*, %struct.sja1105_schedule_params_entry** %149, align 8
  %151 = icmp ne %struct.sja1105_schedule_params_entry* %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %130
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %384

155:                                              ; preds = %130
  %156 = load i32, i32* %13, align 4
  %157 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %158 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %160 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %159, i32 0, i32 1
  %161 = load %struct.sja1105_schedule_params_entry*, %struct.sja1105_schedule_params_entry** %160, align 8
  %162 = bitcast %struct.sja1105_schedule_params_entry* %161 to %struct.sja1105_schedule_entry*
  store %struct.sja1105_schedule_entry* %162, %struct.sja1105_schedule_entry** %8, align 8
  %163 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %164 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load %struct.sja1105_table*, %struct.sja1105_table** %165, align 8
  %167 = load i64, i64* @BLK_IDX_SCHEDULE_ENTRY_POINTS_PARAMS, align 8
  %168 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %166, i64 %167
  store %struct.sja1105_table* %168, %struct.sja1105_table** %9, align 8
  %169 = load i32, i32* @SJA1105_MAX_SCHEDULE_ENTRY_POINTS_PARAMS_COUNT, align 4
  %170 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %171 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %170, i32 0, i32 2
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @GFP_KERNEL, align 4
  %176 = call i8* @kcalloc(i32 %169, i32 %174, i32 %175)
  %177 = bitcast i8* %176 to %struct.sja1105_schedule_params_entry*
  %178 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %179 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %178, i32 0, i32 1
  store %struct.sja1105_schedule_params_entry* %177, %struct.sja1105_schedule_params_entry** %179, align 8
  %180 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %181 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %180, i32 0, i32 1
  %182 = load %struct.sja1105_schedule_params_entry*, %struct.sja1105_schedule_params_entry** %181, align 8
  %183 = icmp ne %struct.sja1105_schedule_params_entry* %182, null
  br i1 %183, label %187, label %184

184:                                              ; preds = %155
  %185 = load i32, i32* @ENOMEM, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %2, align 4
  br label %384

187:                                              ; preds = %155
  %188 = load i32, i32* @SJA1105_MAX_SCHEDULE_ENTRY_POINTS_PARAMS_COUNT, align 4
  %189 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %190 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %192 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %191, i32 0, i32 1
  %193 = load %struct.sja1105_schedule_params_entry*, %struct.sja1105_schedule_params_entry** %192, align 8
  %194 = bitcast %struct.sja1105_schedule_params_entry* %193 to %struct.sja1105_schedule_entry_points_params_entry*
  store %struct.sja1105_schedule_entry_points_params_entry* %194, %struct.sja1105_schedule_entry_points_params_entry** %5, align 8
  %195 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %196 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load %struct.sja1105_table*, %struct.sja1105_table** %197, align 8
  %199 = load i64, i64* @BLK_IDX_SCHEDULE_PARAMS, align 8
  %200 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %198, i64 %199
  store %struct.sja1105_table* %200, %struct.sja1105_table** %9, align 8
  %201 = load i32, i32* @SJA1105_MAX_SCHEDULE_PARAMS_COUNT, align 4
  %202 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %203 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %202, i32 0, i32 2
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @GFP_KERNEL, align 4
  %208 = call i8* @kcalloc(i32 %201, i32 %206, i32 %207)
  %209 = bitcast i8* %208 to %struct.sja1105_schedule_params_entry*
  %210 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %211 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %210, i32 0, i32 1
  store %struct.sja1105_schedule_params_entry* %209, %struct.sja1105_schedule_params_entry** %211, align 8
  %212 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %213 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %212, i32 0, i32 1
  %214 = load %struct.sja1105_schedule_params_entry*, %struct.sja1105_schedule_params_entry** %213, align 8
  %215 = icmp ne %struct.sja1105_schedule_params_entry* %214, null
  br i1 %215, label %219, label %216

216:                                              ; preds = %187
  %217 = load i32, i32* @ENOMEM, align 4
  %218 = sub nsw i32 0, %217
  store i32 %218, i32* %2, align 4
  br label %384

219:                                              ; preds = %187
  %220 = load i32, i32* @SJA1105_MAX_SCHEDULE_PARAMS_COUNT, align 4
  %221 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %222 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %224 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %223, i32 0, i32 1
  %225 = load %struct.sja1105_schedule_params_entry*, %struct.sja1105_schedule_params_entry** %224, align 8
  store %struct.sja1105_schedule_params_entry* %225, %struct.sja1105_schedule_params_entry** %6, align 8
  %226 = load %struct.sja1105_private*, %struct.sja1105_private** %3, align 8
  %227 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = load %struct.sja1105_table*, %struct.sja1105_table** %228, align 8
  %230 = load i64, i64* @BLK_IDX_SCHEDULE_ENTRY_POINTS, align 8
  %231 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %229, i64 %230
  store %struct.sja1105_table* %231, %struct.sja1105_table** %9, align 8
  %232 = load i32, i32* %14, align 4
  %233 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %234 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %233, i32 0, i32 2
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @GFP_KERNEL, align 4
  %239 = call i8* @kcalloc(i32 %232, i32 %237, i32 %238)
  %240 = bitcast i8* %239 to %struct.sja1105_schedule_params_entry*
  %241 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %242 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %241, i32 0, i32 1
  store %struct.sja1105_schedule_params_entry* %240, %struct.sja1105_schedule_params_entry** %242, align 8
  %243 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %244 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %243, i32 0, i32 1
  %245 = load %struct.sja1105_schedule_params_entry*, %struct.sja1105_schedule_params_entry** %244, align 8
  %246 = icmp ne %struct.sja1105_schedule_params_entry* %245, null
  br i1 %246, label %250, label %247

247:                                              ; preds = %219
  %248 = load i32, i32* @ENOMEM, align 4
  %249 = sub nsw i32 0, %248
  store i32 %249, i32* %2, align 4
  br label %384

250:                                              ; preds = %219
  %251 = load i32, i32* %14, align 4
  %252 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %253 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  %254 = load %struct.sja1105_table*, %struct.sja1105_table** %9, align 8
  %255 = getelementptr inbounds %struct.sja1105_table, %struct.sja1105_table* %254, i32 0, i32 1
  %256 = load %struct.sja1105_schedule_params_entry*, %struct.sja1105_schedule_params_entry** %255, align 8
  %257 = bitcast %struct.sja1105_schedule_params_entry* %256 to %struct.sja1105_schedule_entry_points_entry*
  store %struct.sja1105_schedule_entry_points_entry* %257, %struct.sja1105_schedule_entry_points_entry** %4, align 8
  %258 = load i32, i32* @SJA1105_TAS_CLKSRC_STANDALONE, align 4
  %259 = load %struct.sja1105_schedule_entry_points_params_entry*, %struct.sja1105_schedule_entry_points_params_entry** %5, align 8
  %260 = getelementptr inbounds %struct.sja1105_schedule_entry_points_params_entry, %struct.sja1105_schedule_entry_points_params_entry* %259, i32 0, i32 8
  store i32 %258, i32* %260, align 4
  %261 = load i32, i32* %14, align 4
  %262 = sub nsw i32 %261, 1
  %263 = load %struct.sja1105_schedule_entry_points_params_entry*, %struct.sja1105_schedule_entry_points_params_entry** %5, align 8
  %264 = getelementptr inbounds %struct.sja1105_schedule_entry_points_params_entry, %struct.sja1105_schedule_entry_points_params_entry* %263, i32 0, i32 0
  store i32 %262, i32* %264, align 8
  store i32 0, i32* %18, align 4
  br label %265

265:                                              ; preds = %380, %250
  %266 = load i32, i32* %18, align 4
  %267 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %383

269:                                              ; preds = %265
  %270 = load %struct.sja1105_tas_data*, %struct.sja1105_tas_data** %7, align 8
  %271 = getelementptr inbounds %struct.sja1105_tas_data, %struct.sja1105_tas_data* %270, i32 0, i32 0
  %272 = load %struct.tc_taprio_qopt_offload**, %struct.tc_taprio_qopt_offload*** %271, align 8
  %273 = load i32, i32* %18, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %272, i64 %274
  %276 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %275, align 8
  store %struct.tc_taprio_qopt_offload* %276, %struct.tc_taprio_qopt_offload** %19, align 8
  %277 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %19, align 8
  %278 = icmp ne %struct.tc_taprio_qopt_offload* %277, null
  br i1 %278, label %280, label %279

279:                                              ; preds = %269
  br label %380

280:                                              ; preds = %269
  %281 = load i32, i32* %17, align 4
  store i32 %281, i32* %10, align 4
  %282 = load i32, i32* %17, align 4
  %283 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %19, align 8
  %284 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = add nsw i32 %282, %285
  %287 = sub nsw i32 %286, 1
  store i32 %287, i32* %12, align 4
  store i32 1, i32* %11, align 4
  %288 = load i32, i32* %15, align 4
  %289 = load %struct.sja1105_schedule_entry_points_entry*, %struct.sja1105_schedule_entry_points_entry** %4, align 8
  %290 = load i32, i32* %15, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.sja1105_schedule_entry_points_entry, %struct.sja1105_schedule_entry_points_entry* %289, i64 %291
  %293 = getelementptr inbounds %struct.sja1105_schedule_entry_points_entry, %struct.sja1105_schedule_entry_points_entry* %292, i32 0, i32 1
  store i32 %288, i32* %293, align 4
  %294 = load i32, i32* %11, align 4
  %295 = load %struct.sja1105_schedule_entry_points_entry*, %struct.sja1105_schedule_entry_points_entry** %4, align 8
  %296 = load i32, i32* %15, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.sja1105_schedule_entry_points_entry, %struct.sja1105_schedule_entry_points_entry* %295, i64 %297
  %299 = getelementptr inbounds %struct.sja1105_schedule_entry_points_entry, %struct.sja1105_schedule_entry_points_entry* %298, i32 0, i32 2
  store i32 %294, i32* %299, align 8
  %300 = load i32, i32* %10, align 4
  %301 = load %struct.sja1105_schedule_entry_points_entry*, %struct.sja1105_schedule_entry_points_entry** %4, align 8
  %302 = load i32, i32* %15, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.sja1105_schedule_entry_points_entry, %struct.sja1105_schedule_entry_points_entry* %301, i64 %303
  %305 = getelementptr inbounds %struct.sja1105_schedule_entry_points_entry, %struct.sja1105_schedule_entry_points_entry* %304, i32 0, i32 3
  store i32 %300, i32* %305, align 4
  %306 = load i32, i32* %15, align 4
  store i32 %306, i32* %16, align 4
  br label %307

307:                                              ; preds = %318, %280
  %308 = load i32, i32* %16, align 4
  %309 = icmp slt i32 %308, 8
  br i1 %309, label %310, label %321

310:                                              ; preds = %307
  %311 = load i32, i32* %12, align 4
  %312 = load %struct.sja1105_schedule_params_entry*, %struct.sja1105_schedule_params_entry** %6, align 8
  %313 = getelementptr inbounds %struct.sja1105_schedule_params_entry, %struct.sja1105_schedule_params_entry* %312, i32 0, i32 4
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %16, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  store i32 %311, i32* %317, align 4
  br label %318

318:                                              ; preds = %310
  %319 = load i32, i32* %16, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %16, align 4
  br label %307

321:                                              ; preds = %307
  store i32 0, i32* %16, align 4
  br label %322

322:                                              ; preds = %372, %321
  %323 = load i32, i32* %16, align 4
  %324 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %19, align 8
  %325 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = icmp slt i32 %323, %326
  br i1 %327, label %328, label %377

328:                                              ; preds = %322
  %329 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %19, align 8
  %330 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %329, i32 0, i32 1
  %331 = load %struct.TYPE_6__*, %struct.TYPE_6__** %330, align 8
  %332 = load i32, i32* %16, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  store i32 %336, i32* %20, align 4
  %337 = load i32, i32* %20, align 4
  %338 = call i32 @ns_to_sja1105_delta(i32 %337)
  %339 = load %struct.sja1105_schedule_entry*, %struct.sja1105_schedule_entry** %8, align 8
  %340 = load i32, i32* %17, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.sja1105_schedule_entry, %struct.sja1105_schedule_entry* %339, i64 %341
  %343 = getelementptr inbounds %struct.sja1105_schedule_entry, %struct.sja1105_schedule_entry* %342, i32 0, i32 2
  store i32 %338, i32* %343, align 8
  %344 = load i32, i32* %18, align 4
  %345 = call i32 @BIT(i32 %344)
  %346 = load %struct.sja1105_schedule_entry*, %struct.sja1105_schedule_entry** %8, align 8
  %347 = load i32, i32* %17, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.sja1105_schedule_entry, %struct.sja1105_schedule_entry* %346, i64 %348
  %350 = getelementptr inbounds %struct.sja1105_schedule_entry, %struct.sja1105_schedule_entry* %349, i32 0, i32 7
  store i32 %345, i32* %350, align 8
  %351 = load %struct.sja1105_schedule_entry*, %struct.sja1105_schedule_entry** %8, align 8
  %352 = load i32, i32* %17, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.sja1105_schedule_entry, %struct.sja1105_schedule_entry* %351, i64 %353
  %355 = getelementptr inbounds %struct.sja1105_schedule_entry, %struct.sja1105_schedule_entry* %354, i32 0, i32 5
  store i32 1, i32* %355, align 8
  %356 = load i32, i32* @SJA1105_GATE_MASK, align 4
  %357 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %19, align 8
  %358 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %357, i32 0, i32 1
  %359 = load %struct.TYPE_6__*, %struct.TYPE_6__** %358, align 8
  %360 = load i32, i32* %16, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = xor i32 %364, -1
  %366 = and i32 %356, %365
  %367 = load %struct.sja1105_schedule_entry*, %struct.sja1105_schedule_entry** %8, align 8
  %368 = load i32, i32* %17, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.sja1105_schedule_entry, %struct.sja1105_schedule_entry* %367, i64 %369
  %371 = getelementptr inbounds %struct.sja1105_schedule_entry, %struct.sja1105_schedule_entry* %370, i32 0, i32 6
  store i32 %366, i32* %371, align 4
  br label %372

372:                                              ; preds = %328
  %373 = load i32, i32* %16, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %16, align 4
  %375 = load i32, i32* %17, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %17, align 4
  br label %322

377:                                              ; preds = %322
  %378 = load i32, i32* %15, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %15, align 4
  br label %380

380:                                              ; preds = %377, %279
  %381 = load i32, i32* %18, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %18, align 4
  br label %265

383:                                              ; preds = %265
  store i32 0, i32* %2, align 4
  br label %384

384:                                              ; preds = %383, %247, %216, %184, %152, %129
  %385 = load i32, i32* %2, align 4
  ret i32 %385
}

declare dso_local i32 @kfree(%struct.sja1105_schedule_params_entry*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ns_to_sja1105_delta(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
