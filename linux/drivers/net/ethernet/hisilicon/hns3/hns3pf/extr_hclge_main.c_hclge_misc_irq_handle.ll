; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_misc_irq_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_misc_irq_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@HNAE3_UNKNOWN_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"received unknown or unhandled event of vector0\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hclge_misc_irq_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_misc_irq_handle(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.hclge_dev*
  store %struct.hclge_dev* %9, %struct.hclge_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %11 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %10, i32 0, i32 0
  %12 = call i32 @hclge_enable_vector(i32* %11, i32 0)
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %14 = call i32 @hclge_check_event_cause(%struct.hclge_dev* %13, i32* %6)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %27 [
    i32 130, label %16
    i32 128, label %21
    i32 129, label %24
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* @HNAE3_UNKNOWN_RESET, align 4
  %18 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %19 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %18, i32 0, i32 2
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  br label %21

21:                                               ; preds = %2, %16
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %23 = call i32 @hclge_reset_task_schedule(%struct.hclge_dev* %22)
  br label %33

24:                                               ; preds = %2
  %25 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %26 = call i32 @hclge_mbx_task_schedule(%struct.hclge_dev* %25)
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %29 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @dev_warn(i32* %31, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %27, %24, %21
  %34 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @hclge_clear_event_cause(%struct.hclge_dev* %34, i32 %35, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 129
  br i1 %42, label %43, label %47

43:                                               ; preds = %40, %33
  %44 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %45 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %44, i32 0, i32 0
  %46 = call i32 @hclge_enable_vector(i32* %45, i32 1)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %48
}

declare dso_local i32 @hclge_enable_vector(i32*, i32) #1

declare dso_local i32 @hclge_check_event_cause(%struct.hclge_dev*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @hclge_reset_task_schedule(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_mbx_task_schedule(%struct.hclge_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @hclge_clear_event_cause(%struct.hclge_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
