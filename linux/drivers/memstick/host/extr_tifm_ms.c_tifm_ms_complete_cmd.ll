; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_tifm_ms.c_tifm_ms_complete_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_tifm_ms.c_tifm_ms_complete_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tifm_ms = type { %struct.TYPE_2__*, i64, i32, %struct.tifm_dev* }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.tifm_dev = type { i32, i64 }
%struct.memstick_host = type { i32 }

@SOCK_MS_STATUS = common dso_local global i64 0, align 8
@TIFM_FIFO_INT_SETALL = common dso_local global i32 0, align 4
@SOCK_DMA_FIFO_INT_ENABLE_CLEAR = common dso_local global i64 0, align 8
@TIFM_DMA_RESET = common dso_local global i32 0, align 4
@SOCK_DMA_CONTROL = common dso_local global i64 0, align 8
@READ = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@TIFM_CTRL_LED = common dso_local global i32 0, align 4
@SOCK_CONTROL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"TPC complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tifm_ms*)* @tifm_ms_complete_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tifm_ms_complete_cmd(%struct.tifm_ms* %0) #0 {
  %2 = alloca %struct.tifm_ms*, align 8
  %3 = alloca %struct.tifm_dev*, align 8
  %4 = alloca %struct.memstick_host*, align 8
  %5 = alloca i32, align 4
  store %struct.tifm_ms* %0, %struct.tifm_ms** %2, align 8
  %6 = load %struct.tifm_ms*, %struct.tifm_ms** %2, align 8
  %7 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %6, i32 0, i32 3
  %8 = load %struct.tifm_dev*, %struct.tifm_dev** %7, align 8
  store %struct.tifm_dev* %8, %struct.tifm_dev** %3, align 8
  %9 = load %struct.tifm_dev*, %struct.tifm_dev** %3, align 8
  %10 = call %struct.memstick_host* @tifm_get_drvdata(%struct.tifm_dev* %9)
  store %struct.memstick_host* %10, %struct.memstick_host** %4, align 8
  %11 = load %struct.tifm_ms*, %struct.tifm_ms** %2, align 8
  %12 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %11, i32 0, i32 2
  %13 = call i32 @del_timer(i32* %12)
  %14 = load %struct.tifm_dev*, %struct.tifm_dev** %3, align 8
  %15 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SOCK_MS_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  %20 = and i32 %19, 255
  %21 = load %struct.tifm_ms*, %struct.tifm_ms** %2, align 8
  %22 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 8
  %25 = load %struct.tifm_ms*, %struct.tifm_ms** %2, align 8
  %26 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, 1
  %31 = load %struct.tifm_ms*, %struct.tifm_ms** %2, align 8
  %32 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 %35, 4
  %37 = and i32 %36, 224
  %38 = or i32 %30, %37
  %39 = load %struct.tifm_ms*, %struct.tifm_ms** %2, align 8
  %40 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 8
  %43 = load i32, i32* @TIFM_FIFO_INT_SETALL, align 4
  %44 = load %struct.tifm_dev*, %struct.tifm_dev** %3, align 8
  %45 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SOCK_DMA_FIFO_INT_ENABLE_CLEAR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  %50 = load i32, i32* @TIFM_DMA_RESET, align 4
  %51 = load %struct.tifm_dev*, %struct.tifm_dev** %3, align 8
  %52 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SOCK_DMA_CONTROL, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  %57 = load %struct.tifm_ms*, %struct.tifm_ms** %2, align 8
  %58 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %1
  %62 = load %struct.tifm_dev*, %struct.tifm_dev** %3, align 8
  %63 = load %struct.tifm_ms*, %struct.tifm_ms** %2, align 8
  %64 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load %struct.tifm_ms*, %struct.tifm_ms** %2, align 8
  %68 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @READ, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  br label %78

76:                                               ; preds = %61
  %77 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  %80 = call i32 @tifm_unmap_sg(%struct.tifm_dev* %62, i32* %66, i32 1, i32 %79)
  br label %81

81:                                               ; preds = %78, %1
  %82 = load i32, i32* @TIFM_CTRL_LED, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.tifm_dev*, %struct.tifm_dev** %3, align 8
  %85 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SOCK_CONTROL, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @readl(i64 %88)
  %90 = and i32 %83, %89
  %91 = load %struct.tifm_dev*, %struct.tifm_dev** %3, align 8
  %92 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SOCK_CONTROL, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @writel(i32 %90, i64 %95)
  %97 = load %struct.tifm_dev*, %struct.tifm_dev** %3, align 8
  %98 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %97, i32 0, i32 0
  %99 = call i32 @dev_dbg(i32* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %112, %81
  %101 = load %struct.memstick_host*, %struct.memstick_host** %4, align 8
  %102 = load %struct.tifm_ms*, %struct.tifm_ms** %2, align 8
  %103 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %102, i32 0, i32 0
  %104 = call i32 @memstick_next_req(%struct.memstick_host* %101, %struct.TYPE_2__** %103)
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %105
  %109 = load %struct.tifm_ms*, %struct.tifm_ms** %2, align 8
  %110 = call i64 @tifm_ms_issue_cmd(%struct.tifm_ms* %109)
  %111 = icmp ne i64 %110, 0
  br label %112

112:                                              ; preds = %108, %105
  %113 = phi i1 [ false, %105 ], [ %111, %108 ]
  br i1 %113, label %100, label %114

114:                                              ; preds = %112
  ret void
}

declare dso_local %struct.memstick_host* @tifm_get_drvdata(%struct.tifm_dev*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @tifm_unmap_sg(%struct.tifm_dev*, i32*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @memstick_next_req(%struct.memstick_host*, %struct.TYPE_2__**) #1

declare dso_local i64 @tifm_ms_issue_cmd(%struct.tifm_ms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
