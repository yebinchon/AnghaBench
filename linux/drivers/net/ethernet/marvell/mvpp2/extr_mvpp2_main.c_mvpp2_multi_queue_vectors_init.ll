; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_multi_queue_vectors_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_multi_queue_vectors_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, i32, i32, %struct.mvpp2_queue_vector*, i32, i32, %struct.mvpp2* }
%struct.mvpp2_queue_vector = type { i32, i32, i32, i32, i32, i32, i32, %struct.mvpp2_port* }
%struct.mvpp2 = type { i32 }
%struct.device_node = type { i32 }

@queue_mode = common dso_local global i32 0, align 4
@MVPP2_QUEUE_VECTOR_PRIVATE = common dso_local global i32 0, align 4
@MVPP2_F_DT_COMPAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"tx-cpu%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"hif%d\00", align 1
@MVPP2_QUEUE_VECTOR_SHARED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"rx-shared\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mvpp2_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2_port*, %struct.device_node*)* @mvpp2_multi_queue_vectors_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_multi_queue_vectors_init(%struct.mvpp2_port* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvpp2_port*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.mvpp2*, align 8
  %7 = alloca %struct.mvpp2_queue_vector*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [16 x i8], align 16
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  %11 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %12 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %11, i32 0, i32 6
  %13 = load %struct.mvpp2*, %struct.mvpp2** %12, align 8
  store %struct.mvpp2* %13, %struct.mvpp2** %6, align 8
  %14 = load i32, i32* @queue_mode, align 4
  switch i32 %14, label %28 [
    i32 128, label %15
    i32 129, label %22
  ]

15:                                               ; preds = %2
  %16 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %17 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  %20 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %21 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %24 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %27 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %2, %22, %15
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %144, %28
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %32 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %147

35:                                               ; preds = %29
  %36 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %37 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %36, i32 0, i32 3
  %38 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %38, i64 %40
  store %struct.mvpp2_queue_vector* %41, %struct.mvpp2_queue_vector** %7, align 8
  %42 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %43 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %7, align 8
  %44 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %43, i32 0, i32 7
  store %struct.mvpp2_port* %42, %struct.mvpp2_port** %44, align 8
  %45 = load i32, i32* @MVPP2_QUEUE_VECTOR_PRIVATE, align 4
  %46 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %7, align 8
  %47 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %7, align 8
  %50 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @BIT(i32 %51)
  %53 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %7, align 8
  %54 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %56 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MVPP2_F_DT_COMPAT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %35
  %62 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @snprintf(i8* %62, i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %69

65:                                               ; preds = %35
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @snprintf(i8* %66, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* @queue_mode, align 4
  %71 = icmp eq i32 %70, 129
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %7, align 8
  %75 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %7, align 8
  %77 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %76, i32 0, i32 2
  store i32 1, i32* %77, align 8
  br label %110

78:                                               ; preds = %69
  %79 = load i32, i32* @queue_mode, align 4
  %80 = icmp eq i32 %79, 128
  br i1 %80, label %81, label %109

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %84 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 1
  %87 = icmp eq i32 %82, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %81
  %89 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %7, align 8
  %90 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %89, i32 0, i32 1
  store i32 0, i32* %90, align 4
  %91 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %92 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %7, align 8
  %95 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @MVPP2_QUEUE_VECTOR_SHARED, align 4
  %97 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %7, align 8
  %98 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  %99 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %100 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MVPP2_F_DT_COMPAT, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %88
  %106 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %107 = call i32 @strncpy(i8* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 16)
  br label %108

108:                                              ; preds = %105, %88
  br label %109

109:                                              ; preds = %108, %81, %78
  br label %110

110:                                              ; preds = %109, %72
  %111 = load %struct.device_node*, %struct.device_node** %5, align 8
  %112 = icmp ne %struct.device_node* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load %struct.device_node*, %struct.device_node** %5, align 8
  %115 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %116 = call i32 @of_irq_get_byname(%struct.device_node* %114, i8* %115)
  %117 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %7, align 8
  %118 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  br label %127

119:                                              ; preds = %110
  %120 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %121 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @fwnode_irq_get(i32 %122, i32 %123)
  %125 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %7, align 8
  %126 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %119, %113
  %128 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %7, align 8
  %129 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = icmp sle i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %9, align 4
  br label %148

135:                                              ; preds = %127
  %136 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %137 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %7, align 8
  %140 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %139, i32 0, i32 4
  %141 = load i32, i32* @mvpp2_poll, align 4
  %142 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %143 = call i32 @netif_napi_add(i32 %138, i32* %140, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %135
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %29

147:                                              ; preds = %29
  store i32 0, i32* %3, align 4
  br label %170

148:                                              ; preds = %132
  store i32 0, i32* %8, align 4
  br label %149

149:                                              ; preds = %165, %148
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %152 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %168

155:                                              ; preds = %149
  %156 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %157 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %156, i32 0, i32 3
  %158 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %157, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %158, i64 %160
  %162 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @irq_dispose_mapping(i32 %163)
  br label %165

165:                                              ; preds = %155
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %149

168:                                              ; preds = %149
  %169 = load i32, i32* %9, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %168, %147
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @of_irq_get_byname(%struct.device_node*, i8*) #1

declare dso_local i32 @fwnode_irq_get(i32, i32) #1

declare dso_local i32 @netif_napi_add(i32, i32*, i32, i32) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
