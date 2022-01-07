; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_push_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_push_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_mbx_info = type { i64, i32, i32, i64, i32, %struct.fm10k_mbx_fifo }
%struct.fm10k_mbx_fifo = type { i32 }

@FM10K_MBX_ERR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_hw*, %struct.fm10k_mbx_info*, i64)* @fm10k_mbx_push_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_mbx_push_tail(%struct.fm10k_hw* %0, %struct.fm10k_mbx_info* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fm10k_hw*, align 8
  %6 = alloca %struct.fm10k_mbx_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fm10k_mbx_fifo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %5, align 8
  store %struct.fm10k_mbx_info* %1, %struct.fm10k_mbx_info** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %12 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %11, i32 0, i32 5
  store %struct.fm10k_mbx_fifo* %12, %struct.fm10k_mbx_fifo** %8, align 8
  %13 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %14 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %15 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @fm10k_mbx_index_len(%struct.fm10k_mbx_info* %13, i32 %16, i64 %17)
  store i64 %18, i64* %10, align 8
  %19 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %8, align 8
  %20 = call i64 @fm10k_fifo_unused(%struct.fm10k_mbx_fifo* %19)
  %21 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %22 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i64, i64* %10, align 8
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %28, %3
  %31 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @fm10k_mbx_head_add(%struct.fm10k_mbx_info* %31, i64 %32)
  %34 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %35 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %38 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %99

42:                                               ; preds = %30
  %43 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %44 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %45 = call i32 @fm10k_mbx_read_copy(%struct.fm10k_hw* %43, %struct.fm10k_mbx_info* %44)
  %46 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i64 @fm10k_mbx_validate_msg_size(%struct.fm10k_mbx_info* %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @FM10K_MBX_ERR_SIZE, align 4
  store i32 %51, i32* %4, align 4
  br label %99

52:                                               ; preds = %42
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %55 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %59 = call i64 @fm10k_mbx_pushed_tail_len(%struct.fm10k_mbx_info* %58)
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %95, %52
  %61 = load i64, i64* %9, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %65 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp sge i64 %66, %67
  br label %69

69:                                               ; preds = %63, %60
  %70 = phi i1 [ false, %60 ], [ %68, %63 ]
  br i1 %70, label %71, label %98

71:                                               ; preds = %69
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.fm10k_mbx_fifo*, %struct.fm10k_mbx_fifo** %8, align 8
  %74 = getelementptr inbounds %struct.fm10k_mbx_fifo, %struct.fm10k_mbx_fifo* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %72
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %81 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %82, %79
  store i64 %83, i64* %81, align 8
  %84 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %85 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load i64, i64* %9, align 8
  %89 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %90 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 8
  br label %95

95:                                               ; preds = %71
  %96 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %97 = call i64 @fm10k_mbx_pushed_tail_len(%struct.fm10k_mbx_info* %96)
  store i64 %97, i64* %9, align 8
  br label %60

98:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %50, %41
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i64 @fm10k_mbx_index_len(%struct.fm10k_mbx_info*, i32, i64) #1

declare dso_local i64 @fm10k_fifo_unused(%struct.fm10k_mbx_fifo*) #1

declare dso_local i32 @fm10k_mbx_head_add(%struct.fm10k_mbx_info*, i64) #1

declare dso_local i32 @fm10k_mbx_read_copy(%struct.fm10k_hw*, %struct.fm10k_mbx_info*) #1

declare dso_local i64 @fm10k_mbx_validate_msg_size(%struct.fm10k_mbx_info*, i64) #1

declare dso_local i64 @fm10k_mbx_pushed_tail_len(%struct.fm10k_mbx_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
