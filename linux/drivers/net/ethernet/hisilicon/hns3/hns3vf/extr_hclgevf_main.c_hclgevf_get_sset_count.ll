; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }

@ETH_SS_TEST = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_SS_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i32)* @hclgevf_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_get_sset_count(%struct.hnae3_handle* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ETH_SS_TEST, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EOPNOTSUPP, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %22

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ETH_SS_STATS, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @hclgevf_tqps_get_sset_count(%struct.hnae3_handle* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %22

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %16, %9
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @hclgevf_tqps_get_sset_count(%struct.hnae3_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
