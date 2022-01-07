; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_fill_hash_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_fill_hash_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_rss }
%struct.ena_rss = type { %struct.ena_admin_feature_rss_hash_control* }
%struct.ena_admin_feature_rss_hash_control = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ENA_ADMIN_RSS_PROTO_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid proto num (%u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"proto %d doesn't support the required fields %x. supports only: %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_fill_hash_ctrl(%struct.ena_com_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_com_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ena_rss*, align 8
  %9 = alloca %struct.ena_admin_feature_rss_hash_control*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %13 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %12, i32 0, i32 0
  store %struct.ena_rss* %13, %struct.ena_rss** %8, align 8
  %14 = load %struct.ena_rss*, %struct.ena_rss** %8, align 8
  %15 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %14, i32 0, i32 0
  %16 = load %struct.ena_admin_feature_rss_hash_control*, %struct.ena_admin_feature_rss_hash_control** %15, align 8
  store %struct.ena_admin_feature_rss_hash_control* %16, %struct.ena_admin_feature_rss_hash_control** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ENA_ADMIN_RSS_PROTO_NUM, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %71

25:                                               ; preds = %3
  %26 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ena_com_get_hash_ctrl(%struct.ena_com_dev* %26, i32 %27, i32* null)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %4, align 4
  br label %71

34:                                               ; preds = %25
  %35 = load %struct.ena_admin_feature_rss_hash_control*, %struct.ena_admin_feature_rss_hash_control** %9, align 8
  %36 = getelementptr inbounds %struct.ena_admin_feature_rss_hash_control, %struct.ena_admin_feature_rss_hash_control* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %34
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %34
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.ena_admin_feature_rss_hash_control*, %struct.ena_admin_feature_rss_hash_control** %9, align 8
  %56 = getelementptr inbounds %struct.ena_admin_feature_rss_hash_control, %struct.ena_admin_feature_rss_hash_control* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %54, i32* %61, align 4
  %62 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %63 = call i32 @ena_com_set_hash_ctrl(%struct.ena_com_dev* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %53
  %68 = load %struct.ena_com_dev*, %struct.ena_com_dev** %5, align 8
  %69 = call i32 @ena_com_get_hash_ctrl(%struct.ena_com_dev* %68, i32 0, i32* null)
  br label %70

70:                                               ; preds = %67, %53
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %32, %20
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @ena_com_get_hash_ctrl(%struct.ena_com_dev*, i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_com_set_hash_ctrl(%struct.ena_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
