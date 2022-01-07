; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_setup_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_setup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd = type { i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@KVASER_PCIEFD_DMA_COUNT = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SRB_CTRL_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_DMA_MAP_BASE = common dso_local global i32 0, align 4
@KVASER_PCIEFD_DMA_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Rx dma_alloc(%u) failure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SRB_CMD_FOR = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SRB_CMD_RDB0 = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SRB_CMD_RDB1 = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SRB_CMD_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_SRB_STAT_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_SRB_STAT_DI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"DMA not idle before enabling\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@KVASER_PCIEFD_SRB_CTRL_DMA_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_pciefd*)* @kvaser_pciefd_setup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_setup_dma(%struct.kvaser_pciefd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvaser_pciefd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvaser_pciefd* %0, %struct.kvaser_pciefd** %3, align 8
  %10 = load i32, i32* @KVASER_PCIEFD_DMA_COUNT, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %15 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @KVASER_PCIEFD_SRB_CTRL_REG, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @iowrite32(i32 0, i64 %18)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %76, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @KVASER_PCIEFD_DMA_COUNT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %79

24:                                               ; preds = %20
  %25 = load i32, i32* @KVASER_PCIEFD_DMA_MAP_BASE, align 4
  %26 = load i32, i32* %4, align 4
  %27 = mul nsw i32 8, %26
  %28 = add nsw i32 %25, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %30 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* @KVASER_PCIEFD_DMA_SIZE, align 4
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %13, i64 %35
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32 @dmam_alloc_coherent(i32* %32, i32 %33, i32* %36, i32 %37)
  %39 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %40 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  %45 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %46 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %24
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %13, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %53, %24
  %60 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %61 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* @KVASER_PCIEFD_DMA_SIZE, align 4
  %65 = call i32 (i32*, i8*, ...) @dev_err(i32* %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %117

68:                                               ; preds = %53
  %69 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %13, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @kvaser_pciefd_write_dma_map(%struct.kvaser_pciefd* %69, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %20

79:                                               ; preds = %20
  %80 = load i32, i32* @KVASER_PCIEFD_SRB_CMD_FOR, align 4
  %81 = load i32, i32* @KVASER_PCIEFD_SRB_CMD_RDB0, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @KVASER_PCIEFD_SRB_CMD_RDB1, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %86 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @KVASER_PCIEFD_SRB_CMD_REG, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @iowrite32(i32 %84, i64 %89)
  %91 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %92 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @KVASER_PCIEFD_SRB_STAT_REG, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @ioread32(i64 %95)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @KVASER_PCIEFD_SRB_STAT_DI, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %79
  %102 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %103 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = call i32 (i32*, i8*, ...) @dev_err(i32* %105, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %107 = load i32, i32* @EIO, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %117

109:                                              ; preds = %79
  %110 = load i32, i32* @KVASER_PCIEFD_SRB_CTRL_DMA_ENABLE, align 4
  %111 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %112 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @KVASER_PCIEFD_SRB_CTRL_REG, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @iowrite32(i32 %110, i64 %115)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %117

117:                                              ; preds = %109, %101, %59
  %118 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @iowrite32(i32, i64) #2

declare dso_local i32 @dmam_alloc_coherent(i32*, i32, i32*, i32) #2

declare dso_local i32 @dev_err(i32*, i8*, ...) #2

declare dso_local i32 @kvaser_pciefd_write_dma_map(%struct.kvaser_pciefd*, i32, i32) #2

declare dso_local i32 @ioread32(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
