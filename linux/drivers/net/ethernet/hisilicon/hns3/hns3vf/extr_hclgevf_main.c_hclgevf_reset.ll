; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { %struct.TYPE_3__, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hnae3_ae_dev = type { i32 }

@HNAE3_DOWN_CLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"VF failed(=%d) to fetch H/W reset completion status\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to reset VF stack\0A\00", align 1
@HNAE3_UP_CLIENT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HNAE3_NONE_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*)* @hclgevf_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_reset(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca %struct.hnae3_ae_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  %6 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call %struct.hnae3_ae_dev* @pci_get_drvdata(%struct.TYPE_4__* %8)
  store %struct.hnae3_ae_dev* %9, %struct.hnae3_ae_dev** %4, align 8
  %10 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %14 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = call i32 (...) @rtnl_lock()
  %21 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %22 = load i32, i32* @HNAE3_DOWN_CLIENT, align 4
  %23 = call i32 @hclgevf_notify_client(%struct.hclgevf_dev* %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %87

27:                                               ; preds = %1
  %28 = call i32 (...) @rtnl_unlock()
  %29 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %30 = call i32 @hclgevf_reset_prepare_wait(%struct.hclgevf_dev* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %89

34:                                               ; preds = %27
  %35 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %36 = call i32 @hclgevf_reset_wait(%struct.hclgevf_dev* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %41 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (i32*, i8*, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %89

46:                                               ; preds = %34
  %47 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %48 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = call i32 (...) @rtnl_lock()
  %53 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %54 = call i32 @hclgevf_reset_stack(%struct.hclgevf_dev* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %46
  %58 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %59 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %87

63:                                               ; preds = %46
  %64 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %65 = load i32, i32* @HNAE3_UP_CLIENT, align 4
  %66 = call i32 @hclgevf_notify_client(%struct.hclgevf_dev* %64, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %87

70:                                               ; preds = %63
  %71 = call i32 (...) @rtnl_unlock()
  %72 = load i32, i32* @jiffies, align 4
  %73 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %74 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @HNAE3_NONE_RESET, align 4
  %76 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %77 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %79 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  %83 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %84 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %93

87:                                               ; preds = %69, %57, %26
  %88 = call i32 (...) @rtnl_unlock()
  br label %89

89:                                               ; preds = %87, %39, %33
  %90 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %91 = call i32 @hclgevf_reset_err_handle(%struct.hclgevf_dev* %90)
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %89, %70
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.hnae3_ae_dev* @pci_get_drvdata(%struct.TYPE_4__*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @hclgevf_notify_client(%struct.hclgevf_dev*, i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @hclgevf_reset_prepare_wait(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_reset_wait(%struct.hclgevf_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @hclgevf_reset_stack(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_reset_err_handle(%struct.hclgevf_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
