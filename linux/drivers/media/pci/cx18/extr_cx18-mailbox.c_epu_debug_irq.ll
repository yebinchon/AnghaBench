; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-mailbox.c_epu_debug_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-mailbox.c_epu_debug_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i64 }
%struct.cx18_in_work_order = type { i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64* }

@SCB_OFFSET = common dso_local global i64 0, align 8
@CX18_F_EWO_MB_STALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx18*, %struct.cx18_in_work_order*)* @epu_debug_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epu_debug_irq(%struct.cx18* %0, %struct.cx18_in_work_order* %1) #0 {
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca %struct.cx18_in_work_order*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  store %struct.cx18_in_work_order* %1, %struct.cx18_in_work_order** %4, align 8
  %7 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %8 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 0, i8* %11, align 1
  %12 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %13 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %2
  %21 = load %struct.cx18*, %struct.cx18** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @cx18_setup_page(%struct.cx18* %21, i64 %22)
  %24 = load %struct.cx18*, %struct.cx18** %3, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load %struct.cx18*, %struct.cx18** %3, align 8
  %27 = getelementptr inbounds %struct.cx18, %struct.cx18* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @cx18_memcpy_fromio(%struct.cx18* %24, i8* %25, i64 %30, i32 252)
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 252
  store i8 0, i8* %33, align 1
  %34 = load %struct.cx18*, %struct.cx18** %3, align 8
  %35 = load i64, i64* @SCB_OFFSET, align 8
  %36 = call i32 @cx18_setup_page(%struct.cx18* %34, i64 %35)
  br label %37

37:                                               ; preds = %20, %2
  %38 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %39 = getelementptr inbounds %struct.cx18_in_work_order, %struct.cx18_in_work_order* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @CX18_F_EWO_MB_STALE, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.cx18*, %struct.cx18** %3, align 8
  %46 = load %struct.cx18_in_work_order*, %struct.cx18_in_work_order** %4, align 8
  %47 = call i32 @mb_ack_irq(%struct.cx18* %45, %struct.cx18_in_work_order* %46)
  br label %48

48:                                               ; preds = %44, %37
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  ret i32 %52
}

declare dso_local i32 @cx18_setup_page(%struct.cx18*, i64) #1

declare dso_local i32 @cx18_memcpy_fromio(%struct.cx18*, i8*, i64, i32) #1

declare dso_local i32 @mb_ack_irq(%struct.cx18*, %struct.cx18_in_work_order*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
