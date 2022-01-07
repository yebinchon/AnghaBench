; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil_print_desc_edma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil_print_desc_edma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.wil6210_priv = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.wil_ring = type { %struct.TYPE_16__*, %struct.TYPE_14__*, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.wil_rx_enhanced_desc = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.wil_tx_enhanced_desc = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64* }

@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.wil6210_priv*, %struct.wil_ring*, i8, i8, i32)* @wil_print_desc_edma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_print_desc_edma(%struct.seq_file* %0, %struct.wil6210_priv* %1, %struct.wil_ring* %2, i8 signext %3, i8 signext %4, i32 %5) #0 {
  %7 = alloca %struct.seq_file*, align 8
  %8 = alloca %struct.wil6210_priv*, align 8
  %9 = alloca %struct.wil_ring*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.wil_rx_enhanced_desc*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.wil_tx_enhanced_desc*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %7, align 8
  store %struct.wil6210_priv* %1, %struct.wil6210_priv** %8, align 8
  store %struct.wil_ring* %2, %struct.wil_ring** %9, align 8
  store i8 %3, i8* %10, align 1
  store i8 %4, i8* %11, align 1
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %19 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %73

22:                                               ; preds = %6
  %23 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %24 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %23, i32 0, i32 1
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = load i32, i32* %12, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = bitcast i32* %30 to %struct.wil_rx_enhanced_desc*
  store %struct.wil_rx_enhanced_desc* %31, %struct.wil_rx_enhanced_desc** %15, align 8
  %32 = load %struct.wil_rx_enhanced_desc*, %struct.wil_rx_enhanced_desc** %15, align 8
  %33 = getelementptr inbounds %struct.wil_rx_enhanced_desc, %struct.wil_rx_enhanced_desc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @le16_to_cpu(i32 %35)
  store i64 %36, i64* %16, align 8
  %37 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %38 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = icmp ne %struct.TYPE_11__* %40, null
  br i1 %41, label %42, label %59

42:                                               ; preds = %22
  %43 = load i64, i64* %16, align 8
  %44 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %45 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @wil_val_in_range(i64 %43, i32 0, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load %struct.wil6210_priv*, %struct.wil6210_priv** %8, align 8
  %52 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = load i64, i64* %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %50, %42, %22
  %60 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i8, i8* %11, align 1
  %65 = sext i8 %64 to i32
  br label %69

66:                                               ; preds = %59
  %67 = load i8, i8* %10, align 1
  %68 = sext i8 %67 to i32
  br label %69

69:                                               ; preds = %66, %63
  %70 = phi i32 [ %65, %63 ], [ %68, %66 ]
  %71 = trunc i32 %70 to i8
  %72 = call i32 @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %71)
  br label %136

73:                                               ; preds = %6
  %74 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %75 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %74, i32 0, i32 1
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = bitcast i32* %81 to %struct.wil_tx_enhanced_desc*
  store %struct.wil_tx_enhanced_desc* %82, %struct.wil_tx_enhanced_desc** %17, align 8
  %83 = load %struct.wil_tx_enhanced_desc*, %struct.wil_tx_enhanced_desc** %17, align 8
  %84 = getelementptr inbounds %struct.wil_tx_enhanced_desc, %struct.wil_tx_enhanced_desc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 2
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %13, align 4
  %90 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %91 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %90, i32 0, i32 0
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %91, align 8
  %93 = icmp ne %struct.TYPE_16__* %92, null
  br i1 %93, label %94, label %104

94:                                               ; preds = %73
  %95 = load %struct.wil_ring*, %struct.wil_ring** %9, align 8
  %96 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %95, i32 0, i32 0
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br label %104

104:                                              ; preds = %94, %73
  %105 = phi i1 [ false, %73 ], [ %103, %94 ]
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp sge i32 %107, 1
  br i1 %108, label %109, label %123

109:                                              ; preds = %104
  %110 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i8, i8* %11, align 1
  %115 = sext i8 %114 to i32
  br label %119

116:                                              ; preds = %109
  %117 = load i8, i8* %10, align 1
  %118 = sext i8 %117 to i32
  br label %119

119:                                              ; preds = %116, %113
  %120 = phi i32 [ %115, %113 ], [ %118, %116 ]
  %121 = trunc i32 %120 to i8
  %122 = call i32 @seq_printf(%struct.seq_file* %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %121)
  br label %135

123:                                              ; preds = %104
  %124 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %131

128:                                              ; preds = %123
  %129 = load i8, i8* %10, align 1
  %130 = sext i8 %129 to i32
  br label %131

131:                                              ; preds = %128, %127
  %132 = phi i32 [ 104, %127 ], [ %130, %128 ]
  %133 = trunc i32 %132 to i8
  %134 = call i32 @seq_printf(%struct.seq_file* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext %133)
  br label %135

135:                                              ; preds = %131, %119
  br label %136

136:                                              ; preds = %135, %69
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @wil_val_in_range(i64, i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
