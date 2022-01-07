; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_bp_setup_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_bp_setup_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.hclge_vport* }
%struct.hclge_vport = type { i32 }

@HCLGE_BP_GRP_NUM = common dso_local global i32 0, align 4
@HCLGE_BP_GRP_ID_M = common dso_local global i32 0, align 4
@HCLGE_BP_GRP_ID_S = common dso_local global i32 0, align 4
@HCLGE_BP_SUB_GRP_ID_M = common dso_local global i32 0, align 4
@HCLGE_BP_SUB_GRP_ID_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32)* @hclge_bp_setup_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_bp_setup_hw(%struct.hclge_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hclge_vport*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %68, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @HCLGE_BP_GRP_NUM, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %71

18:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %54, %18
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %22 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %19
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %27 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %26, i32 0, i32 1
  %28 = load %struct.hclge_vport*, %struct.hclge_vport** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %28, i64 %30
  store %struct.hclge_vport* %31, %struct.hclge_vport** %10, align 8
  %32 = load %struct.hclge_vport*, %struct.hclge_vport** %10, align 8
  %33 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @HCLGE_BP_GRP_ID_M, align 4
  %39 = load i32, i32* @HCLGE_BP_GRP_ID_S, align 4
  %40 = call i32 @hnae3_get_field(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @HCLGE_BP_SUB_GRP_ID_M, align 4
  %43 = load i32, i32* @HCLGE_BP_SUB_GRP_ID_S, align 4
  %44 = call i32 @hnae3_get_field(i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %25
  %49 = load i32, i32* %13, align 4
  %50 = shl i32 1, %49
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %48, %25
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %19

57:                                               ; preds = %19
  %58 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @hclge_tm_qs_bp_cfg(%struct.hclge_dev* %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %3, align 4
  br label %72

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %14

71:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %65
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @hnae3_get_field(i32, i32, i32) #1

declare dso_local i32 @hclge_tm_qs_bp_cfg(%struct.hclge_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
