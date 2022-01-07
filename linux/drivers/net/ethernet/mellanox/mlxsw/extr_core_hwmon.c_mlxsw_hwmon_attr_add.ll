; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_hwmon.c_mlxsw_hwmon_attr_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_hwmon.c_mlxsw_hwmon_attr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_hwmon = type { i32, %struct.TYPE_4__**, %struct.mlxsw_hwmon_attr* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mlxsw_hwmon_attr = type { i32, %struct.TYPE_3__, i32, %struct.mlxsw_hwmon* }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32, i32 }

@mlxsw_hwmon_temp_show = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"temp%u_input\00", align 1
@mlxsw_hwmon_temp_max_show = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"temp%u_highest\00", align 1
@mlxsw_hwmon_temp_rst_store = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"temp%u_reset_history\00", align 1
@mlxsw_hwmon_fan_rpm_show = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"fan%u_input\00", align 1
@mlxsw_hwmon_fan_fault_show = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"fan%u_fault\00", align 1
@mlxsw_hwmon_pwm_show = common dso_local global i32 0, align 4
@mlxsw_hwmon_pwm_store = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"pwm%u\00", align 1
@mlxsw_hwmon_module_temp_show = common dso_local global i32 0, align 4
@mlxsw_hwmon_module_temp_fault_show = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"temp%u_fault\00", align 1
@mlxsw_hwmon_module_temp_critical_show = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"temp%u_crit\00", align 1
@mlxsw_hwmon_module_temp_emergency_show = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"temp%u_emergency\00", align 1
@mlxsw_hwmon_module_temp_label_show = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"temp%u_label\00", align 1
@mlxsw_hwmon_gbox_temp_label_show = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_hwmon*, i32, i32, i32)* @mlxsw_hwmon_attr_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_hwmon_attr_add(%struct.mlxsw_hwmon* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlxsw_hwmon*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_hwmon_attr*, align 8
  %10 = alloca i32, align 4
  store %struct.mlxsw_hwmon* %0, %struct.mlxsw_hwmon** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %5, align 8
  %12 = getelementptr inbounds %struct.mlxsw_hwmon, %struct.mlxsw_hwmon* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %10, align 4
  %14 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_hwmon, %struct.mlxsw_hwmon* %14, i32 0, i32 2
  %16 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %15, align 8
  %17 = load i32, i32* %10, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %16, i64 %18
  store %struct.mlxsw_hwmon_attr* %19, %struct.mlxsw_hwmon_attr** %9, align 8
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %205 [
    i32 136, label %21
    i32 134, label %36
    i32 128, label %51
    i32 138, label %66
    i32 139, label %81
    i32 137, label %96
    i32 133, label %115
    i32 130, label %130
    i32 132, label %145
    i32 131, label %160
    i32 129, label %175
    i32 135, label %190
  ]

21:                                               ; preds = %4
  %22 = load i32, i32* @mlxsw_hwmon_temp_show, align 4
  %23 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %24 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %27 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 292, i32* %29, align 4
  %30 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %31 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %33, 1
  %35 = call i32 @snprintf(i32 %32, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %207

36:                                               ; preds = %4
  %37 = load i32, i32* @mlxsw_hwmon_temp_max_show, align 4
  %38 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %39 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %42 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 292, i32* %44, align 4
  %45 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %46 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add i32 %48, 1
  %50 = call i32 @snprintf(i32 %47, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %207

51:                                               ; preds = %4
  %52 = load i32, i32* @mlxsw_hwmon_temp_rst_store, align 4
  %53 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %54 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 4
  %56 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %57 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 128, i32* %59, align 4
  %60 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %61 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = add i32 %63, 1
  %65 = call i32 @snprintf(i32 %62, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %207

66:                                               ; preds = %4
  %67 = load i32, i32* @mlxsw_hwmon_fan_rpm_show, align 4
  %68 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %69 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  %71 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %72 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 292, i32* %74, align 4
  %75 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %76 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = add i32 %78, 1
  %80 = call i32 @snprintf(i32 %77, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  br label %207

81:                                               ; preds = %4
  %82 = load i32, i32* @mlxsw_hwmon_fan_fault_show, align 4
  %83 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %84 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %87 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 292, i32* %89, align 4
  %90 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %91 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = add i32 %93, 1
  %95 = call i32 @snprintf(i32 %92, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  br label %207

96:                                               ; preds = %4
  %97 = load i32, i32* @mlxsw_hwmon_pwm_show, align 4
  %98 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %99 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* @mlxsw_hwmon_pwm_store, align 4
  %102 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %103 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  store i32 %101, i32* %104, align 4
  %105 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %106 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i32 420, i32* %108, align 4
  %109 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %110 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %8, align 4
  %113 = add i32 %112, 1
  %114 = call i32 @snprintf(i32 %111, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  br label %207

115:                                              ; preds = %4
  %116 = load i32, i32* @mlxsw_hwmon_module_temp_show, align 4
  %117 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %118 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %121 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i32 292, i32* %123, align 4
  %124 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %125 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %8, align 4
  %128 = add i32 %127, 1
  %129 = call i32 @snprintf(i32 %126, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %128)
  br label %207

130:                                              ; preds = %4
  %131 = load i32, i32* @mlxsw_hwmon_module_temp_fault_show, align 4
  %132 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %133 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 4
  %135 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %136 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  store i32 292, i32* %138, align 4
  %139 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %140 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %8, align 4
  %143 = add i32 %142, 1
  %144 = call i32 @snprintf(i32 %141, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %143)
  br label %207

145:                                              ; preds = %4
  %146 = load i32, i32* @mlxsw_hwmon_module_temp_critical_show, align 4
  %147 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %148 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 4
  %150 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %151 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  store i32 292, i32* %153, align 4
  %154 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %155 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %8, align 4
  %158 = add i32 %157, 1
  %159 = call i32 @snprintf(i32 %156, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %158)
  br label %207

160:                                              ; preds = %4
  %161 = load i32, i32* @mlxsw_hwmon_module_temp_emergency_show, align 4
  %162 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %163 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 4
  %165 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %166 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  store i32 292, i32* %168, align 4
  %169 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %170 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %8, align 4
  %173 = add i32 %172, 1
  %174 = call i32 @snprintf(i32 %171, i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %173)
  br label %207

175:                                              ; preds = %4
  %176 = load i32, i32* @mlxsw_hwmon_module_temp_label_show, align 4
  %177 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %178 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 1
  store i32 %176, i32* %179, align 4
  %180 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %181 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  store i32 292, i32* %183, align 4
  %184 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %185 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* %8, align 4
  %188 = add i32 %187, 1
  %189 = call i32 @snprintf(i32 %186, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %188)
  br label %207

190:                                              ; preds = %4
  %191 = load i32, i32* @mlxsw_hwmon_gbox_temp_label_show, align 4
  %192 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %193 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 1
  store i32 %191, i32* %194, align 4
  %195 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %196 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  store i32 292, i32* %198, align 4
  %199 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %200 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %8, align 4
  %203 = add i32 %202, 1
  %204 = call i32 @snprintf(i32 %201, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 %203)
  br label %207

205:                                              ; preds = %4
  %206 = call i32 @WARN_ON(i32 1)
  br label %207

207:                                              ; preds = %205, %190, %175, %160, %145, %130, %115, %96, %81, %66, %51, %36, %21
  %208 = load i32, i32* %7, align 4
  %209 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %210 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %5, align 8
  %212 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %213 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %212, i32 0, i32 3
  store %struct.mlxsw_hwmon* %211, %struct.mlxsw_hwmon** %213, align 8
  %214 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %215 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %218 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 1
  store i32 %216, i32* %220, align 4
  %221 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %222 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 0
  %224 = call i32 @sysfs_attr_init(%struct.TYPE_4__* %223)
  %225 = load %struct.mlxsw_hwmon_attr*, %struct.mlxsw_hwmon_attr** %9, align 8
  %226 = getelementptr inbounds %struct.mlxsw_hwmon_attr, %struct.mlxsw_hwmon_attr* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %226, i32 0, i32 0
  %228 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %5, align 8
  %229 = getelementptr inbounds %struct.mlxsw_hwmon, %struct.mlxsw_hwmon* %228, i32 0, i32 1
  %230 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %229, align 8
  %231 = load i32, i32* %10, align 4
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %230, i64 %232
  store %struct.TYPE_4__* %227, %struct.TYPE_4__** %233, align 8
  %234 = load %struct.mlxsw_hwmon*, %struct.mlxsw_hwmon** %5, align 8
  %235 = getelementptr inbounds %struct.mlxsw_hwmon, %struct.mlxsw_hwmon* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = add i32 %236, 1
  store i32 %237, i32* %235, align 8
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
