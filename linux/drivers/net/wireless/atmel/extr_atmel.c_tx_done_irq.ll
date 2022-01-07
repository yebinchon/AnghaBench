; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_tx_done_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_atmel.c_tx_done_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_private = type { i32, i64, %struct.TYPE_6__*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64, i64 }

@TX_DESC_FLAGS_OFFSET = common dso_local global i32 0, align 4
@TX_DONE = common dso_local global i64 0, align 8
@TX_DESC_STATUS_OFFSET = common dso_local global i32 0, align 4
@TX_DESC_SIZE_OFFSET = common dso_local global i32 0, align 4
@TX_DESC_PACKET_TYPE_OFFSET = common dso_local global i32 0, align 4
@TX_PACKET_TYPE_DATA = common dso_local global i64 0, align 8
@TX_STATUS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_private*)* @tx_done_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_done_irq(%struct.atmel_private* %0) #0 {
  %2 = alloca %struct.atmel_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.atmel_private* %0, %struct.atmel_private** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %143, %1
  %8 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %9 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %10 = load i32, i32* @TX_DESC_FLAGS_OFFSET, align 4
  %11 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %12 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @atmel_tx(%struct.atmel_private* %9, i32 %10, i32 %13)
  %15 = call i64 @atmel_rmem8(%struct.atmel_private* %8, i32 %14)
  %16 = load i64, i64* @TX_DONE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %7
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %21 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %19, %23
  br label %25

25:                                               ; preds = %18, %7
  %26 = phi i1 [ false, %7 ], [ %24, %18 ]
  br i1 %26, label %27, label %146

27:                                               ; preds = %25
  %28 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %29 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %30 = load i32, i32* @TX_DESC_STATUS_OFFSET, align 4
  %31 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %32 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @atmel_tx(%struct.atmel_private* %29, i32 %30, i32 %33)
  %35 = call i64 @atmel_rmem8(%struct.atmel_private* %28, i32 %34)
  store i64 %35, i64* %4, align 8
  %36 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %37 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %38 = load i32, i32* @TX_DESC_SIZE_OFFSET, align 4
  %39 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %40 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @atmel_tx(%struct.atmel_private* %37, i32 %38, i32 %41)
  %43 = call i64 @atmel_rmem16(%struct.atmel_private* %36, i32 %42)
  store i64 %43, i64* %5, align 8
  %44 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %45 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %46 = load i32, i32* @TX_DESC_PACKET_TYPE_OFFSET, align 4
  %47 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %48 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @atmel_tx(%struct.atmel_private* %45, i32 %46, i32 %49)
  %51 = call i64 @atmel_rmem8(%struct.atmel_private* %44, i32 %50)
  store i64 %51, i64* %6, align 8
  %52 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %53 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %54 = load i32, i32* @TX_DESC_FLAGS_OFFSET, align 4
  %55 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %56 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @atmel_tx(%struct.atmel_private* %53, i32 %54, i32 %57)
  %59 = call i32 @atmel_wmem8(%struct.atmel_private* %52, i32 %58, i32 0)
  %60 = load i64, i64* %5, align 8
  %61 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %62 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %60
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %62, align 4
  %67 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %68 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %72 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = add nsw i64 %73, %74
  %76 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %77 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %81 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %79, %83
  %85 = icmp sgt i64 %75, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %27
  %87 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %88 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  br label %95

89:                                               ; preds = %27
  %90 = load i64, i64* %5, align 8
  %91 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %92 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  br label %95

95:                                               ; preds = %89, %86
  %96 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %97 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %100 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = icmp slt i32 %98, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %95
  %106 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %107 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  br label %113

110:                                              ; preds = %95
  %111 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %112 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %111, i32 0, i32 0
  store i32 0, i32* %112, align 8
  br label %113

113:                                              ; preds = %110, %105
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* @TX_PACKET_TYPE_DATA, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %142

117:                                              ; preds = %113
  %118 = load i64, i64* %4, align 8
  %119 = load i64, i64* @TX_STATUS_SUCCESS, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %123 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %122, i32 0, i32 2
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %137

129:                                              ; preds = %117
  %130 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %131 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %130, i32 0, i32 2
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %129, %121
  %138 = load %struct.atmel_private*, %struct.atmel_private** %2, align 8
  %139 = getelementptr inbounds %struct.atmel_private, %struct.atmel_private* %138, i32 0, i32 2
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = call i32 @netif_wake_queue(%struct.TYPE_6__* %140)
  br label %142

142:                                              ; preds = %137, %113
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %3, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %3, align 4
  br label %7

146:                                              ; preds = %25
  ret void
}

declare dso_local i64 @atmel_rmem8(%struct.atmel_private*, i32) #1

declare dso_local i32 @atmel_tx(%struct.atmel_private*, i32, i32) #1

declare dso_local i64 @atmel_rmem16(%struct.atmel_private*, i32) #1

declare dso_local i32 @atmel_wmem8(%struct.atmel_private*, i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
