; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_tx_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_tx_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_cq = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.ionic_queue*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.ionic_txq_comp*, %struct.TYPE_8__*, i64 }
%struct.ionic_txq_comp = type { i32, i32 }
%struct.ionic_queue = type { %struct.ionic_desc_info* }
%struct.ionic_desc_info = type { i64, i32*, i32*, %struct.ionic_desc_info* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ionic_dev }
%struct.ionic_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ionic_tx_flush(%struct.ionic_cq* %0) #0 {
  %2 = alloca %struct.ionic_cq*, align 8
  %3 = alloca %struct.ionic_txq_comp*, align 8
  %4 = alloca %struct.ionic_dev*, align 8
  %5 = alloca %struct.ionic_queue*, align 8
  %6 = alloca %struct.ionic_desc_info*, align 8
  %7 = alloca i32, align 4
  store %struct.ionic_cq* %0, %struct.ionic_cq** %2, align 8
  %8 = load %struct.ionic_cq*, %struct.ionic_cq** %2, align 8
  %9 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %8, i32 0, i32 3
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.ionic_txq_comp*, %struct.ionic_txq_comp** %11, align 8
  store %struct.ionic_txq_comp* %12, %struct.ionic_txq_comp** %3, align 8
  %13 = load %struct.ionic_cq*, %struct.ionic_cq** %2, align 8
  %14 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %13, i32 0, i32 5
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.ionic_dev* %18, %struct.ionic_dev** %4, align 8
  %19 = load %struct.ionic_cq*, %struct.ionic_cq** %2, align 8
  %20 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %19, i32 0, i32 4
  %21 = load %struct.ionic_queue*, %struct.ionic_queue** %20, align 8
  store %struct.ionic_queue* %21, %struct.ionic_queue** %5, align 8
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %87, %1
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.ionic_cq*, %struct.ionic_cq** %2, align 8
  %25 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.ionic_txq_comp*, %struct.ionic_txq_comp** %3, align 8
  %30 = getelementptr inbounds %struct.ionic_txq_comp, %struct.ionic_txq_comp* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ionic_cq*, %struct.ionic_cq** %2, align 8
  %33 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @color_match(i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %28, %22
  %38 = phi i1 [ false, %22 ], [ %36, %28 ]
  br i1 %38, label %39, label %104

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %62, %39
  %41 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %42 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %41, i32 0, i32 0
  %43 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %42, align 8
  store %struct.ionic_desc_info* %43, %struct.ionic_desc_info** %6, align 8
  %44 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %6, align 8
  %45 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %44, i32 0, i32 3
  %46 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %45, align 8
  %47 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %48 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %47, i32 0, i32 0
  store %struct.ionic_desc_info* %46, %struct.ionic_desc_info** %48, align 8
  %49 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %50 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %6, align 8
  %51 = load %struct.ionic_cq*, %struct.ionic_cq** %2, align 8
  %52 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %51, i32 0, i32 3
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %6, align 8
  %55 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @ionic_tx_clean(%struct.ionic_queue* %49, %struct.ionic_desc_info* %50, %struct.TYPE_8__* %53, i32* %56)
  %58 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %6, align 8
  %59 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %58, i32 0, i32 2
  store i32* null, i32** %59, align 8
  %60 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %6, align 8
  %61 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %40
  %63 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %6, align 8
  %64 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ionic_txq_comp*, %struct.ionic_txq_comp** %3, align 8
  %67 = getelementptr inbounds %struct.ionic_txq_comp, %struct.ionic_txq_comp* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @le16_to_cpu(i32 %68)
  %70 = icmp ne i64 %65, %69
  br i1 %70, label %40, label %71

71:                                               ; preds = %62
  %72 = load %struct.ionic_cq*, %struct.ionic_cq** %2, align 8
  %73 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %72, i32 0, i32 3
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %71
  %79 = load %struct.ionic_cq*, %struct.ionic_cq** %2, align 8
  %80 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = load %struct.ionic_cq*, %struct.ionic_cq** %2, align 8
  %86 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %78, %71
  %88 = load %struct.ionic_cq*, %struct.ionic_cq** %2, align 8
  %89 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %88, i32 0, i32 3
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load %struct.ionic_cq*, %struct.ionic_cq** %2, align 8
  %94 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %93, i32 0, i32 3
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %94, align 8
  %95 = load %struct.ionic_cq*, %struct.ionic_cq** %2, align 8
  %96 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %95, i32 0, i32 3
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load %struct.ionic_txq_comp*, %struct.ionic_txq_comp** %98, align 8
  store %struct.ionic_txq_comp* %99, %struct.ionic_txq_comp** %3, align 8
  %100 = load %struct.ionic_cq*, %struct.ionic_cq** %2, align 8
  %101 = call i32 @DEBUG_STATS_CQE_CNT(%struct.ionic_cq* %100)
  %102 = load i32, i32* %7, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %22

104:                                              ; preds = %37
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %104
  %108 = load %struct.ionic_dev*, %struct.ionic_dev** %4, align 8
  %109 = getelementptr inbounds %struct.ionic_dev, %struct.ionic_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ionic_cq*, %struct.ionic_cq** %2, align 8
  %112 = getelementptr inbounds %struct.ionic_cq, %struct.ionic_cq* %111, i32 0, i32 2
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @ionic_intr_credits(i32 %110, i32 %115, i32 %116, i32 0)
  br label %118

118:                                              ; preds = %107, %104
  ret void
}

declare dso_local i64 @color_match(i32, i32) #1

declare dso_local i32 @ionic_tx_clean(%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.TYPE_8__*, i32*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @DEBUG_STATS_CQE_CNT(%struct.ionic_cq*) #1

declare dso_local i32 @ionic_intr_credits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
