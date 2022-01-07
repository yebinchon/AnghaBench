; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-irq.c_ivtv_irq_dec_vbi_reinsert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-irq.c_ivtv_irq_dec_vbi_reinsert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.ivtv_stream* }
%struct.ivtv_stream = type { i32 }

@CX2341X_MBOX_MAX_DATA = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"DEC VBI REINSERT\0A\00", align 1
@IVTV_F_S_CLAIMED = common dso_local global i32 0, align 4
@IVTV_F_S_PIO_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*)* @ivtv_irq_dec_vbi_reinsert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_irq_dec_vbi_reinsert(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ivtv_stream*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %6 = load i32, i32* @CX2341X_MBOX_MAX_DATA, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %11 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %10, i32 0, i32 0
  %12 = load %struct.ivtv_stream*, %struct.ivtv_stream** %11, align 8
  %13 = load i64, i64* @IVTV_DEC_STREAM_TYPE_VBI, align 8
  %14 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %12, i64 %13
  store %struct.ivtv_stream* %14, %struct.ivtv_stream** %5, align 8
  %15 = call i32 @IVTV_DEBUG_HI_IRQ(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @IVTV_F_S_CLAIMED, align 4
  %17 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %18 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %17, i32 0, i32 0
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %23 = call i32 @stream_enc_dma_append(%struct.ivtv_stream* %22, i32* %9)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @IVTV_F_S_PIO_PENDING, align 4
  %27 = load %struct.ivtv_stream*, %struct.ivtv_stream** %5, align 8
  %28 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %27, i32 0, i32 0
  %29 = call i32 @set_bit(i32 %26, i32* %28)
  br label %30

30:                                               ; preds = %25, %21, %1
  %31 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %31)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @IVTV_DEBUG_HI_IRQ(i8*) #2

declare dso_local i64 @test_bit(i32, i32*) #2

declare dso_local i32 @stream_enc_dma_append(%struct.ivtv_stream*, i32*) #2

declare dso_local i32 @set_bit(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
