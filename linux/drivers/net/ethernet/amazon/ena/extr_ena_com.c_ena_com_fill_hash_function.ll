; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_fill_hash_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_fill_hash_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_rss }
%struct.ena_rss = type { i32, i8*, i32, %struct.ena_admin_feature_rss_flow_hash_control* }
%struct.ena_admin_feature_rss_flow_hash_control = type { i32, i32 }
%struct.ena_admin_get_feat_resp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENA_ADMIN_RSS_HASH_FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Flow hash function %d isn't supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"key len (%hu) is bigger than the max supported (%zu)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Invalid hash function (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_fill_hash_function(%struct.ena_com_dev* %0, i32 %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ena_com_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ena_rss*, align 8
  %13 = alloca %struct.ena_admin_get_feat_resp, align 4
  %14 = alloca %struct.ena_admin_feature_rss_flow_hash_control*, align 8
  %15 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %16 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %17 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %16, i32 0, i32 0
  store %struct.ena_rss* %17, %struct.ena_rss** %12, align 8
  %18 = load %struct.ena_rss*, %struct.ena_rss** %12, align 8
  %19 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %18, i32 0, i32 3
  %20 = load %struct.ena_admin_feature_rss_flow_hash_control*, %struct.ena_admin_feature_rss_flow_hash_control** %19, align 8
  store %struct.ena_admin_feature_rss_flow_hash_control* %20, %struct.ena_admin_feature_rss_flow_hash_control** %14, align 8
  %21 = load i32, i32* %10, align 4
  %22 = and i32 %21, 3
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %102

28:                                               ; preds = %5
  %29 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %30 = load i32, i32* @ENA_ADMIN_RSS_HASH_FUNCTION, align 4
  %31 = load %struct.ena_rss*, %struct.ena_rss** %12, align 8
  %32 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ena_com_get_feature_ex(%struct.ena_com_dev* %29, %struct.ena_admin_get_feat_resp* %13, i32 %30, i32 %33, i32 8, i32 0)
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %15, align 4
  store i32 %39, i32* %6, align 4
  br label %102

40:                                               ; preds = %28
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 1, %41
  %43 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %13, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %42, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @EOPNOTSUPP, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %102

54:                                               ; preds = %40
  %55 = load i32, i32* %8, align 4
  switch i32 %55, label %83 [
    i32 128, label %56
    i32 129, label %79
  ]

56:                                               ; preds = %54
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ugt i64 %58, 4
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %10, align 4
  %62 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %61, i64 4)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %102

65:                                               ; preds = %56
  %66 = load %struct.ena_admin_feature_rss_flow_hash_control*, %struct.ena_admin_feature_rss_flow_hash_control** %14, align 8
  %67 = getelementptr inbounds %struct.ena_admin_feature_rss_flow_hash_control, %struct.ena_admin_feature_rss_flow_hash_control* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @memcpy(i32 %68, i32* %69, i32 %70)
  %72 = load i8*, i8** %11, align 8
  %73 = load %struct.ena_rss*, %struct.ena_rss** %12, align 8
  %74 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %10, align 4
  %76 = ashr i32 %75, 2
  %77 = load %struct.ena_admin_feature_rss_flow_hash_control*, %struct.ena_admin_feature_rss_flow_hash_control** %14, align 8
  %78 = getelementptr inbounds %struct.ena_admin_feature_rss_flow_hash_control, %struct.ena_admin_feature_rss_flow_hash_control* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %88

79:                                               ; preds = %54
  %80 = load i8*, i8** %11, align 8
  %81 = load %struct.ena_rss*, %struct.ena_rss** %12, align 8
  %82 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  br label %88

83:                                               ; preds = %54
  %84 = load i32, i32* %8, align 4
  %85 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %6, align 4
  br label %102

88:                                               ; preds = %79, %65
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.ena_rss*, %struct.ena_rss** %12, align 8
  %91 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %93 = call i32 @ena_com_set_hash_function(%struct.ena_com_dev* %92)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load %struct.ena_com_dev*, %struct.ena_com_dev** %7, align 8
  %99 = call i32 @ena_com_get_hash_function(%struct.ena_com_dev* %98, i32* null, i32* null)
  br label %100

100:                                              ; preds = %97, %88
  %101 = load i32, i32* %15, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %100, %83, %60, %49, %38, %25
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_com_get_feature_ex(%struct.ena_com_dev*, %struct.ena_admin_get_feat_resp*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ena_com_set_hash_function(%struct.ena_com_dev*) #1

declare dso_local i32 @ena_com_get_hash_function(%struct.ena_com_dev*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
