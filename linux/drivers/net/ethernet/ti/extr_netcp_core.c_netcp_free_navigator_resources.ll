; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_free_navigator_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_free_navigator_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netcp_intf = type { i32*, i32*, i32**, i32*, i32*, i32* }

@KNAV_DMA_FDQ_PER_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netcp_intf*)* @netcp_free_navigator_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netcp_free_navigator_resources(%struct.netcp_intf* %0) #0 {
  %2 = alloca %struct.netcp_intf*, align 8
  %3 = alloca i32, align 4
  store %struct.netcp_intf* %0, %struct.netcp_intf** %2, align 8
  %4 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %5 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %4, i32 0, i32 5
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %10 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @knav_dma_close_channel(i32* %11)
  %13 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %14 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %13, i32 0, i32 5
  store i32* null, i32** %14, align 8
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %17 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @IS_ERR_OR_NULL(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %23 = call i32 @netcp_rxpool_free(%struct.netcp_intf* %22)
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %26 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @IS_ERR_OR_NULL(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %32 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @knav_queue_close(i32* %33)
  %35 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %36 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %35, i32 0, i32 3
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %30, %24
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %70, %37
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @KNAV_DMA_FDQ_PER_CHAN, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %44 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %43, i32 0, i32 2
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @IS_ERR_OR_NULL(i32* %49)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %42, %38
  %54 = phi i1 [ false, %38 ], [ %52, %42 ]
  br i1 %54, label %55, label %73

55:                                               ; preds = %53
  %56 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %57 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %56, i32 0, i32 2
  %58 = load i32**, i32*** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @knav_queue_close(i32* %62)
  %64 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %65 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %64, i32 0, i32 2
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %38

73:                                               ; preds = %53
  %74 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %75 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @IS_ERR_OR_NULL(i32* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %73
  %80 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %81 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @knav_queue_close(i32* %82)
  %84 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %85 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %79, %73
  %87 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %88 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @IS_ERR_OR_NULL(i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %99, label %92

92:                                               ; preds = %86
  %93 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %94 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @knav_pool_destroy(i32* %95)
  %97 = load %struct.netcp_intf*, %struct.netcp_intf** %2, align 8
  %98 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %97, i32 0, i32 0
  store i32* null, i32** %98, align 8
  br label %99

99:                                               ; preds = %92, %86
  ret void
}

declare dso_local i32 @knav_dma_close_channel(i32*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @netcp_rxpool_free(%struct.netcp_intf*) #1

declare dso_local i32 @knav_queue_close(i32*) #1

declare dso_local i32 @knav_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
