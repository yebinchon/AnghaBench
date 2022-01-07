; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_vsi_req_irq_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_vsi_req_irq_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, i32, i32, %struct.ice_q_vector**, i32, i32, %struct.ice_pf* }
%struct.ice_q_vector = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.ice_pf = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"%s-%s-%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TxRx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"MSIX request_irq failed, error: %d\0A\00", align 1
@ice_irq_affinity_notify = common dso_local global i32 0, align 4
@ice_irq_affinity_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vsi*, i8*)* @ice_vsi_req_irq_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vsi_req_irq_msix(%struct.ice_vsi* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_vsi*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ice_pf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ice_q_vector*, align 8
  store %struct.ice_vsi* %0, %struct.ice_vsi** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %16 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %19 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %18, i32 0, i32 6
  %20 = load %struct.ice_pf*, %struct.ice_pf** %19, align 8
  store %struct.ice_pf* %20, %struct.ice_pf** %7, align 8
  %21 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %22 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %137, %2
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %140

28:                                               ; preds = %24
  %29 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %30 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %29, i32 0, i32 3
  %31 = load %struct.ice_q_vector**, %struct.ice_q_vector*** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.ice_q_vector*, %struct.ice_q_vector** %31, i64 %33
  %35 = load %struct.ice_q_vector*, %struct.ice_q_vector** %34, align 8
  store %struct.ice_q_vector* %35, %struct.ice_q_vector** %14, align 8
  %36 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  %37 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %13, align 4
  %46 = load %struct.ice_q_vector*, %struct.ice_q_vector** %14, align 8
  %47 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %28
  %52 = load %struct.ice_q_vector*, %struct.ice_q_vector** %14, align 8
  %53 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.ice_q_vector*, %struct.ice_q_vector** %14, align 8
  %59 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  %64 = call i32 @snprintf(i32 %60, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %98

67:                                               ; preds = %51, %28
  %68 = load %struct.ice_q_vector*, %struct.ice_q_vector** %14, align 8
  %69 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load %struct.ice_q_vector*, %struct.ice_q_vector** %14, align 8
  %75 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %5, align 8
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  %80 = call i32 @snprintf(i32 %76, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  br label %97

81:                                               ; preds = %67
  %82 = load %struct.ice_q_vector*, %struct.ice_q_vector** %14, align 8
  %83 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load %struct.ice_q_vector*, %struct.ice_q_vector** %14, align 8
  %89 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %10, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %10, align 4
  %94 = call i32 @snprintf(i32 %90, i32 3, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %92)
  br label %96

95:                                               ; preds = %81
  br label %137

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %96, %73
  br label %98

98:                                               ; preds = %97, %57
  %99 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  %100 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %105 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ice_q_vector*, %struct.ice_q_vector** %14, align 8
  %108 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ice_q_vector*, %struct.ice_q_vector** %14, align 8
  %111 = call i32 @devm_request_irq(i32* %102, i32 %103, i32 %106, i32 0, i32 %109, %struct.ice_q_vector* %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %98
  %115 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %116 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @netdev_err(i32 %117, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %118)
  br label %143

120:                                              ; preds = %98
  %121 = load i32, i32* @ice_irq_affinity_notify, align 4
  %122 = load %struct.ice_q_vector*, %struct.ice_q_vector** %14, align 8
  %123 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* @ice_irq_affinity_release, align 4
  %126 = load %struct.ice_q_vector*, %struct.ice_q_vector** %14, align 8
  %127 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.ice_q_vector*, %struct.ice_q_vector** %14, align 8
  %131 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %130, i32 0, i32 1
  %132 = call i32 @irq_set_affinity_notifier(i32 %129, %struct.TYPE_10__* %131)
  %133 = load i32, i32* %13, align 4
  %134 = load %struct.ice_q_vector*, %struct.ice_q_vector** %14, align 8
  %135 = getelementptr inbounds %struct.ice_q_vector, %struct.ice_q_vector* %134, i32 0, i32 0
  %136 = call i32 @irq_set_affinity_hint(i32 %133, i32* %135)
  br label %137

137:                                              ; preds = %120, %95
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %24

140:                                              ; preds = %24
  %141 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %142 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %141, i32 0, i32 2
  store i32 1, i32* %142, align 8
  store i32 0, i32* %3, align 4
  br label %178

143:                                              ; preds = %114
  br label %144

144:                                              ; preds = %147, %143
  %145 = load i32, i32* %11, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %176

147:                                              ; preds = %144
  %148 = load i32, i32* %11, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %11, align 4
  %150 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  %151 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %150, i32 0, i32 1
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* %13, align 4
  %161 = call i32 @irq_set_affinity_notifier(i32 %160, %struct.TYPE_10__* null)
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @irq_set_affinity_hint(i32 %162, i32* null)
  %164 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  %165 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %164, i32 0, i32 0
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 0
  %168 = load i32, i32* %13, align 4
  %169 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %170 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %169, i32 0, i32 3
  %171 = load %struct.ice_q_vector**, %struct.ice_q_vector*** %170, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.ice_q_vector*, %struct.ice_q_vector** %171, i64 %173
  %175 = call i32 @devm_free_irq(i32* %167, i32 %168, %struct.ice_q_vector** %174)
  br label %144

176:                                              ; preds = %144
  %177 = load i32, i32* %12, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %176, %140
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.ice_q_vector*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @irq_set_affinity_notifier(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @devm_free_irq(i32*, i32, %struct.ice_q_vector**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
