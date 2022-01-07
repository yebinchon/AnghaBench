; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_dma_buf_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_fastrpc.c_fastrpc_dma_buf_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { %struct.fastrpc_buf* }
%struct.fastrpc_buf = type { i32, i32, i32, i32, i32, i32 }
%struct.dma_buf_attachment = type { %struct.fastrpc_dma_buf_attachment*, i32 }
%struct.fastrpc_dma_buf_attachment = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to get scatterlist from DMA API\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_buf*, %struct.dma_buf_attachment*)* @fastrpc_dma_buf_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fastrpc_dma_buf_attach(%struct.dma_buf* %0, %struct.dma_buf_attachment* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca %struct.dma_buf_attachment*, align 8
  %6 = alloca %struct.fastrpc_dma_buf_attachment*, align 8
  %7 = alloca %struct.fastrpc_buf*, align 8
  %8 = alloca i32, align 4
  store %struct.dma_buf* %0, %struct.dma_buf** %4, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %5, align 8
  %9 = load %struct.dma_buf*, %struct.dma_buf** %4, align 8
  %10 = getelementptr inbounds %struct.dma_buf, %struct.dma_buf* %9, i32 0, i32 0
  %11 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %10, align 8
  store %struct.fastrpc_buf* %11, %struct.fastrpc_buf** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.fastrpc_dma_buf_attachment* @kzalloc(i32 12, i32 %12)
  store %struct.fastrpc_dma_buf_attachment* %13, %struct.fastrpc_dma_buf_attachment** %6, align 8
  %14 = load %struct.fastrpc_dma_buf_attachment*, %struct.fastrpc_dma_buf_attachment** %6, align 8
  %15 = icmp ne %struct.fastrpc_dma_buf_attachment* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %70

19:                                               ; preds = %2
  %20 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %7, align 8
  %21 = getelementptr inbounds %struct.fastrpc_buf, %struct.fastrpc_buf* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fastrpc_dma_buf_attachment*, %struct.fastrpc_dma_buf_attachment** %6, align 8
  %24 = getelementptr inbounds %struct.fastrpc_dma_buf_attachment, %struct.fastrpc_dma_buf_attachment* %23, i32 0, i32 2
  %25 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %7, align 8
  %26 = getelementptr inbounds %struct.fastrpc_buf, %struct.fastrpc_buf* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %7, align 8
  %29 = getelementptr inbounds %struct.fastrpc_buf, %struct.fastrpc_buf* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @FASTRPC_PHYS(i32 %30)
  %32 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %7, align 8
  %33 = getelementptr inbounds %struct.fastrpc_buf, %struct.fastrpc_buf* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dma_get_sgtable(i32 %22, i32* %24, i32 %27, i32 %31, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %19
  %39 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %7, align 8
  %40 = getelementptr inbounds %struct.fastrpc_buf, %struct.fastrpc_buf* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.fastrpc_dma_buf_attachment*, %struct.fastrpc_dma_buf_attachment** %6, align 8
  %44 = call i32 @kfree(%struct.fastrpc_dma_buf_attachment* %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %70

47:                                               ; preds = %19
  %48 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %49 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.fastrpc_dma_buf_attachment*, %struct.fastrpc_dma_buf_attachment** %6, align 8
  %52 = getelementptr inbounds %struct.fastrpc_dma_buf_attachment, %struct.fastrpc_dma_buf_attachment* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.fastrpc_dma_buf_attachment*, %struct.fastrpc_dma_buf_attachment** %6, align 8
  %54 = getelementptr inbounds %struct.fastrpc_dma_buf_attachment, %struct.fastrpc_dma_buf_attachment* %53, i32 0, i32 0
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.fastrpc_dma_buf_attachment*, %struct.fastrpc_dma_buf_attachment** %6, align 8
  %57 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %58 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %57, i32 0, i32 0
  store %struct.fastrpc_dma_buf_attachment* %56, %struct.fastrpc_dma_buf_attachment** %58, align 8
  %59 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %7, align 8
  %60 = getelementptr inbounds %struct.fastrpc_buf, %struct.fastrpc_buf* %59, i32 0, i32 0
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.fastrpc_dma_buf_attachment*, %struct.fastrpc_dma_buf_attachment** %6, align 8
  %63 = getelementptr inbounds %struct.fastrpc_dma_buf_attachment, %struct.fastrpc_dma_buf_attachment* %62, i32 0, i32 0
  %64 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %7, align 8
  %65 = getelementptr inbounds %struct.fastrpc_buf, %struct.fastrpc_buf* %64, i32 0, i32 1
  %66 = call i32 @list_add(i32* %63, i32* %65)
  %67 = load %struct.fastrpc_buf*, %struct.fastrpc_buf** %7, align 8
  %68 = getelementptr inbounds %struct.fastrpc_buf, %struct.fastrpc_buf* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %47, %38, %16
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.fastrpc_dma_buf_attachment* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_get_sgtable(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @FASTRPC_PHYS(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @kfree(%struct.fastrpc_dma_buf_attachment*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
