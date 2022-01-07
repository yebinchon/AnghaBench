; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_misc_irq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_misc_irq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@hclge_misc_irq_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"hclge_misc\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"request misc irq(%d) fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_misc_irq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_misc_irq_init(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  %4 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %5 = call i32 @hclge_get_misc_vector(%struct.hclge_dev* %4)
  %6 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %7 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @hclge_misc_irq_handle, align 4
  %11 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %12 = call i32 @request_irq(i32 %9, i32 %10, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.hclge_dev* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %17 = call i32 @hclge_free_vector(%struct.hclge_dev* %16, i32 0)
  %18 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %19 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %23 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %15, %1
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @hclge_get_misc_vector(%struct.hclge_dev*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.hclge_dev*) #1

declare dso_local i32 @hclge_free_vector(%struct.hclge_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
