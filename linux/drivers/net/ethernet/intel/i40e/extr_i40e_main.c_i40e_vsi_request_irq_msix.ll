; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_request_irq_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_request_irq_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, i32, i32, %struct.i40e_q_vector**, i32, %struct.i40e_pf* }
%struct.i40e_q_vector = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.i40e_pf = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s-%s-%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TxRx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"MSIX request_irq failed, error: %d\0A\00", align 1
@i40e_irq_affinity_notify = common dso_local global i32 0, align 4
@i40e_irq_affinity_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*, i8*)* @i40e_vsi_request_irq_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vsi_request_irq_msix(%struct.i40e_vsi* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_pf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.i40e_q_vector*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %17 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %20 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %19, i32 0, i32 5
  %21 = load %struct.i40e_pf*, %struct.i40e_pf** %20, align 8
  store %struct.i40e_pf* %21, %struct.i40e_pf** %7, align 8
  %22 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %23 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %139, %2
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %142

29:                                               ; preds = %25
  %30 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %31 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %30, i32 0, i32 3
  %32 = load %struct.i40e_q_vector**, %struct.i40e_q_vector*** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.i40e_q_vector*, %struct.i40e_q_vector** %32, i64 %34
  %36 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %35, align 8
  store %struct.i40e_q_vector* %36, %struct.i40e_q_vector** %15, align 8
  %37 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %38 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %37, i32 0, i32 0
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %13, align 4
  %47 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %15, align 8
  %48 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %29
  %53 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %15, align 8
  %54 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %15, align 8
  %60 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %9, align 4
  %65 = call i32 @snprintf(i32 %61, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %99

68:                                               ; preds = %52, %29
  %69 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %15, align 8
  %70 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %15, align 8
  %76 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %5, align 8
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  %81 = call i32 @snprintf(i32 %77, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %98

82:                                               ; preds = %68
  %83 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %15, align 8
  %84 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %15, align 8
  %90 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %5, align 8
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  %95 = call i32 @snprintf(i32 %91, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  br label %97

96:                                               ; preds = %82
  br label %139

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97, %74
  br label %99

99:                                               ; preds = %98, %58
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %102 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %15, align 8
  %105 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %15, align 8
  %108 = call i32 @request_irq(i32 %100, i32 %103, i32 0, i32 %106, %struct.i40e_q_vector* %107)
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %99
  %112 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %113 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %112, i32 0, i32 1
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @dev_info(i32* %115, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %116)
  br label %145

118:                                              ; preds = %99
  %119 = load i32, i32* @i40e_irq_affinity_notify, align 4
  %120 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %15, align 8
  %121 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* @i40e_irq_affinity_release, align 4
  %124 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %15, align 8
  %125 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %15, align 8
  %129 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %128, i32 0, i32 1
  %130 = call i32 @irq_set_affinity_notifier(i32 %127, %struct.TYPE_10__* %129)
  %131 = load %struct.i40e_q_vector*, %struct.i40e_q_vector** %15, align 8
  %132 = getelementptr inbounds %struct.i40e_q_vector, %struct.i40e_q_vector* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @cpumask_local_spread(i32 %133, i32 -1)
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %14, align 4
  %137 = call i32* @get_cpu_mask(i32 %136)
  %138 = call i32 @irq_set_affinity_hint(i32 %135, i32* %137)
  br label %139

139:                                              ; preds = %118, %96
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %25

142:                                              ; preds = %25
  %143 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %144 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %143, i32 0, i32 2
  store i32 1, i32* %144, align 8
  store i32 0, i32* %3, align 4
  br label %176

145:                                              ; preds = %111
  br label %146

146:                                              ; preds = %149, %145
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %174

149:                                              ; preds = %146
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %11, align 4
  %152 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %153 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %152, i32 0, i32 0
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @irq_set_affinity_notifier(i32 %162, %struct.TYPE_10__* null)
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @irq_set_affinity_hint(i32 %164, i32* null)
  %166 = load i32, i32* %13, align 4
  %167 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %168 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %167, i32 0, i32 3
  %169 = load %struct.i40e_q_vector**, %struct.i40e_q_vector*** %168, align 8
  %170 = load i32, i32* %11, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.i40e_q_vector*, %struct.i40e_q_vector** %169, i64 %171
  %173 = call i32 @free_irq(i32 %166, %struct.i40e_q_vector** %172)
  br label %146

174:                                              ; preds = %146
  %175 = load i32, i32* %12, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %174, %142
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.i40e_q_vector*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @irq_set_affinity_notifier(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @cpumask_local_spread(i32, i32) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32* @get_cpu_mask(i32) #1

declare dso_local i32 @free_irq(i32, %struct.i40e_q_vector**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
