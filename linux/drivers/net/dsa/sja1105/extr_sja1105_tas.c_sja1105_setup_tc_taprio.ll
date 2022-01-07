; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_tas.c_sja1105_setup_tc_taprio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_tas.c_sja1105_setup_tc_taprio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.sja1105_private* }
%struct.sja1105_private = type { %struct.TYPE_4__*, %struct.sja1105_tas_data }
%struct.TYPE_4__ = type { i32 }
%struct.sja1105_tas_data = type { i32** }
%struct.tc_taprio_qopt_offload = type { i32, i64, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"A base time of zero is not hardware-allowed\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@SJA1105_TAS_MAX_DELTA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Interval %llu too %s for GCL entry %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"long\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"short\00", align 1
@SJA1105_NUM_PORTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sja1105_setup_tc_taprio(%struct.dsa_switch* %0, i32 %1, %struct.tc_taprio_qopt_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tc_taprio_qopt_offload*, align 8
  %8 = alloca %struct.sja1105_private*, align 8
  %9 = alloca %struct.sja1105_tas_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tc_taprio_qopt_offload* %2, %struct.tc_taprio_qopt_offload** %7, align 8
  %17 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %18 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %17, i32 0, i32 1
  %19 = load %struct.sja1105_private*, %struct.sja1105_private** %18, align 8
  store %struct.sja1105_private* %19, %struct.sja1105_private** %8, align 8
  %20 = load %struct.sja1105_private*, %struct.sja1105_private** %8, align 8
  %21 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %20, i32 0, i32 1
  store %struct.sja1105_tas_data* %21, %struct.sja1105_tas_data** %9, align 8
  %22 = load %struct.sja1105_tas_data*, %struct.sja1105_tas_data** %9, align 8
  %23 = getelementptr inbounds %struct.sja1105_tas_data, %struct.sja1105_tas_data* %22, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %7, align 8
  %34 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %3
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %180

40:                                               ; preds = %3
  %41 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %7, align 8
  %42 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %69, label %45

45:                                               ; preds = %40
  %46 = load %struct.sja1105_tas_data*, %struct.sja1105_tas_data** %9, align 8
  %47 = getelementptr inbounds %struct.sja1105_tas_data, %struct.sja1105_tas_data* %46, i32 0, i32 0
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @taprio_offload_free(i32* %52)
  %54 = load %struct.sja1105_tas_data*, %struct.sja1105_tas_data** %9, align 8
  %55 = getelementptr inbounds %struct.sja1105_tas_data, %struct.sja1105_tas_data* %54, i32 0, i32 0
  %56 = load i32**, i32*** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  store i32* null, i32** %59, align 8
  %60 = load %struct.sja1105_private*, %struct.sja1105_private** %8, align 8
  %61 = call i32 @sja1105_init_scheduling(%struct.sja1105_private* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %45
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %180

66:                                               ; preds = %45
  %67 = load %struct.sja1105_private*, %struct.sja1105_private** %8, align 8
  %68 = call i32 @sja1105_static_config_reload(%struct.sja1105_private* %67)
  store i32 %68, i32* %4, align 4
  br label %180

69:                                               ; preds = %40
  %70 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %7, align 8
  %71 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @ENOTSUPP, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %180

77:                                               ; preds = %69
  %78 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %7, align 8
  %79 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @ns_to_sja1105_delta(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %77
  %84 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %85 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i32, i8*, ...) @dev_err(i32 %86, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* @ERANGE, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %180

90:                                               ; preds = %77
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %136, %90
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %7, align 8
  %94 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %139

97:                                               ; preds = %91
  %98 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %7, align 8
  %99 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %98, i32 0, i32 3
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %13, align 8
  %106 = load i64, i64* %13, align 8
  %107 = call i64 @ns_to_sja1105_delta(i64 %106)
  store i64 %107, i64* %14, align 8
  %108 = load i64, i64* %14, align 8
  %109 = load i64, i64* @SJA1105_TAS_MAX_DELTA, align 8
  %110 = icmp sge i64 %108, %109
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %15, align 4
  %112 = load i64, i64* %14, align 8
  %113 = icmp eq i64 %112, 0
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %15, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %97
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %117, %97
  %121 = load %struct.sja1105_private*, %struct.sja1105_private** %8, align 8
  %122 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* %13, align 8
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %131 = load i32, i32* %12, align 4
  %132 = call i32 (i32, i8*, ...) @dev_err(i32 %125, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %126, i8* %130, i32 %131)
  %133 = load i32, i32* @ERANGE, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %180

135:                                              ; preds = %117
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  br label %91

139:                                              ; preds = %91
  store i32 0, i32* %10, align 4
  br label %140

140:                                              ; preds = %159, %139
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @SJA1105_NUM_PORTS, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %162

144:                                              ; preds = %140
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %6, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %159

149:                                              ; preds = %144
  %150 = load %struct.sja1105_private*, %struct.sja1105_private** %8, align 8
  %151 = load i32, i32* %10, align 4
  %152 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %7, align 8
  %153 = call i64 @sja1105_tas_check_conflicts(%struct.sja1105_private* %150, i32 %151, %struct.tc_taprio_qopt_offload* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load i32, i32* @ERANGE, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %4, align 4
  br label %180

158:                                              ; preds = %149
  br label %159

159:                                              ; preds = %158, %148
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %140

162:                                              ; preds = %140
  %163 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %7, align 8
  %164 = call i32* @taprio_offload_get(%struct.tc_taprio_qopt_offload* %163)
  %165 = load %struct.sja1105_tas_data*, %struct.sja1105_tas_data** %9, align 8
  %166 = getelementptr inbounds %struct.sja1105_tas_data, %struct.sja1105_tas_data* %165, i32 0, i32 0
  %167 = load i32**, i32*** %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32*, i32** %167, i64 %169
  store i32* %164, i32** %170, align 8
  %171 = load %struct.sja1105_private*, %struct.sja1105_private** %8, align 8
  %172 = call i32 @sja1105_init_scheduling(%struct.sja1105_private* %171)
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* %11, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %162
  %176 = load i32, i32* %11, align 4
  store i32 %176, i32* %4, align 4
  br label %180

177:                                              ; preds = %162
  %178 = load %struct.sja1105_private*, %struct.sja1105_private** %8, align 8
  %179 = call i32 @sja1105_static_config_reload(%struct.sja1105_private* %178)
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %177, %175, %155, %120, %83, %74, %66, %64, %37
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @taprio_offload_free(i32*) #1

declare dso_local i32 @sja1105_init_scheduling(%struct.sja1105_private*) #1

declare dso_local i32 @sja1105_static_config_reload(%struct.sja1105_private*) #1

declare dso_local i64 @ns_to_sja1105_delta(i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @sja1105_tas_check_conflicts(%struct.sja1105_private*, i32, %struct.tc_taprio_qopt_offload*) #1

declare dso_local i32* @taprio_offload_get(%struct.tc_taprio_qopt_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
