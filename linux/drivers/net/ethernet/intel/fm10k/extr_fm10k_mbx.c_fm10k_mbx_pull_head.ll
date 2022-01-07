; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_pull_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_pull_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_mbx_info = type { i64, i64, i64, i32, i32, i32, %struct.fm10k_mbx_fifo }
%struct.fm10k_mbx_fifo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_hw*, %struct.fm10k_mbx_info*, i64)* @fm10k_mbx_pull_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_mbx_pull_head(%struct.fm10k_hw* %0, %struct.fm10k_mbx_info* %1, i64 %2) #0 {
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca %struct.fm10k_mbx_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fm10k_mbx_fifo*, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %4, align 8
  store %struct.fm10k_mbx_info* %1, %struct.fm10k_mbx_info** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %14 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @fm10k_mbx_index_len(%struct.fm10k_mbx_info* %11, i64 %12, i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %18 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %17, i32 0, i32 6
  store %struct.fm10k_mbx_fifo* %18, %struct.fm10k_mbx_fifo** %10, align 8
  %19 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %20 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = sub nsw i64 %21, %22
  %24 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %25 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %29 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %30, 1
  store i64 %31, i64* %7, align 8
  %32 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %10, align 8
  %33 = call i64 @fm10k_fifo_used(%struct.fm10k_mbx_fifo* %32)
  %34 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %35 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %41, %3
  %44 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = sub nsw i64 %45, %46
  %48 = call i32 @fm10k_mbx_tail_add(%struct.fm10k_mbx_info* %44, i64 %47)
  %49 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %50 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %53 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  %54 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %10, align 8
  %55 = call i64 @fm10k_fifo_head_len(%struct.fm10k_mbx_fifo* %54)
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %85, %43
  %57 = load i64, i64* %8, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %61 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp sge i64 %62, %63
  br label %65

65:                                               ; preds = %59, %56
  %66 = phi i1 [ false, %56 ], [ %64, %59 ]
  br i1 %66, label %67, label %88

67:                                               ; preds = %65
  %68 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %10, align 8
  %69 = call i64 @fm10k_fifo_head_drop(%struct.fm10k_mbx_fifo* %68)
  %70 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %71 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %75 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load i64, i64* %8, align 8
  %79 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %80 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %82, %78
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 8
  br label %85

85:                                               ; preds = %67
  %86 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %10, align 8
  %87 = call i64 @fm10k_fifo_head_len(%struct.fm10k_mbx_fifo* %86)
  store i64 %87, i64* %8, align 8
  br label %56

88:                                               ; preds = %65
  %89 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %90 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %5, align 8
  %91 = call i32 @fm10k_mbx_write_copy(%struct.fm10k_hw* %89, %struct.fm10k_mbx_info* %90)
  ret void
}

declare dso_local i64 @fm10k_mbx_index_len(%struct.fm10k_mbx_info*, i64, i32) #1

declare dso_local i64 @fm10k_fifo_used(%struct.fm10k_mbx_fifo*) #1

declare dso_local i32 @fm10k_mbx_tail_add(%struct.fm10k_mbx_info*, i64) #1

declare dso_local i64 @fm10k_fifo_head_len(%struct.fm10k_mbx_fifo*) #1

declare dso_local i64 @fm10k_fifo_head_drop(%struct.fm10k_mbx_fifo*) #1

declare dso_local i32 @fm10k_mbx_write_copy(%struct.fm10k_hw*, %struct.fm10k_mbx_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
