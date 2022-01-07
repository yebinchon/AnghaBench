; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_create_rx_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw.c_cpsw_create_rx_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_common = type { %struct.page_pool**, %struct.TYPE_2__* }
%struct.page_pool = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpsw_common*, i32)* @cpsw_create_rx_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_create_rx_pool(%struct.cpsw_common* %0, i32 %1) #0 {
  %3 = alloca %struct.cpsw_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.page_pool*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cpsw_common* %0, %struct.cpsw_common** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %9 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @cpdma_chan_get_rx_buf_num(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.page_pool* @cpsw_create_page_pool(%struct.cpsw_common* %17, i32 %18)
  store %struct.page_pool* %19, %struct.page_pool** %5, align 8
  %20 = load %struct.page_pool*, %struct.page_pool** %5, align 8
  %21 = call i64 @IS_ERR(%struct.page_pool* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.page_pool*, %struct.page_pool** %5, align 8
  %25 = call i32 @PTR_ERR(%struct.page_pool* %24)
  store i32 %25, i32* %6, align 4
  br label %34

26:                                               ; preds = %2
  %27 = load %struct.page_pool*, %struct.page_pool** %5, align 8
  %28 = load %struct.cpsw_common*, %struct.cpsw_common** %3, align 8
  %29 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %28, i32 0, i32 0
  %30 = load %struct.page_pool**, %struct.page_pool*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.page_pool*, %struct.page_pool** %30, i64 %32
  store %struct.page_pool* %27, %struct.page_pool** %33, align 8
  br label %34

34:                                               ; preds = %26, %23
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @cpdma_chan_get_rx_buf_num(i32) #1

declare dso_local %struct.page_pool* @cpsw_create_page_pool(%struct.cpsw_common*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page_pool*) #1

declare dso_local i32 @PTR_ERR(%struct.page_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
