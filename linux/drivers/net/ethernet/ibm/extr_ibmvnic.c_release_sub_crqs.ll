; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_release_sub_crqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_release_sub_crqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, i32, %struct.TYPE_4__**, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"Releasing tx_scrq[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Releasing rx_scrq[%d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvnic_adapter*, i32)* @release_sub_crqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_sub_crqs(%struct.ibmvnic_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %6, i32 0, i32 4
  %8 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %7, align 8
  %9 = icmp ne %struct.TYPE_4__** %8, null
  br i1 %9, label %10, label %102

10:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %90, %10
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %93

17:                                               ; preds = %11
  %18 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %18, i32 0, i32 4
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %20, i64 %22
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %90

27:                                               ; preds = %17
  %28 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @netdev_dbg(i32 %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %33, i32 0, i32 4
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %35, i64 %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %79

43:                                               ; preds = %27
  %44 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %44, i32 0, i32 4
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %46, i64 %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %53, i32 0, i32 4
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i64 %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = call i32 @free_irq(i64 %52, %struct.TYPE_4__* %59)
  %61 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %61, i32 0, i32 4
  %63 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %63, i64 %65
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @irq_dispose_mapping(i64 %69)
  %71 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %71, i32 0, i32 4
  %73 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %73, i64 %75
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %43, %27
  %80 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %81 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %81, i32 0, i32 4
  %83 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %83, i64 %85
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @release_sub_crq_queue(%struct.ibmvnic_adapter* %80, %struct.TYPE_4__* %87, i32 %88)
  br label %90

90:                                               ; preds = %79, %26
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %11

93:                                               ; preds = %11
  %94 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %94, i32 0, i32 4
  %96 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %95, align 8
  %97 = call i32 @kfree(%struct.TYPE_4__** %96)
  %98 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %98, i32 0, i32 4
  store %struct.TYPE_4__** null, %struct.TYPE_4__*** %99, align 8
  %100 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %100, i32 0, i32 0
  store i32 0, i32* %101, align 8
  br label %102

102:                                              ; preds = %93, %2
  %103 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %104 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %103, i32 0, i32 2
  %105 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %104, align 8
  %106 = icmp ne %struct.TYPE_4__** %105, null
  br i1 %106, label %107, label %199

107:                                              ; preds = %102
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %187, %107
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %111 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %190

114:                                              ; preds = %108
  %115 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %116 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %115, i32 0, i32 2
  %117 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %116, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %117, i64 %119
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = icmp ne %struct.TYPE_4__* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %114
  br label %187

124:                                              ; preds = %114
  %125 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %126 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @netdev_dbg(i32 %127, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  %130 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %131 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %130, i32 0, i32 2
  %132 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %132, i64 %134
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %176

140:                                              ; preds = %124
  %141 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %142 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %141, i32 0, i32 2
  %143 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %143, i64 %145
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %151 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %150, i32 0, i32 2
  %152 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %152, i64 %154
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = call i32 @free_irq(i64 %149, %struct.TYPE_4__* %156)
  %158 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %159 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %158, i32 0, i32 2
  %160 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %159, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %160, i64 %162
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @irq_dispose_mapping(i64 %166)
  %168 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %169 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %168, i32 0, i32 2
  %170 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %169, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %170, i64 %172
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  store i64 0, i64* %175, align 8
  br label %176

176:                                              ; preds = %140, %124
  %177 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %178 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %179 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %178, i32 0, i32 2
  %180 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %180, i64 %182
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = load i32, i32* %4, align 4
  %186 = call i32 @release_sub_crq_queue(%struct.ibmvnic_adapter* %177, %struct.TYPE_4__* %184, i32 %185)
  br label %187

187:                                              ; preds = %176, %123
  %188 = load i32, i32* %5, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %5, align 4
  br label %108

190:                                              ; preds = %108
  %191 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %192 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %191, i32 0, i32 2
  %193 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %192, align 8
  %194 = call i32 @kfree(%struct.TYPE_4__** %193)
  %195 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %196 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %195, i32 0, i32 2
  store %struct.TYPE_4__** null, %struct.TYPE_4__*** %196, align 8
  %197 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %198 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %197, i32 0, i32 1
  store i32 0, i32* %198, align 4
  br label %199

199:                                              ; preds = %190, %102
  ret void
}

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @free_irq(i64, %struct.TYPE_4__*) #1

declare dso_local i32 @irq_dispose_mapping(i64) #1

declare dso_local i32 @release_sub_crq_queue(%struct.ibmvnic_adapter*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_4__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
