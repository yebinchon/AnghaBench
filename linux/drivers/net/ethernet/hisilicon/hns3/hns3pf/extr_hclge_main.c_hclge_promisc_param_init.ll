; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_promisc_param_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_promisc_param_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_promisc_param = type { i32, i32 }

@HCLGE_PROMISC_EN_UC = common dso_local global i32 0, align 4
@HCLGE_PROMISC_EN_MC = common dso_local global i32 0, align 4
@HCLGE_PROMISC_EN_BC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hclge_promisc_param_init(%struct.hclge_promisc_param* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hclge_promisc_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hclge_promisc_param* %0, %struct.hclge_promisc_param** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.hclge_promisc_param*, %struct.hclge_promisc_param** %6, align 8
  %12 = icmp ne %struct.hclge_promisc_param* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  br label %45

14:                                               ; preds = %5
  %15 = load %struct.hclge_promisc_param*, %struct.hclge_promisc_param** %6, align 8
  %16 = call i32 @memset(%struct.hclge_promisc_param* %15, i32 0, i32 8)
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* @HCLGE_PROMISC_EN_UC, align 4
  %21 = load %struct.hclge_promisc_param*, %struct.hclge_promisc_param** %6, align 8
  %22 = getelementptr inbounds %struct.hclge_promisc_param, %struct.hclge_promisc_param* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %19, %14
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* @HCLGE_PROMISC_EN_MC, align 4
  %28 = load %struct.hclge_promisc_param*, %struct.hclge_promisc_param** %6, align 8
  %29 = getelementptr inbounds %struct.hclge_promisc_param, %struct.hclge_promisc_param* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %23
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* @HCLGE_PROMISC_EN_BC, align 4
  %37 = load %struct.hclge_promisc_param*, %struct.hclge_promisc_param** %6, align 8
  %38 = getelementptr inbounds %struct.hclge_promisc_param, %struct.hclge_promisc_param* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %32
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.hclge_promisc_param*, %struct.hclge_promisc_param** %6, align 8
  %44 = getelementptr inbounds %struct.hclge_promisc_param, %struct.hclge_promisc_param* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %13
  ret void
}

declare dso_local i32 @memset(%struct.hclge_promisc_param*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
