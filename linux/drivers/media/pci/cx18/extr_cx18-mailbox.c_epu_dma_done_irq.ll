; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-mailbox.c_epu_dma_done_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-mailbox.c_epu_dma_done_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i64 }
%struct.cx18_in_work_order = type { i32, i64, %struct.cx18_mailbox }
%struct.cx18_mailbox = type { i64* }

@CX18_INVALID_TASK_HANDLE = common dso_local global i64 0, align 8
@CX18_MAX_MDL_ACKS = common dso_local global i64 0, align 8
@CX18_F_EWO_MB_STALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx18*, %struct.cx18_in_work_order*)* @epu_dma_done_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epu_dma_done_irq(%struct.cx18* %0, %struct.cx18_in_work_order* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx18*, align 8
  %5 = alloca %struct.cx18_in_work_order*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.cx18_mailbox*, align 8
  %10 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %4, align 8
  store %struct.cx18_in_work_order* %1, %struct.cx18_in_work_order** %5, align 8
  %11 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %5, align 8
  %12 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %11, i32 0, i32 2
  store %struct.cx18_mailbox* %12, %struct.cx18_mailbox** %9, align 8
  %13 = load %struct.cx18_mailbox*, %struct.cx18_mailbox** %9, align 8
  %14 = getelementptr inbounds %struct.cx18_mailbox, %struct.cx18_mailbox* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.cx18_mailbox*, %struct.cx18_mailbox** %9, align 8
  %19 = getelementptr inbounds %struct.cx18_mailbox, %struct.cx18_mailbox* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %7, align 8
  %23 = load %struct.cx18_mailbox*, %struct.cx18_mailbox** %9, align 8
  %24 = getelementptr inbounds %struct.cx18_mailbox, %struct.cx18_mailbox* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 2
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @CX18_INVALID_TASK_HANDLE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %38, label %31

31:                                               ; preds = %2
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @CX18_MAX_MDL_ACKS, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34, %31, %2
  %39 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %5, align 8
  %40 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CX18_F_EWO_MB_STALE, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.cx18*, %struct.cx18** %4, align 8
  %47 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %5, align 8
  %48 = call i32 @mb_ack_irq(%struct.cx18* %46, %struct.cx18_in_work_order* %47)
  br label %49

49:                                               ; preds = %45, %38
  store i32 -1, i32* %3, align 4
  br label %93

50:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %76, %50
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %8, align 8
  %55 = mul i64 4, %54
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %57, label %81

57:                                               ; preds = %51
  %58 = load %struct.cx18*, %struct.cx18** %4, align 8
  %59 = load %struct.cx18*, %struct.cx18** %4, align 8
  %60 = getelementptr inbounds %struct.cx18, %struct.cx18* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = add nsw i64 %61, %62
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = call i64 @cx18_readl(%struct.cx18* %58, i64 %66)
  %68 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %5, align 8
  %69 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i64*
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = udiv i64 %73, 8
  %75 = getelementptr inbounds i64, i64* %71, i64 %74
  store i64 %67, i64* %75, align 8
  br label %76

76:                                               ; preds = %57
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %78, 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %10, align 4
  br label %51

81:                                               ; preds = %51
  %82 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %5, align 8
  %83 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @CX18_F_EWO_MB_STALE, align 4
  %86 = and i32 %84, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load %struct.cx18*, %struct.cx18** %4, align 8
  %90 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %5, align 8
  %91 = call i32 @mb_ack_irq(%struct.cx18* %89, %struct.cx18_in_work_order* %90)
  br label %92

92:                                               ; preds = %88, %81
  store i32 1, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %49
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @mb_ack_irq(%struct.cx18*, %struct.cx18_in_work_order*) #1

declare dso_local i64 @cx18_readl(%struct.cx18*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
