; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_state_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_state_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@HCLGEVF_STATE_DOWN = common dso_local global i32 0, align 4
@HCLGEVF_STATE_REMOVING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclgevf_dev*)* @hclgevf_state_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclgevf_state_uninit(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca %struct.hclgevf_dev*, align 8
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %2, align 8
  %3 = load i32, i32* @HCLGEVF_STATE_DOWN, align 4
  %4 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %5 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %4, i32 0, i32 7
  %6 = call i32 @set_bit(i32 %3, i32* %5)
  %7 = load i32, i32* @HCLGEVF_STATE_REMOVING, align 4
  %8 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %9 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %8, i32 0, i32 7
  %10 = call i32 @set_bit(i32 %7, i32* %9)
  %11 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %12 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %18 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %17, i32 0, i32 6
  %19 = call i32 @del_timer_sync(%struct.TYPE_5__* %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %22 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %28 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %27, i32 0, i32 5
  %29 = call i32 @cancel_work_sync(%struct.TYPE_6__* %28)
  br label %30

30:                                               ; preds = %26, %20
  %31 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %32 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %38 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %37, i32 0, i32 4
  %39 = call i32 @del_timer_sync(%struct.TYPE_5__* %38)
  br label %40

40:                                               ; preds = %36, %30
  %41 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %42 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %48 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %47, i32 0, i32 3
  %49 = call i32 @cancel_work_sync(%struct.TYPE_6__* %48)
  br label %50

50:                                               ; preds = %46, %40
  %51 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %52 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %58 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %57, i32 0, i32 2
  %59 = call i32 @cancel_work_sync(%struct.TYPE_6__* %58)
  br label %60

60:                                               ; preds = %56, %50
  %61 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %62 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %68 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %67, i32 0, i32 1
  %69 = call i32 @cancel_work_sync(%struct.TYPE_6__* %68)
  br label %70

70:                                               ; preds = %66, %60
  %71 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %2, align 8
  %72 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @mutex_destroy(i32* %73)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @del_timer_sync(%struct.TYPE_5__*) #1

declare dso_local i32 @cancel_work_sync(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
