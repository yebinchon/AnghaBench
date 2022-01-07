; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_indirect_table_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_indirect_table_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_rss }
%struct.ena_rss = type { i64, i64*, i32 }
%struct.ena_admin_get_feat_resp = type { i32 }

@ENA_ADMIN_RSS_REDIRECTION_TABLE_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_indirect_table_get(%struct.ena_com_dev* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.ena_rss*, align 8
  %7 = alloca %struct.ena_admin_get_feat_resp, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store i64* %1, i64** %5, align 8
  %11 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %12 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %11, i32 0, i32 0
  store %struct.ena_rss* %12, %struct.ena_rss** %6, align 8
  %13 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %14 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = shl i64 1, %15
  %17 = mul i64 %16, 4
  store i64 %17, i64* %8, align 8
  %18 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %19 = load i32, i32* @ENA_ADMIN_RSS_REDIRECTION_TABLE_CONFIG, align 4
  %20 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %21 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @ena_com_get_feature_ex(%struct.ena_com_dev* %18, %struct.ena_admin_get_feat_resp* %7, i32 %19, i32 %22, i64 %23, i32 0)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %3, align 4
  br label %67

30:                                               ; preds = %2
  %31 = load i64*, i64** %5, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %67

34:                                               ; preds = %30
  %35 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %36 = call i32 @ena_com_ind_tbl_convert_from_device(%struct.ena_com_dev* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %3, align 4
  br label %67

42:                                               ; preds = %34
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %63, %42
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %46 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = shl i32 1, %48
  %50 = icmp slt i32 %44, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %43
  %52 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %53 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 %58, i64* %62, align 8
  br label %63

63:                                               ; preds = %51
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %43

66:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %40, %33, %28
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @ena_com_get_feature_ex(%struct.ena_com_dev*, %struct.ena_admin_get_feat_resp*, i32, i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_com_ind_tbl_convert_from_device(%struct.ena_com_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
