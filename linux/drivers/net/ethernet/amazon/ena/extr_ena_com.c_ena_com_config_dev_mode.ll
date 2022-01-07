; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_config_dev_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_config_dev_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i64, i32, %struct.ena_com_llq_info }
%struct.ena_com_llq_info = type { i64, i32 }
%struct.ena_admin_feature_llq_desc = type { i32 }
%struct.ena_llq_configurations = type { i32 }

@ENA_ADMIN_PLACEMENT_POLICY_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"the size of the LLQ entry is smaller than needed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENA_ADMIN_PLACEMENT_POLICY_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_config_dev_mode(%struct.ena_com_dev* %0, %struct.ena_admin_feature_llq_desc* %1, %struct.ena_llq_configurations* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_com_dev*, align 8
  %6 = alloca %struct.ena_admin_feature_llq_desc*, align 8
  %7 = alloca %struct.ena_llq_configurations*, align 8
  %8 = alloca %struct.ena_com_llq_info*, align 8
  %9 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %5, align 8
  store %struct.ena_admin_feature_llq_desc* %1, %struct.ena_admin_feature_llq_desc** %6, align 8
  store %struct.ena_llq_configurations* %2, %struct.ena_llq_configurations** %7, align 8
  %10 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %11 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %10, i32 0, i32 2
  store %struct.ena_com_llq_info* %11, %struct.ena_com_llq_info** %8, align 8
  %12 = load %struct.ena_admin_feature_llq_desc*, %struct.ena_admin_feature_llq_desc** %6, align 8
  %13 = getelementptr inbounds %struct.ena_admin_feature_llq_desc, %struct.ena_admin_feature_llq_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENA_ADMIN_PLACEMENT_POLICY_HOST, align 4
  %18 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %19 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  store i32 0, i32* %4, align 4
  br label %56

20:                                               ; preds = %3
  %21 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %22 = load %struct.ena_admin_feature_llq_desc*, %struct.ena_admin_feature_llq_desc** %6, align 8
  %23 = load %struct.ena_llq_configurations*, %struct.ena_llq_configurations** %7, align 8
  %24 = call i32 @ena_com_config_llq_info(%struct.ena_com_dev* %21, %struct.ena_admin_feature_llq_desc* %22, %struct.ena_llq_configurations* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %56

29:                                               ; preds = %20
  %30 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %31 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ena_com_llq_info*, %struct.ena_com_llq_info** %8, align 8
  %34 = getelementptr inbounds %struct.ena_com_llq_info, %struct.ena_com_llq_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = sub i64 %32, %37
  %39 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %40 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %42 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %29
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %56

52:                                               ; preds = %29
  %53 = load i32, i32* @ENA_ADMIN_PLACEMENT_POLICY_DEV, align 4
  %54 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %55 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %48, %27, %16
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @ena_com_config_llq_info(%struct.ena_com_dev*, %struct.ena_admin_feature_llq_desc*, %struct.ena_llq_configurations*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
