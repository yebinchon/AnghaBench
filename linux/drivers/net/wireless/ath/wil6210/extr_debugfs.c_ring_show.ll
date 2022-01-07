; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_ring_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_ring_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.wil6210_priv* }
%struct.wil6210_priv = type { i32**, i32, %struct.TYPE_2__*, %struct.wil_ring_tx_data*, %struct.wil_ring*, %struct.wil_ring }
%struct.TYPE_2__ = type { i32 }
%struct.wil_ring_tx_data = type { i32, i64, i64, i64, i32, i32 }
%struct.wil_ring = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%3d%%\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"tx_%2d\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"\0A%pM CID %d TID %d 1x%s BACK([%u] %u TU A%s) [%3d|%3d] idle %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"\0ABroadcast 1x%s [%3d|%3d] idle %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @ring_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ring_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca %struct.wil_ring*, align 8
  %8 = alloca %struct.wil_ring_tx_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [10 x i8], align 1
  %16 = alloca [10 x i8], align 1
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %20, i32 0, i32 0
  %22 = load %struct.wil6210_priv*, %struct.wil6210_priv** %21, align 8
  store %struct.wil6210_priv* %22, %struct.wil6210_priv** %6, align 8
  %23 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %24 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %25 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %26 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %25, i32 0, i32 5
  %27 = call i32 @wil_print_ring(%struct.seq_file* %23, %struct.wil6210_priv* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.wil_ring* %26, i8 signext 83, i8 signext 95)
  store i64 0, i64* %5, align 8
  br label %28

28:                                               ; preds = %183, %2
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %31 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %30, i32 0, i32 4
  %32 = load %struct.wil_ring*, %struct.wil_ring** %31, align 8
  %33 = call i64 @ARRAY_SIZE(%struct.wil_ring* %32)
  %34 = icmp ult i64 %29, %33
  br i1 %34, label %35, label %186

35:                                               ; preds = %28
  %36 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %37 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %36, i32 0, i32 4
  %38 = load %struct.wil_ring*, %struct.wil_ring** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %38, i64 %39
  store %struct.wil_ring* %40, %struct.wil_ring** %7, align 8
  %41 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %42 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %41, i32 0, i32 3
  %43 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %43, i64 %44
  store %struct.wil_ring_tx_data* %45, %struct.wil_ring_tx_data** %8, align 8
  %46 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %47 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %182

50:                                               ; preds = %35
  %51 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %52 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %51, i32 0, i32 0
  %53 = load i32**, i32*** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i32*, i32** %53, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  %59 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %60 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds i32*, i32** %61, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %10, align 4
  %67 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %68 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %11, align 4
  %70 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %71 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %12, align 4
  %73 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %74 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* %12, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %81 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = srem i32 %79, %82
  store i32 %83, i32* %13, align 4
  %84 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %85 = getelementptr inbounds %struct.wil_ring, %struct.wil_ring* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %13, align 4
  %88 = sub nsw i32 %86, %87
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  %90 = call i64 (...) @get_cycles()
  store i64 %90, i64* %17, align 8
  %91 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %8, align 8
  %92 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 %93, 100
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %18, align 8
  %96 = load i64, i64* %17, align 8
  %97 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %8, align 8
  %98 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %96, %99
  store i64 %100, i64* %19, align 8
  %101 = load i64, i64* %19, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %50
  %104 = load i64, i64* %18, align 8
  %105 = load i64, i64* %19, align 8
  %106 = call i32 @do_div(i64 %104, i64 %105)
  %107 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %108 = load i64, i64* %18, align 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %107, i32 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  br label %114

111:                                              ; preds = %50
  %112 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %113 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %112, i32 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %103
  %115 = load i64, i64* %17, align 8
  %116 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %8, align 8
  %117 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  %118 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %8, align 8
  %119 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  %120 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %121 = load i64, i64* %5, align 8
  %122 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %120, i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %121)
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %125 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %164

128:                                              ; preds = %114
  %129 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %130 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %131 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %130, i32 0, i32 2
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %8, align 8
  %143 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %148 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %8, align 8
  %149 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %8, align 8
  %152 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %8, align 8
  %155 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %14, align 4
  %162 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %163 = call i32 (%struct.seq_file*, i8*, i8*, i32, i32, i8*, ...) @seq_printf(%struct.seq_file* %129, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0), i8* %139, i32 %140, i32 %141, i8* %147, i32 %150, i32 %153, i8* %159, i32 %160, i32 %161, i8* %162)
  br label %176

164:                                              ; preds = %114
  %165 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %166 = load %struct.wil_ring_tx_data*, %struct.wil_ring_tx_data** %8, align 8
  %167 = getelementptr inbounds %struct.wil_ring_tx_data, %struct.wil_ring_tx_data* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0)
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* %14, align 4
  %174 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %175 = call i32 (%struct.seq_file*, i8*, i8*, i32, i32, i8*, ...) @seq_printf(%struct.seq_file* %165, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* %171, i32 %172, i32 %173, i8* %174)
  br label %176

176:                                              ; preds = %164, %128
  %177 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %178 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %179 = getelementptr inbounds [10 x i8], [10 x i8]* %15, i64 0, i64 0
  %180 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %181 = call i32 @wil_print_ring(%struct.seq_file* %177, %struct.wil6210_priv* %178, i8* %179, %struct.wil_ring* %180, i8 signext 95, i8 signext 72)
  br label %182

182:                                              ; preds = %176, %35
  br label %183

183:                                              ; preds = %182
  %184 = load i64, i64* %5, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %5, align 8
  br label %28

186:                                              ; preds = %28
  ret i32 0
}

declare dso_local i32 @wil_print_ring(%struct.seq_file*, %struct.wil6210_priv*, i8*, %struct.wil_ring*, i8 signext, i8 signext) #1

declare dso_local i64 @ARRAY_SIZE(%struct.wil_ring*) #1

declare dso_local i64 @get_cycles(...) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
