; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_rx_mq_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_rx_mq_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.cpsw_common = type { %struct.TYPE_2__*, %struct.cpsw_vector*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cpsw_vector = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @cpsw_rx_mq_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_rx_mq_poll(%struct.napi_struct* %0, i32 %1) #0 {
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
  %16 = call i32 @cpdma_ctrl_rxchs_state(i32 %15)
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %65, %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %65

25:                                               ; preds = %20
  %26 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %27 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %26, i32 0, i32 1
  %28 = load %struct.cpsw_vector*, %struct.cpsw_vector** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %28, i64 %30
  store %struct.cpsw_vector* %31, %struct.cpsw_vector** %10, align 8
  %32 = load %struct.cpsw_vector*, %struct.cpsw_vector** %10, align 8
  %33 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %35, %36
  %38 = icmp sgt i32 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %25
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %7, align 4
  br label %50

46:                                               ; preds = %25
  %47 = load %struct.cpsw_vector*, %struct.cpsw_vector** %10, align 8
  %48 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.cpsw_vector*, %struct.cpsw_vector** %10, align 8
  %52 = getelementptr inbounds %struct.cpsw_vector, %struct.cpsw_vector* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @cpdma_chan_process(i32 %53, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  br label %70

64:                                               ; preds = %50
  br label %65

65:                                               ; preds = %64, %24
  %66 = load i32, i32* %5, align 4
  %67 = ashr i32 %66, 1
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %17

70:                                               ; preds = %63, %17
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @napi_complete_done(%struct.napi_struct* %75, i32 %76)
  %78 = load %struct.cpsw_common*, %struct.cpsw_common** %9, align 8
  %79 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @writel(i32 255, i32* %81)
  br label %83

83:                                               ; preds = %74, %70
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local %struct.cpsw_common* @napi_to_cpsw(%struct.napi_struct*) #1

declare dso_local i32 @cpdma_ctrl_rxchs_state(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @cpdma_chan_process(i32, i32) #1

declare dso_local i32 @napi_complete_done(%struct.napi_struct*, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
