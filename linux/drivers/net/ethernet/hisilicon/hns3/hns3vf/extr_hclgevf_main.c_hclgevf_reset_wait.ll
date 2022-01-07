; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_reset_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_reset_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i64, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@HNAE3_FLR_RESET = common dso_local global i64 0, align 8
@HNAE3_VF_RESET = common dso_local global i64 0, align 8
@HCLGEVF_VF_RST_ING = common dso_local global i64 0, align 8
@HCLGEVF_VF_RST_ING_BIT = common dso_local global i32 0, align 4
@HCLGEVF_RST_ING = common dso_local global i64 0, align 8
@HCLGEVF_RST_ING_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"could'nt get reset done status from h/w, timeout!\0A\00", align 1
@HCLGEVF_RESET_WAIT_CNT = common dso_local global i32 0, align 4
@HCLGEVF_RESET_WAIT_TIMEOUT_US = common dso_local global i32 0, align 4
@HCLGEVF_RESET_WAIT_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*)* @hclgevf_reset_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_reset_wait(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  %6 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HNAE3_FLR_RESET, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %13 = call i32 @hclgevf_flr_poll_timeout(%struct.hclgevf_dev* %12, i32 20000, i32 2000)
  store i32 %13, i32* %2, align 4
  br label %63

14:                                               ; preds = %1
  %15 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HNAE3_VF_RESET, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %22 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @HCLGEVF_VF_RST_ING, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @HCLGEVF_VF_RST_ING_BIT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @readl_poll_timeout(i64 %26, i32 %27, i32 %33, i32 20000, i32 40000000)
  store i32 %34, i32* %5, align 4
  br label %50

35:                                               ; preds = %14
  %36 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %37 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @HCLGEVF_RST_ING, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @HCLGEVF_RST_ING_BITS, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @readl_poll_timeout(i64 %41, i32 %42, i32 %48, i32 20000, i32 40000000)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %35, %20
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %56 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %63

61:                                               ; preds = %51
  %62 = call i32 @msleep(i32 5000)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %54, %11
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @hclgevf_flr_poll_timeout(%struct.hclgevf_dev*, i32, i32) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
