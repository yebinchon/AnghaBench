; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_bufs_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_bufs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mvpp2_bm_pool = type { i64, i64, i64, i32 }

@MVPP2_BM_LONG_PKT_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"attempted to use jumbo frames with per-cpu pools\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"cannot allocate %d buffers for pool %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"pool %d: pkt_size=%4d, buf_size=%4d, total_size=%4d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"pool %d: %d of %d buffers added\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2_port*, %struct.mvpp2_bm_pool*, i32)* @mvpp2_bm_bufs_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_bm_bufs_add(%struct.mvpp2_port* %0, %struct.mvpp2_bm_pool* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvpp2_port*, align 8
  %6 = alloca %struct.mvpp2_bm_pool*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %5, align 8
  store %struct.mvpp2_bm_pool* %1, %struct.mvpp2_bm_pool** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %15 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %3
  %21 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %6, align 8
  %22 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MVPP2_BM_LONG_PKT_SIZE, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %28 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i8*, ...) @netdev_err(i32 %29, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %114

31:                                               ; preds = %20, %3
  %32 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %6, align 8
  %33 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @MVPP2_RX_BUF_SIZE(i64 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @MVPP2_RX_TOTAL_SIZE(i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %6, align 8
  %44 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %6, align 8
  %48 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %40, %31
  %52 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %53 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %6, align 8
  %57 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i8*, ...) @netdev_err(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %58)
  store i32 0, i32* %4, align 4
  br label %114

60:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %81, %60
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %61
  %66 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %67 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %6, align 8
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @mvpp2_buf_alloc(%struct.mvpp2_port* %66, %struct.mvpp2_bm_pool* %67, i32* %11, i32* %12, i32 %68)
  store i8* %69, i8** %13, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  br label %84

73:                                               ; preds = %65
  %74 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %75 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %6, align 8
  %76 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @mvpp2_bm_pool_put(%struct.mvpp2_port* %74, i32 %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %73
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %61

84:                                               ; preds = %72, %61
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %6, align 8
  %88 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, %86
  store i64 %90, i64* %88, align 8
  %91 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %92 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %6, align 8
  %95 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %6, align 8
  %98 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 (i32, i8*, i32, i32, i32, ...) @netdev_dbg(i32 %93, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %96, i32 %100, i32 %101, i32 %102)
  %104 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %105 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %6, align 8
  %108 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 (i32, i8*, i32, i32, i32, ...) @netdev_dbg(i32 %106, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %84, %51, %26
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i32 @MVPP2_RX_BUF_SIZE(i64) #1

declare dso_local i32 @MVPP2_RX_TOTAL_SIZE(i32) #1

declare dso_local i8* @mvpp2_buf_alloc(%struct.mvpp2_port*, %struct.mvpp2_bm_pool*, i32*, i32*, i32) #1

declare dso_local i32 @mvpp2_bm_pool_put(%struct.mvpp2_port*, i32, i32, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
