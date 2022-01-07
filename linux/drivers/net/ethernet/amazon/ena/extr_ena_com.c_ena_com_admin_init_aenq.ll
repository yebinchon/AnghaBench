; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_admin_init_aenq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_admin_init_aenq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i64, %struct.ena_com_aenq, i32 }
%struct.ena_com_aenq = type { i32, i32, i32, %struct.ena_aenq_handlers*, i32, i32 }
%struct.ena_aenq_handlers = type { i32 }

@ENA_ASYNC_QUEUE_DEPTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"memory allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENA_REGS_AENQ_BASE_LO_OFF = common dso_local global i64 0, align 8
@ENA_REGS_AENQ_BASE_HI_OFF = common dso_local global i64 0, align 8
@ENA_REGS_AENQ_CAPS_AENQ_DEPTH_MASK = common dso_local global i32 0, align 4
@ENA_REGS_AENQ_CAPS_AENQ_ENTRY_SIZE_SHIFT = common dso_local global i32 0, align 4
@ENA_REGS_AENQ_CAPS_AENQ_ENTRY_SIZE_MASK = common dso_local global i32 0, align 4
@ENA_REGS_AENQ_CAPS_OFF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"aenq handlers pointer is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_dev*, %struct.ena_aenq_handlers*)* @ena_com_admin_init_aenq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_admin_init_aenq(%struct.ena_com_dev* %0, %struct.ena_aenq_handlers* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca %struct.ena_aenq_handlers*, align 8
  %6 = alloca %struct.ena_com_aenq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store %struct.ena_aenq_handlers* %1, %struct.ena_aenq_handlers** %5, align 8
  %11 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %12 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %11, i32 0, i32 1
  store %struct.ena_com_aenq* %12, %struct.ena_com_aenq** %6, align 8
  %13 = load i32, i32* @ENA_ASYNC_QUEUE_DEPTH, align 4
  %14 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %15 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* @ENA_ASYNC_QUEUE_DEPTH, align 4
  %18 = call i32 @ADMIN_AENQ_SIZE(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %20 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %24 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %23, i32 0, i32 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @dma_alloc_coherent(i32 %21, i32 %22, i32* %24, i32 %25)
  %27 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %28 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %30 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %2
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %106

37:                                               ; preds = %2
  %38 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %39 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %42 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %44 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %43, i32 0, i32 2
  store i32 1, i32* %44, align 8
  %45 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %46 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ENA_DMA_ADDR_TO_UINT32_LOW(i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %50 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @ENA_DMA_ADDR_TO_UINT32_HIGH(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %55 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ENA_REGS_AENQ_BASE_LO_OFF, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %62 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ENA_REGS_AENQ_BASE_HI_OFF, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  store i32 0, i32* %9, align 4
  %67 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %68 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @ENA_REGS_AENQ_CAPS_AENQ_DEPTH_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* @ENA_REGS_AENQ_CAPS_AENQ_ENTRY_SIZE_SHIFT, align 4
  %76 = zext i32 %75 to i64
  %77 = shl i64 4, %76
  %78 = load i32, i32* @ENA_REGS_AENQ_CAPS_AENQ_ENTRY_SIZE_MASK, align 4
  %79 = sext i32 %78 to i64
  %80 = and i64 %77, %79
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = or i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %87 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ENA_REGS_AENQ_CAPS_OFF, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %85, i64 %90)
  %92 = load %struct.ena_aenq_handlers*, %struct.ena_aenq_handlers** %5, align 8
  %93 = icmp ne %struct.ena_aenq_handlers* %92, null
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = call i64 @unlikely(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %37
  %99 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %106

102:                                              ; preds = %37
  %103 = load %struct.ena_aenq_handlers*, %struct.ena_aenq_handlers** %5, align 8
  %104 = load %struct.ena_com_aenq*, %struct.ena_com_aenq** %6, align 8
  %105 = getelementptr inbounds %struct.ena_com_aenq, %struct.ena_com_aenq* %104, i32 0, i32 3
  store %struct.ena_aenq_handlers* %103, %struct.ena_aenq_handlers** %105, align 8
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %98, %33
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @ADMIN_AENQ_SIZE(i32) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ENA_DMA_ADDR_TO_UINT32_LOW(i32) #1

declare dso_local i32 @ENA_DMA_ADDR_TO_UINT32_HIGH(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
