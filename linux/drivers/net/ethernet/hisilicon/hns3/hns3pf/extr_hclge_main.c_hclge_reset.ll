; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.hnae3_ae_dev = type { i32 }

@HNAE3_DOWN_CLIENT = common dso_local global i32 0, align 4
@HNAE3_UNINIT_CLIENT = common dso_local global i32 0, align 4
@HNAE3_INIT_CLIENT = common dso_local global i32 0, align 4
@HCLGE_RESET_MAX_FAIL_CNT = common dso_local global i32 0, align 4
@HNAE3_UP_CLIENT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HNAE3_NONE_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*)* @hclge_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_reset(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca %struct.hnae3_ae_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  %6 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %7 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.hnae3_ae_dev* @pci_get_drvdata(i32 %8)
  store %struct.hnae3_ae_dev* %9, %struct.hnae3_ae_dev** %3, align 8
  %10 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %11 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %16 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %21 = load i32, i32* @HNAE3_DOWN_CLIENT, align 4
  %22 = call i32 @hclge_notify_roce_client(%struct.hclge_dev* %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %141

26:                                               ; preds = %1
  %27 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %28 = call i32 @hclge_reset_prepare_down(%struct.hclge_dev* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %141

32:                                               ; preds = %26
  %33 = call i32 (...) @rtnl_lock()
  %34 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %35 = load i32, i32* @HNAE3_DOWN_CLIENT, align 4
  %36 = call i32 @hclge_notify_client(%struct.hclge_dev* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %139

40:                                               ; preds = %32
  %41 = call i32 (...) @rtnl_unlock()
  %42 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %43 = call i32 @hclge_reset_prepare_wait(%struct.hclge_dev* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %141

47:                                               ; preds = %40
  %48 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %49 = call i64 @hclge_reset_wait(%struct.hclge_dev* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %141

52:                                               ; preds = %47
  %53 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %54 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %59 = load i32, i32* @HNAE3_UNINIT_CLIENT, align 4
  %60 = call i32 @hclge_notify_roce_client(%struct.hclge_dev* %58, i32 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  br label %141

64:                                               ; preds = %52
  %65 = call i32 (...) @rtnl_lock()
  %66 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %67 = call i32 @hclge_reset_stack(%struct.hclge_dev* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %139

71:                                               ; preds = %64
  %72 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %73 = call i32 @hclge_clear_reset_cause(%struct.hclge_dev* %72)
  %74 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %75 = call i32 @hclge_reset_prepare_up(%struct.hclge_dev* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  br label %139

79:                                               ; preds = %71
  %80 = call i32 (...) @rtnl_unlock()
  %81 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %82 = load i32, i32* @HNAE3_INIT_CLIENT, align 4
  %83 = call i32 @hclge_notify_roce_client(%struct.hclge_dev* %81, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %88 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @HCLGE_RESET_MAX_FAIL_CNT, align 4
  %92 = sub nsw i32 %91, 1
  %93 = icmp slt i32 %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %141

95:                                               ; preds = %86, %79
  %96 = call i32 (...) @rtnl_lock()
  %97 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %98 = load i32, i32* @HNAE3_UP_CLIENT, align 4
  %99 = call i32 @hclge_notify_client(%struct.hclge_dev* %97, i32 %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %139

103:                                              ; preds = %95
  %104 = call i32 (...) @rtnl_unlock()
  %105 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %106 = load i32, i32* @HNAE3_UP_CLIENT, align 4
  %107 = call i32 @hclge_notify_roce_client(%struct.hclge_dev* %105, i32 %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  br label %141

111:                                              ; preds = %103
  %112 = load i32, i32* @jiffies, align 4
  %113 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %114 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 4
  %115 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %116 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  store i32 0, i32* %117, align 4
  %118 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %119 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load i32, i32* @HNAE3_NONE_RESET, align 4
  %124 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %125 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %3, align 8
  %127 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %128 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %127, i32 0, i32 2
  %129 = call i32 @hclge_get_reset_level(%struct.hnae3_ae_dev* %126, i32* %128)
  store i32 %129, i32* %4, align 4
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @HNAE3_NONE_RESET, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %111
  %134 = load i32, i32* %4, align 4
  %135 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %136 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %135, i32 0, i32 1
  %137 = call i32 @set_bit(i32 %134, i32* %136)
  br label %138

138:                                              ; preds = %133, %111
  br label %148

139:                                              ; preds = %102, %78, %70, %39
  %140 = call i32 (...) @rtnl_unlock()
  br label %141

141:                                              ; preds = %139, %110, %94, %63, %51, %46, %31, %25
  %142 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %143 = call i64 @hclge_reset_err_handle(%struct.hclge_dev* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %147 = call i32 @hclge_reset_task_schedule(%struct.hclge_dev* %146)
  br label %148

148:                                              ; preds = %138, %145, %141
  ret void
}

declare dso_local %struct.hnae3_ae_dev* @pci_get_drvdata(i32) #1

declare dso_local i32 @hclge_notify_roce_client(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_reset_prepare_down(%struct.hclge_dev*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @hclge_notify_client(%struct.hclge_dev*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @hclge_reset_prepare_wait(%struct.hclge_dev*) #1

declare dso_local i64 @hclge_reset_wait(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_reset_stack(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_clear_reset_cause(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_reset_prepare_up(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_get_reset_level(%struct.hnae3_ae_dev*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @hclge_reset_err_handle(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_reset_task_schedule(%struct.hclge_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
