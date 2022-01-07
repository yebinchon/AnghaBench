; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_misc_irq_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_misc_irq_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i32 }

@HCLGEVF_VECTOR0_EVENT_OTHER = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hclgevf_misc_irq_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_misc_irq_handle(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hclgevf_dev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.hclgevf_dev*
  store %struct.hclgevf_dev* %9, %struct.hclgevf_dev** %6, align 8
  %10 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %11 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %10, i32 0, i32 0
  %12 = call i32 @hclgevf_enable_vector(i32* %11, i32 0)
  %13 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %14 = call i32 @hclgevf_check_evt_cause(%struct.hclgevf_dev* %13, i32* %7)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %22 [
    i32 128, label %16
    i32 129, label %19
  ]

16:                                               ; preds = %2
  %17 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %18 = call i32 @hclgevf_reset_task_schedule(%struct.hclgevf_dev* %17)
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %21 = call i32 @hclgevf_mbx_handler(%struct.hclgevf_dev* %20)
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %19, %16
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @HCLGEVF_VECTOR0_EVENT_OTHER, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @hclgevf_clear_event_cause(%struct.hclgevf_dev* %28, i32 %29)
  %31 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %6, align 8
  %32 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %31, i32 0, i32 0
  %33 = call i32 @hclgevf_enable_vector(i32* %32, i32 1)
  br label %34

34:                                               ; preds = %27, %23
  %35 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %35
}

declare dso_local i32 @hclgevf_enable_vector(i32*, i32) #1

declare dso_local i32 @hclgevf_check_evt_cause(%struct.hclgevf_dev*, i32*) #1

declare dso_local i32 @hclgevf_reset_task_schedule(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_mbx_handler(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_clear_event_cause(%struct.hclgevf_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
