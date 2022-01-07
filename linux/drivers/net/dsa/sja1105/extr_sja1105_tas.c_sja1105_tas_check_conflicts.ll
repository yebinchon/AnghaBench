; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_tas.c_sja1105_tas_check_conflicts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_tas.c_sja1105_tas_check_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_4__*, %struct.sja1105_tas_data }
%struct.TYPE_4__ = type { i32 }
%struct.sja1105_tas_data = type { %struct.tc_taprio_qopt_offload** }
%struct.tc_taprio_qopt_offload = type { i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [48 x i8] c"GCL entry %d collides with entry %d of port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1105_private*, i32, %struct.tc_taprio_qopt_offload*)* @sja1105_tas_check_conflicts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1105_tas_check_conflicts(%struct.sja1105_private* %0, i32 %1, %struct.tc_taprio_qopt_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sja1105_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tc_taprio_qopt_offload*, align 8
  %8 = alloca %struct.sja1105_tas_data*, align 8
  %9 = alloca %struct.tc_taprio_qopt_offload*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.sja1105_private* %0, %struct.sja1105_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tc_taprio_qopt_offload* %2, %struct.tc_taprio_qopt_offload** %7, align 8
  %22 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %23 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %22, i32 0, i32 1
  store %struct.sja1105_tas_data* %23, %struct.sja1105_tas_data** %8, align 8
  %24 = load %struct.sja1105_tas_data*, %struct.sja1105_tas_data** %8, align 8
  %25 = getelementptr inbounds %struct.sja1105_tas_data, %struct.sja1105_tas_data* %24, i32 0, i32 0
  %26 = load %struct.tc_taprio_qopt_offload**, %struct.tc_taprio_qopt_offload*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %26, i64 %28
  %30 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %29, align 8
  store %struct.tc_taprio_qopt_offload* %30, %struct.tc_taprio_qopt_offload** %9, align 8
  %31 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %9, align 8
  %32 = icmp ne %struct.tc_taprio_qopt_offload* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %163

34:                                               ; preds = %3
  %35 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %9, align 8
  %36 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %7, align 8
  %39 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @max(i64 %37, i64 %40)
  store i64 %41, i64* %10, align 8
  %42 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %9, align 8
  %43 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %7, align 8
  %46 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @min(i64 %44, i64 %47)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @div_s64_rem(i64 %49, i64 %50, i64* %21)
  %52 = load i64, i64* %21, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %163

55:                                               ; preds = %34
  %56 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %9, align 8
  %57 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %9, align 8
  %60 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @div_s64_rem(i64 %58, i64 %61, i64* %21)
  %63 = load i64, i64* %21, align 8
  store i64 %63, i64* %14, align 8
  %64 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %7, align 8
  %65 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %7, align 8
  %68 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @div_s64_rem(i64 %66, i64 %69, i64* %21)
  %71 = load i64, i64* %21, align 8
  store i64 %71, i64* %15, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %15, align 8
  %75 = call i64 @max(i64 %73, i64 %74)
  %76 = add nsw i64 %72, %75
  store i64 %76, i64* %16, align 8
  store i32 0, i32* %19, align 4
  store i64 0, i64* %12, align 8
  br label %77

77:                                               ; preds = %149, %55
  %78 = load i32, i32* %19, align 4
  %79 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %9, align 8
  %80 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %162

83:                                               ; preds = %77
  store i32 0, i32* %20, align 4
  store i64 0, i64* %13, align 8
  br label %84

84:                                               ; preds = %135, %83
  %85 = load i32, i32* %20, align 4
  %86 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %7, align 8
  %87 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %148

90:                                               ; preds = %84
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* %12, align 8
  %93 = add nsw i64 %91, %92
  store i64 %93, i64* %17, align 8
  br label %94

94:                                               ; preds = %128, %90
  %95 = load i64, i64* %17, align 8
  %96 = load i64, i64* %16, align 8
  %97 = icmp sle i64 %95, %96
  br i1 %97, label %98, label %134

98:                                               ; preds = %94
  %99 = load i64, i64* %15, align 8
  %100 = load i64, i64* %13, align 8
  %101 = add nsw i64 %99, %100
  store i64 %101, i64* %18, align 8
  br label %102

102:                                              ; preds = %121, %98
  %103 = load i64, i64* %18, align 8
  %104 = load i64, i64* %16, align 8
  %105 = icmp sle i64 %103, %104
  br i1 %105, label %106, label %127

106:                                              ; preds = %102
  %107 = load i64, i64* %17, align 8
  %108 = load i64, i64* %18, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %106
  %111 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %112 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @dev_warn(i32 %115, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %117, i32 %118)
  store i32 1, i32* %4, align 4
  br label %163

120:                                              ; preds = %106
  br label %121

121:                                              ; preds = %120
  %122 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %7, align 8
  %123 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %18, align 8
  %126 = add nsw i64 %125, %124
  store i64 %126, i64* %18, align 8
  br label %102

127:                                              ; preds = %102
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %9, align 8
  %130 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %17, align 8
  %133 = add nsw i64 %132, %131
  store i64 %133, i64* %17, align 8
  br label %94

134:                                              ; preds = %94
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %7, align 8
  %137 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %136, i32 0, i32 3
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = load i32, i32* %20, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %13, align 8
  %145 = add nsw i64 %144, %143
  store i64 %145, i64* %13, align 8
  %146 = load i32, i32* %20, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %20, align 4
  br label %84

148:                                              ; preds = %84
  br label %149

149:                                              ; preds = %148
  %150 = load %struct.tc_taprio_qopt_offload*, %struct.tc_taprio_qopt_offload** %9, align 8
  %151 = getelementptr inbounds %struct.tc_taprio_qopt_offload, %struct.tc_taprio_qopt_offload* %150, i32 0, i32 3
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = load i32, i32* %19, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* %12, align 8
  %159 = add nsw i64 %158, %157
  store i64 %159, i64* %12, align 8
  %160 = load i32, i32* %19, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %19, align 4
  br label %77

162:                                              ; preds = %77
  store i32 0, i32* %4, align 4
  br label %163

163:                                              ; preds = %162, %110, %54, %33
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @div_s64_rem(i64, i64, i64*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
