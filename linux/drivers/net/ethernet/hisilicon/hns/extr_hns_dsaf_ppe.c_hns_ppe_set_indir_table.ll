; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_ppe.c_hns_ppe_set_indir_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_ppe.c_hns_ppe_set_indir_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_ppe_cb = type { i32 }

@HNS_PPEV2_RSS_IND_TBL_SIZE = common dso_local global i32 0, align 4
@PPEV2_INDRECTION_TBL_REG = common dso_local global i64 0, align 8
@PPEV2_CFG_RSS_TBL_4N0_M = common dso_local global i32 0, align 4
@PPEV2_CFG_RSS_TBL_4N0_S = common dso_local global i32 0, align 4
@PPEV2_CFG_RSS_TBL_4N1_M = common dso_local global i32 0, align 4
@PPEV2_CFG_RSS_TBL_4N1_S = common dso_local global i32 0, align 4
@PPEV2_CFG_RSS_TBL_4N2_M = common dso_local global i32 0, align 4
@PPEV2_CFG_RSS_TBL_4N2_S = common dso_local global i32 0, align 4
@PPEV2_CFG_RSS_TBL_4N3_M = common dso_local global i32 0, align 4
@PPEV2_CFG_RSS_TBL_4N3_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_ppe_set_indir_table(%struct.hns_ppe_cb* %0, i32* %1) #0 {
  %3 = alloca %struct.hns_ppe_cb*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hns_ppe_cb* %0, %struct.hns_ppe_cb** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @HNS_PPEV2_RSS_IND_TBL_SIZE, align 4
  %8 = zext i32 %7 to i64
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %78, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @HNS_PPEV2_RSS_IND_TBL_SIZE, align 4
  %12 = sdiv i32 %11, 4
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %81

14:                                               ; preds = %9
  %15 = load %struct.hns_ppe_cb*, %struct.hns_ppe_cb** %3, align 8
  %16 = load i64, i64* @PPEV2_INDRECTION_TBL_REG, align 8
  %17 = load i32, i32* %5, align 4
  %18 = mul nsw i32 %17, 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = call i32 @dsaf_read_dev(%struct.hns_ppe_cb* %15, i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PPEV2_CFG_RSS_TBL_4N0_M, align 4
  %24 = load i32, i32* @PPEV2_CFG_RSS_TBL_4N0_S, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %26, 4
  %28 = add nsw i32 %27, 0
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 31
  %33 = call i32 @dsaf_set_field(i32 %22, i32 %23, i32 %24, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @PPEV2_CFG_RSS_TBL_4N1_M, align 4
  %36 = load i32, i32* @PPEV2_CFG_RSS_TBL_4N1_S, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %38, 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 31
  %45 = call i32 @dsaf_set_field(i32 %34, i32 %35, i32 %36, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @PPEV2_CFG_RSS_TBL_4N2_M, align 4
  %48 = load i32, i32* @PPEV2_CFG_RSS_TBL_4N2_S, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 %50, 4
  %52 = add nsw i32 %51, 2
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 31
  %57 = call i32 @dsaf_set_field(i32 %46, i32 %47, i32 %48, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @PPEV2_CFG_RSS_TBL_4N3_M, align 4
  %60 = load i32, i32* @PPEV2_CFG_RSS_TBL_4N3_S, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = mul nsw i32 %62, 4
  %64 = add nsw i32 %63, 3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 31
  %69 = call i32 @dsaf_set_field(i32 %58, i32 %59, i32 %60, i32 %68)
  %70 = load %struct.hns_ppe_cb*, %struct.hns_ppe_cb** %3, align 8
  %71 = load i64, i64* @PPEV2_INDRECTION_TBL_REG, align 8
  %72 = load i32, i32* %5, align 4
  %73 = mul nsw i32 %72, 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %71, %74
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @dsaf_write_dev(%struct.hns_ppe_cb* %70, i64 %75, i32 %76)
  br label %78

78:                                               ; preds = %14
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %9

81:                                               ; preds = %9
  ret void
}

declare dso_local i32 @dsaf_read_dev(%struct.hns_ppe_cb*, i64) #1

declare dso_local i32 @dsaf_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @dsaf_write_dev(%struct.hns_ppe_cb*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
