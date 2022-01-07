; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_clean_rx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_clean_rx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_slice_state = type { %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_5__, %struct.myri10ge_priv*, %struct.myri10ge_rx_done }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.myri10ge_priv = type { i32, i64, i64 }
%struct.myri10ge_rx_done = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@myri10ge_fill_thresh = common dso_local global i64 0, align 8
@MXGEFW_PAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.myri10ge_slice_state*, i32)* @myri10ge_clean_rx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_clean_rx_done(%struct.myri10ge_slice_state* %0, i32 %1) #0 {
  %3 = alloca %struct.myri10ge_slice_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.myri10ge_rx_done*, align 8
  %6 = alloca %struct.myri10ge_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.myri10ge_slice_state* %0, %struct.myri10ge_slice_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %16 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %15, i32 0, i32 4
  store %struct.myri10ge_rx_done* %16, %struct.myri10ge_rx_done** %5, align 8
  %17 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %18 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %17, i32 0, i32 3
  %19 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %18, align 8
  store %struct.myri10ge_priv* %19, %struct.myri10ge_priv** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %20 = load %struct.myri10ge_rx_done*, %struct.myri10ge_rx_done** %5, align 8
  %21 = getelementptr inbounds %struct.myri10ge_rx_done, %struct.myri10ge_rx_done* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load %struct.myri10ge_rx_done*, %struct.myri10ge_rx_done** %5, align 8
  %24 = getelementptr inbounds %struct.myri10ge_rx_done, %struct.myri10ge_rx_done* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %42, %2
  %27 = load %struct.myri10ge_rx_done*, %struct.myri10ge_rx_done** %5, align 8
  %28 = getelementptr inbounds %struct.myri10ge_rx_done, %struct.myri10ge_rx_done* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %37, %38
  br label %40

40:                                               ; preds = %36, %26
  %41 = phi i1 [ false, %26 ], [ %39, %36 ]
  br i1 %41, label %42, label %90

42:                                               ; preds = %40
  %43 = load %struct.myri10ge_rx_done*, %struct.myri10ge_rx_done** %5, align 8
  %44 = getelementptr inbounds %struct.myri10ge_rx_done, %struct.myri10ge_rx_done* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @ntohs(i64 %50)
  store i64 %51, i64* %13, align 8
  %52 = load %struct.myri10ge_rx_done*, %struct.myri10ge_rx_done** %5, align 8
  %53 = getelementptr inbounds %struct.myri10ge_rx_done, %struct.myri10ge_rx_done* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.myri10ge_rx_done*, %struct.myri10ge_rx_done** %5, align 8
  %60 = getelementptr inbounds %struct.myri10ge_rx_done, %struct.myri10ge_rx_done* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @csum_unfold(i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %69 = load i64, i64* %13, align 8
  %70 = load i32, i32* %14, align 4
  %71 = call i64 @myri10ge_rx_done(%struct.myri10ge_slice_state* %68, i64 %69, i32 %70)
  store i64 %71, i64* %9, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %13, align 8
  %77 = mul i64 %75, %76
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %7, align 8
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %6, align 8
  %84 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 1
  %87 = and i32 %82, %86
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %26

90:                                               ; preds = %40
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.myri10ge_rx_done*, %struct.myri10ge_rx_done** %5, align 8
  %93 = getelementptr inbounds %struct.myri10ge_rx_done, %struct.myri10ge_rx_done* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.myri10ge_rx_done*, %struct.myri10ge_rx_done** %5, align 8
  %96 = getelementptr inbounds %struct.myri10ge_rx_done, %struct.myri10ge_rx_done* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load i64, i64* %8, align 8
  %98 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %99 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, %97
  store i64 %102, i64* %100, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %105 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, %103
  store i64 %108, i64* %106, align 8
  %109 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %110 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %114 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %112, %116
  %118 = load i64, i64* @myri10ge_fill_thresh, align 8
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %120, label %130

120:                                              ; preds = %90
  %121 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %6, align 8
  %122 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %123 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %122, i32 0, i32 1
  %124 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %6, align 8
  %125 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @MXGEFW_PAD, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @myri10ge_alloc_rx_pages(%struct.myri10ge_priv* %121, %struct.TYPE_6__* %123, i64 %128, i32 0)
  br label %130

130:                                              ; preds = %120, %90
  %131 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %132 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %136 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = sub nsw i64 %134, %138
  %140 = load i64, i64* @myri10ge_fill_thresh, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %130
  %143 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %6, align 8
  %144 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %3, align 8
  %145 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %144, i32 0, i32 0
  %146 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %6, align 8
  %147 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @myri10ge_alloc_rx_pages(%struct.myri10ge_priv* %143, %struct.TYPE_6__* %145, i64 %148, i32 0)
  br label %150

150:                                              ; preds = %142, %130
  %151 = load i32, i32* %12, align 4
  ret i32 %151
}

declare dso_local i64 @ntohs(i64) #1

declare dso_local i32 @csum_unfold(i32) #1

declare dso_local i64 @myri10ge_rx_done(%struct.myri10ge_slice_state*, i64, i32) #1

declare dso_local i32 @myri10ge_alloc_rx_pages(%struct.myri10ge_priv*, %struct.TYPE_6__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
