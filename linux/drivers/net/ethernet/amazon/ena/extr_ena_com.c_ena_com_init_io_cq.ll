; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_init_io_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_init_io_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32 }
%struct.ena_com_create_io_ctx = type { i32 }
%struct.ena_com_io_cq = type { i32, i64, i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

@ENA_COM_IO_QUEUE_DIRECTION_TX = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"memory allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_dev*, %struct.ena_com_create_io_ctx*, %struct.ena_com_io_cq*)* @ena_com_init_io_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_init_io_cq(%struct.ena_com_dev* %0, %struct.ena_com_create_io_ctx* %1, %struct.ena_com_io_cq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_com_dev*, align 8
  %6 = alloca %struct.ena_com_create_io_ctx*, align 8
  %7 = alloca %struct.ena_com_io_cq*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %5, align 8
  store %struct.ena_com_create_io_ctx* %1, %struct.ena_com_create_io_ctx** %6, align 8
  store %struct.ena_com_io_cq* %2, %struct.ena_com_io_cq** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %11 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %10, i32 0, i32 5
  %12 = call i32 @memset(%struct.TYPE_2__* %11, i32 0, i32 16)
  %13 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %14 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ENA_COM_IO_QUEUE_DIRECTION_TX, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i64 4, i64 4
  %20 = trunc i64 %19 to i32
  %21 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %22 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %24 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %28 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = mul i64 %26, %29
  store i64 %30, i64* %8, align 8
  %31 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %32 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_to_node(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %36 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %6, align 8
  %39 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @set_dev_node(i32 %37, i32 %40)
  %42 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %43 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %47 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @dma_alloc_coherent(i32 %44, i64 %45, i32* %48, i32 %49)
  %51 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %52 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %55 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @set_dev_node(i32 %56, i32 %57)
  %59 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %60 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %77, label %64

64:                                               ; preds = %3
  %65 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %66 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %8, align 8
  %69 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %70 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i8* @dma_alloc_coherent(i32 %67, i64 %68, i32* %71, i32 %72)
  %74 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %75 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i8* %73, i8** %76, align 8
  br label %77

77:                                               ; preds = %64, %3
  %78 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %79 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %77
  %84 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %92

87:                                               ; preds = %77
  %88 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %89 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %88, i32 0, i32 3
  store i32 1, i32* %89, align 8
  %90 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %91 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %90, i32 0, i32 4
  store i64 0, i64* %91, align 8
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %87, %83
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @dev_to_node(i32) #1

declare dso_local i32 @set_dev_node(i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
