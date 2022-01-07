; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-irq.c_ivtv_unfinished_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-irq.c_ivtv_unfinished_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, i32 }
%struct.timer_list = type { i32 }

@dma_timer = common dso_local global i32 0, align 4
@IVTV_F_I_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"DMA TIMEOUT %08x %d\0A\00", align 1
@IVTV_REG_DMASTATUS = common dso_local global i32 0, align 4
@IVTV_F_I_UDMA = common dso_local global i32 0, align 4
@itv = common dso_local global %struct.ivtv* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_unfinished_dma(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ivtv*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %5 = ptrtoint %struct.ivtv* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @dma_timer, align 4
  %8 = call %struct.ivtv* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.ivtv* %8, %struct.ivtv** %3, align 8
  %9 = load i32, i32* @IVTV_F_I_DMA, align 4
  %10 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %11 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %10, i32 0, i32 2
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %40

15:                                               ; preds = %1
  %16 = load i32, i32* @IVTV_REG_DMASTATUS, align 4
  %17 = call i32 @read_reg(i32 %16)
  %18 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %19 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @IVTV_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load i32, i32* @IVTV_REG_DMASTATUS, align 4
  %23 = call i32 @read_reg(i32 %22)
  %24 = and i32 %23, 3
  %25 = load i32, i32* @IVTV_REG_DMASTATUS, align 4
  %26 = call i32 @write_reg(i32 %24, i32 %25)
  %27 = load i32, i32* @IVTV_F_I_UDMA, align 4
  %28 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %29 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %28, i32 0, i32 2
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  %31 = load i32, i32* @IVTV_F_I_DMA, align 4
  %32 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %33 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %32, i32 0, i32 2
  %34 = call i32 @clear_bit(i32 %31, i32* %33)
  %35 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %36 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 4
  %37 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %38 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %37, i32 0, i32 1
  %39 = call i32 @wake_up(i32* %38)
  br label %40

40:                                               ; preds = %15, %14
  ret void
}

declare dso_local %struct.ivtv* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @IVTV_ERR(i8*, i32, i32) #1

declare dso_local i32 @read_reg(i32) #1

declare dso_local i32 @write_reg(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
