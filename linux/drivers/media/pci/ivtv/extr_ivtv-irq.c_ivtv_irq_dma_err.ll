; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-irq.c_ivtv_irq_dma_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-irq.c_ivtv_irq_dma_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i64, i32, i32, i32, %struct.TYPE_3__, %struct.ivtv_stream*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.ivtv_stream = type { i64, i64 }

@CX2341X_MBOX_MAX_DATA = common dso_local global i32 0, align 4
@IVTV_MBOX_DMA_END = common dso_local global i32 0, align 4
@IVTV_REG_DMASTATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"DMA ERROR %08x %08x %08x %d\0A\00", align 1
@IVTV_F_I_UDMA = common dso_local global i32 0, align 4
@IVTV_MAX_STREAMS = common dso_local global i64 0, align 8
@IVTV_DEC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@IVTV_F_I_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*)* @ivtv_irq_dma_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_irq_dma_err(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ivtv_stream*, align 8
  %7 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %8 = load i32, i32* @CX2341X_MBOX_MAX_DATA, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %13 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %12, i32 0, i32 4
  %14 = call i32 @del_timer(%struct.TYPE_3__* %13)
  %15 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %16 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %15, i32 0, i32 6
  %17 = load i32, i32* @IVTV_MBOX_DMA_END, align 4
  %18 = call i32 @ivtv_api_get_data(i32* %16, i32 %17, i32 2, i32* %11)
  %19 = load i32, i32* @IVTV_REG_DMASTATUS, align 4
  %20 = call i32 @read_reg(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = getelementptr inbounds i32, i32* %11, i64 0
  %22 = load i32, i32* %21, align 16
  %23 = getelementptr inbounds i32, i32* %11, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %27 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %24, i32 %25, i64 %28)
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 3
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @IVTV_REG_DMASTATUS, align 4
  %37 = call i32 @write_reg(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %1
  %39 = load i32, i32* @IVTV_F_I_UDMA, align 4
  %40 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %41 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %40, i32 0, i32 3
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %101, label %44

44:                                               ; preds = %38
  %45 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %46 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp uge i64 %47, 0
  br i1 %48, label %49, label %101

49:                                               ; preds = %44
  %50 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %51 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IVTV_MAX_STREAMS, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %101

55:                                               ; preds = %49
  %56 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %57 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %56, i32 0, i32 5
  %58 = load %struct.ivtv_stream*, %struct.ivtv_stream** %57, align 8
  %59 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %60 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %58, i64 %61
  store %struct.ivtv_stream* %62, %struct.ivtv_stream** %6, align 8
  %63 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %64 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IVTV_DEC_STREAM_TYPE_MPG, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %55
  %69 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %70 = call i32 @ivtv_dma_dec_start(%struct.ivtv_stream* %69)
  store i32 1, i32* %7, align 4
  br label %124

71:                                               ; preds = %55
  %72 = load i32, i32* %5, align 4
  %73 = and i32 %72, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %71
  %76 = load i64, i64* @jiffies, align 8
  %77 = call i64 @msecs_to_jiffies(i32 600)
  %78 = add nsw i64 %76, %77
  %79 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %80 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  %82 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %83 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %82, i32 0, i32 4
  %84 = call i32 @add_timer(%struct.TYPE_3__* %83)
  store i32 1, i32* %7, align 4
  br label %124

85:                                               ; preds = %71
  %86 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %87 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %88, 3
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %92 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %94 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = load %struct.ivtv_stream*, %struct.ivtv_stream** %6, align 8
  %98 = call i32 @ivtv_dma_enc_start_xfer(%struct.ivtv_stream* %97)
  store i32 1, i32* %7, align 4
  br label %124

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100, %49, %44, %38
  %102 = load i32, i32* @IVTV_F_I_UDMA, align 4
  %103 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %104 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %103, i32 0, i32 3
  %105 = call i64 @test_bit(i32 %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %109 = call i32 @ivtv_udma_start(%struct.ivtv* %108)
  store i32 1, i32* %7, align 4
  br label %124

110:                                              ; preds = %101
  %111 = load i32, i32* @IVTV_F_I_UDMA, align 4
  %112 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %113 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %112, i32 0, i32 3
  %114 = call i32 @clear_bit(i32 %111, i32* %113)
  %115 = load i32, i32* @IVTV_F_I_DMA, align 4
  %116 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %117 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %116, i32 0, i32 3
  %118 = call i32 @clear_bit(i32 %115, i32* %117)
  %119 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %120 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %119, i32 0, i32 0
  store i64 -1, i64* %120, align 8
  %121 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %122 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %121, i32 0, i32 2
  %123 = call i32 @wake_up(i32* %122)
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %110, %107, %90, %75, %68
  %125 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %125)
  %126 = load i32, i32* %7, align 4
  switch i32 %126, label %128 [
    i32 0, label %127
    i32 1, label %127
  ]

127:                                              ; preds = %124, %124
  ret void

128:                                              ; preds = %124
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @del_timer(%struct.TYPE_3__*) #2

declare dso_local i32 @ivtv_api_get_data(i32*, i32, i32, i32*) #2

declare dso_local i32 @read_reg(i32) #2

declare dso_local i32 @IVTV_DEBUG_WARN(i8*, i32, i32, i32, i64) #2

declare dso_local i32 @write_reg(i32, i32) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @ivtv_dma_dec_start(%struct.ivtv_stream*) #2

declare dso_local i64 @msecs_to_jiffies(i32) #2

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #2

declare dso_local i32 @ivtv_dma_enc_start_xfer(%struct.ivtv_stream*) #2

declare dso_local i32 @ivtv_udma_start(%struct.ivtv*) #2

declare dso_local i32 @clear_bit(i32, i32*) #2

declare dso_local i32 @wake_up(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
