; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_tx_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_tx_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.cpsw_common = type { i32, i32*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @cpsw_tx_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_tx_poll(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpsw_common*, align 8
  %6 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %8 = call %struct.cpsw_common* @napi_to_cpsw(%struct.napi_struct* %7)
  store %struct.cpsw_common* %8, %struct.cpsw_common** %5, align 8
  %9 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %10 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @cpdma_chan_process(i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %2
  %21 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %22 = call i32 @napi_complete(%struct.napi_struct* %21)
  %23 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %24 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @writel(i32 255, i32* %26)
  %28 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %29 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %20
  %33 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %34 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %36 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @enable_irq(i32 %39)
  br label %41

41:                                               ; preds = %32, %20
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local %struct.cpsw_common* @napi_to_cpsw(%struct.napi_struct*) #1

declare dso_local i32 @cpdma_chan_process(i32, i32) #1

declare dso_local i32 @napi_complete(%struct.napi_struct*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
