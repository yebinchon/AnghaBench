; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_pause_setup_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_pause_setup_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"GE MAC does not support pfc\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"config pfc failed! ret = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclge_pause_setup_hw(%struct.hclge_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %8 = call i32 @hclge_pause_param_setup_hw(%struct.hclge_dev* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %56

13:                                               ; preds = %2
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %15 = call i32 @hclge_mac_pause_setup_hw(%struct.hclge_dev* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %56

20:                                               ; preds = %13
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %22 = call i32 @hnae3_dev_dcb_supported(%struct.hclge_dev* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %56

25:                                               ; preds = %20
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %27 = call i32 @hclge_pfc_setup_hw(%struct.hclge_dev* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %37 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @dev_warn(i32* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %53

41:                                               ; preds = %30, %25
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %46 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %56

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %35
  %54 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %55 = call i32 @hclge_tm_bp_setup(%struct.hclge_dev* %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %44, %24, %18, %11
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @hclge_pause_param_setup_hw(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_mac_pause_setup_hw(%struct.hclge_dev*) #1

declare dso_local i32 @hnae3_dev_dcb_supported(%struct.hclge_dev*) #1

declare dso_local i32 @hclge_pfc_setup_hw(%struct.hclge_dev*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclge_tm_bp_setup(%struct.hclge_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
