; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_reset_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_reset_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_mbx_info = type { i64, i64, %struct.TYPE_2__, i64, i64, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@HEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_mbx_info*)* @fm10k_mbx_reset_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_mbx_reset_work(%struct.fm10k_mbx_info* %0) #0 {
  %2 = alloca %struct.fm10k_mbx_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.fm10k_mbx_info* %0, %struct.fm10k_mbx_info** %2, align 8
  %6 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %7 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 %9, 1
  %11 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %12 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %11, i32 0, i32 9
  store i64 %10, i64* %12, align 8
  %13 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %14 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HEAD, align 4
  %17 = call i64 @FM10K_MSG_HDR_FIELD_GET(i32 %15, i32 %16)
  store i64 %17, i64* %4, align 8
  %18 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %21 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @fm10k_mbx_index_len(%struct.fm10k_mbx_info* %18, i64 %19, i32 %22)
  store i64 %23, i64* %5, align 8
  %24 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %25 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = sub nsw i64 %26, %27
  %29 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %30 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  br label %33

33:                                               ; preds = %67, %1
  %34 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %35 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %34, i32 0, i32 6
  %36 = call i64 @fm10k_fifo_head_len(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %40 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %38, %33
  %44 = phi i1 [ false, %33 ], [ %42, %38 ]
  br i1 %44, label %45, label %68

45:                                               ; preds = %43
  %46 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %47 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %46, i32 0, i32 6
  %48 = call i64 @fm10k_fifo_head_drop(i32* %47)
  store i64 %48, i64* %3, align 8
  %49 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %50 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %54 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %3, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %45
  %59 = load i64, i64* %3, align 8
  %60 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %61 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %62, %59
  store i64 %63, i64* %61, align 8
  br label %67

64:                                               ; preds = %45
  %65 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %66 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %64, %58
  br label %33

68:                                               ; preds = %43
  %69 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %70 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %69, i32 0, i32 4
  store i64 0, i64* %70, align 8
  %71 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %72 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %74 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %76 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %78 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  store i64 0, i64* %79, align 8
  %80 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %2, align 8
  %81 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  ret void
}

declare dso_local i64 @FM10K_MSG_HDR_FIELD_GET(i32, i32) #1

declare dso_local i64 @fm10k_mbx_index_len(%struct.fm10k_mbx_info*, i64, i32) #1

declare dso_local i64 @fm10k_fifo_head_len(i32*) #1

declare dso_local i64 @fm10k_fifo_head_drop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
