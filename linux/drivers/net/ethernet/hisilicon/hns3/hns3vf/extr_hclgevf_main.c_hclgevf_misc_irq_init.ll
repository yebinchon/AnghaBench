; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_misc_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_misc_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@hclgevf_misc_irq_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"hclgevf_cmd\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"VF failed to request misc irq(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*)* @hclgevf_misc_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_misc_irq_init(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  %5 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %6 = call i32 @hclgevf_get_misc_vector(%struct.hclgevf_dev* %5)
  %7 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @hclgevf_misc_irq_handle, align 4
  %12 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %13 = call i32 @request_irq(i32 %10, i32 %11, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.hclgevf_dev* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %18 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %22 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %34

27:                                               ; preds = %1
  %28 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %29 = call i32 @hclgevf_clear_event_cause(%struct.hclgevf_dev* %28, i32 0)
  %30 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %31 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %30, i32 0, i32 0
  %32 = call i32 @hclgevf_enable_vector(%struct.TYPE_4__* %31, i32 1)
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %27, %16
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @hclgevf_get_misc_vector(%struct.hclgevf_dev*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.hclgevf_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclgevf_clear_event_cause(%struct.hclgevf_dev*, i32) #1

declare dso_local i32 @hclgevf_enable_vector(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
