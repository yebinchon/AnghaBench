; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_txrx_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_txrx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_14__*, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@IONIC_QCQ_F_TX_STATS = common dso_local global i32 0, align 4
@IONIC_QCQ_F_SG = common dso_local global i32 0, align 4
@IONIC_QTYPE_TXQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@IONIC_QCQ_F_RX_STATS = common dso_local global i32 0, align 4
@IONIC_QCQ_F_INTR = common dso_local global i32 0, align 4
@IONIC_QTYPE_RXQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ionic_lif*)* @ionic_txrx_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_txrx_alloc(%struct.ionic_lif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ionic_lif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ionic_lif* %0, %struct.ionic_lif** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @IONIC_QCQ_F_TX_STATS, align 4
  %9 = load i32, i32* @IONIC_QCQ_F_SG, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %57, %1
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %14 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %60

17:                                               ; preds = %11
  %18 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %19 = load i32, i32* @IONIC_QTYPE_TXQ, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %23 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %26 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %29 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %28, i32 0, i32 1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = call i32 @ionic_qcq_alloc(%struct.ionic_lif* %18, i32 %19, i32 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 4, i32 4, i32 4, i32 %27, %struct.TYPE_13__** %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %17
  br label %157

39:                                               ; preds = %17
  %40 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %41 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %40, i32 0, i32 1
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %49 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  store i32 %47, i32* %56, align 4
  br label %57

57:                                               ; preds = %39
  %58 = load i32, i32* %5, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %11

60:                                               ; preds = %11
  %61 = load i32, i32* @IONIC_QCQ_F_RX_STATS, align 4
  %62 = load i32, i32* @IONIC_QCQ_F_INTR, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %4, align 4
  %64 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %65 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %64, i32 0, i32 3
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %68 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ionic_coal_usec_to_hw(%struct.TYPE_14__* %66, i32 %69)
  store i32 %70, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %153, %60
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %74 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ult i32 %72, %75
  br i1 %76, label %77, label %156

77:                                               ; preds = %71
  %78 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %79 = load i32, i32* @IONIC_QTYPE_RXQ, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %83 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %86 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %89 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %88, i32 0, i32 2
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = call i32 @ionic_qcq_alloc(%struct.ionic_lif* %78, i32 %79, i32 %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %84, i32 4, i32 4, i32 0, i32 %87, %struct.TYPE_13__** %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %77
  br label %157

99:                                               ; preds = %77
  %100 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %101 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %100, i32 0, i32 2
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %109 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %108, i32 0, i32 2
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  store i32 %107, i32* %116, align 4
  %117 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %118 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %117, i32 0, i32 3
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %124 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %123, i32 0, i32 2
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @ionic_intr_coal_init(i32 %122, i32 %133, i32 %134)
  %136 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %137 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %136, i32 0, i32 2
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %137, align 8
  %139 = load i32, i32* %5, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  %144 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %145 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %144, i32 0, i32 1
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = call i32 @ionic_link_qcq_interrupts(%struct.TYPE_13__* %143, %struct.TYPE_13__* %151)
  br label %153

153:                                              ; preds = %99
  %154 = load i32, i32* %5, align 4
  %155 = add i32 %154, 1
  store i32 %155, i32* %5, align 4
  br label %71

156:                                              ; preds = %71
  store i32 0, i32* %2, align 4
  br label %161

157:                                              ; preds = %98, %38
  %158 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %159 = call i32 @ionic_txrx_free(%struct.ionic_lif* %158)
  %160 = load i32, i32* %6, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %157, %156
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @ionic_qcq_alloc(%struct.ionic_lif*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__**) #1

declare dso_local i32 @ionic_coal_usec_to_hw(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ionic_intr_coal_init(i32, i32, i32) #1

declare dso_local i32 @ionic_link_qcq_interrupts(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @ionic_txrx_free(%struct.ionic_lif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
