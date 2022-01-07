; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_tx_mq_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_tx_mq_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.cpsw_common = type { %struct.TYPE_2__*, %struct.cpsw_vector*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cpsw_vector = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @cpsw_tx_mq_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_tx_mq_poll(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpsw_common*, align 8
  %10 = alloca %struct.cpsw_vector*, align 8
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %12 = call %struct.cpsw_common* @napi_to_cpsw(%struct.napi_struct* %11)
  store %struct.cpsw_common* %12, %struct.cpsw_common** %9, align 8
  %13 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %14 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @cpdma_ctrl_txchs_state(i32 %15)
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %66, %2
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 255
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %71

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, 128
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %66

26:                                               ; preds = %21
  %27 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %28 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %27, i32 0, i32 1
  %29 = load %struct.cpsw_vector*, %struct.cpsw_vector** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %29, i64 %31
  store %struct.cpsw_vector* %32, %struct.cpsw_vector** %10, align 8
  %33 = load %struct.cpsw_vector*, %struct.cpsw_vector** %10, align 8
  %34 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %36, %37
  %39 = icmp sgt i32 %35, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %26
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %7, align 4
  br label %51

47:                                               ; preds = %26
  %48 = load %struct.cpsw_vector*, %struct.cpsw_vector** %10, align 8
  %49 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.cpsw_vector*, %struct.cpsw_vector** %10, align 8
  %53 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @cpdma_chan_process(i32 %54, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %71

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %25
  %67 = load i32, i32* %5, align 4
  %68 = shl i32 %67, 1
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %17

71:                                               ; preds = %64, %17
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %77 = call i32 @napi_complete(%struct.napi_struct* %76)
  %78 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %79 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @writel(i32 255, i32* %81)
  br label %83

83:                                               ; preds = %75, %71
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local %struct.cpsw_common* @napi_to_cpsw(%struct.napi_struct*) #1

declare dso_local i32 @cpdma_ctrl_txchs_state(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @cpdma_chan_process(i32, i32) #1

declare dso_local i32 @napi_complete(%struct.napi_struct*) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
