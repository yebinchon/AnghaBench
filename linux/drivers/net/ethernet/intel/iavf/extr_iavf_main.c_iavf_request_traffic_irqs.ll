; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_request_traffic_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_request_traffic_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, %struct.iavf_q_vector*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.iavf_q_vector = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@NONQ_VECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"iavf-%s-TxRx-%d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"iavf-%s-rx-%d\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"iavf-%s-tx-%d\00", align 1
@iavf_msix_clean_rings = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Request_irq failed, error: %d\0A\00", align 1
@iavf_irq_affinity_notify = common dso_local global i32 0, align 4
@iavf_irq_affinity_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iavf_adapter*, i8*)* @iavf_request_traffic_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_request_traffic_irqs(%struct.iavf_adapter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iavf_adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iavf_q_vector*, align 8
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %15 = call i32 @iavf_irq_disable(%struct.iavf_adapter* %14)
  %16 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @NONQ_VECS, align 4
  %20 = sub i32 %18, %19
  store i32 %20, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %132, %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %135

25:                                               ; preds = %21
  %26 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %26, i32 0, i32 1
  %28 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %28, i64 %30
  store %struct.iavf_q_vector* %31, %struct.iavf_q_vector** %13, align 8
  %32 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %33 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %32, i32 0, i32 2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @NONQ_VECS, align 4
  %37 = add i32 %35, %36
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  %42 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %13, align 8
  %43 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %25
  %48 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %13, align 8
  %49 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %13, align 8
  %55 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %8, align 4
  %60 = call i32 @snprintf(i32 %56, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %57, i32 %58)
  %61 = load i32, i32* %9, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %94

63:                                               ; preds = %47, %25
  %64 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %13, align 8
  %65 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %13, align 8
  %71 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %8, align 4
  %76 = call i32 @snprintf(i32 %72, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %73, i32 %74)
  br label %93

77:                                               ; preds = %63
  %78 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %13, align 8
  %79 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %13, align 8
  %85 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* %9, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %9, align 4
  %90 = call i32 @snprintf(i32 %86, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %87, i32 %88)
  br label %92

91:                                               ; preds = %77
  br label %132

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %69
  br label %94

94:                                               ; preds = %93, %53
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @iavf_msix_clean_rings, align 4
  %97 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %13, align 8
  %98 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %13, align 8
  %101 = call i32 @request_irq(i32 %95, i32 %96, i32 0, i32 %99, %struct.iavf_q_vector* %100)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %94
  %105 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %106 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %105, i32 0, i32 3
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @dev_info(i32* %108, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %109)
  br label %136

111:                                              ; preds = %94
  %112 = load i32, i32* @iavf_irq_affinity_notify, align 4
  %113 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %13, align 8
  %114 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  %116 = load i32, i32* @iavf_irq_affinity_release, align 4
  %117 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %13, align 8
  %118 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %13, align 8
  %122 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %121, i32 0, i32 1
  %123 = call i32 @irq_set_affinity_notifier(i32 %120, %struct.TYPE_10__* %122)
  %124 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %13, align 8
  %125 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @cpumask_local_spread(i32 %126, i32 -1)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32* @get_cpu_mask(i32 %129)
  %131 = call i32 @irq_set_affinity_hint(i32 %128, i32* %130)
  br label %132

132:                                              ; preds = %111, %91
  %133 = load i32, i32* %6, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %21

135:                                              ; preds = %21
  store i32 0, i32* %3, align 4
  br label %167

136:                                              ; preds = %104
  br label %137

137:                                              ; preds = %140, %136
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %165

140:                                              ; preds = %137
  %141 = load i32, i32* %6, align 4
  %142 = add i32 %141, -1
  store i32 %142, i32* %6, align 4
  %143 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %144 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %143, i32 0, i32 2
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @NONQ_VECS, align 4
  %148 = add i32 %146, %147
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @irq_set_affinity_notifier(i32 %153, %struct.TYPE_10__* null)
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @irq_set_affinity_hint(i32 %155, i32* null)
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %159 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %158, i32 0, i32 1
  %160 = load %struct.iavf_q_vector*, %struct.iavf_q_vector** %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.iavf_q_vector, %struct.iavf_q_vector* %160, i64 %162
  %164 = call i32 @free_irq(i32 %157, %struct.iavf_q_vector* %163)
  br label %137

165:                                              ; preds = %137
  %166 = load i32, i32* %11, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %165, %135
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @iavf_irq_disable(%struct.iavf_adapter*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.iavf_q_vector*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @irq_set_affinity_notifier(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @cpumask_local_spread(i32, i32) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32* @get_cpu_mask(i32) #1

declare dso_local i32 @free_irq(i32, %struct.iavf_q_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
