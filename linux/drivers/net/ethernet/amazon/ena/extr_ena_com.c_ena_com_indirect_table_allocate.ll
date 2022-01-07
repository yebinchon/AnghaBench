; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_indirect_table_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_indirect_table_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32, %struct.ena_rss }
%struct.ena_rss = type { i32, i32*, i32, i32 }
%struct.ena_admin_get_feat_resp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ENA_ADMIN_RSS_REDIRECTION_TABLE_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"indirect table size doesn't fit. requested size: %d while min is:%d and max %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_dev*, i32)* @ena_com_indirect_table_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_indirect_table_allocate(%struct.ena_com_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ena_rss*, align 8
  %7 = alloca %struct.ena_admin_get_feat_resp, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %11 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %10, i32 0, i32 1
  store %struct.ena_rss* %11, %struct.ena_rss** %6, align 8
  %12 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %13 = load i32, i32* @ENA_ADMIN_RSS_REDIRECTION_TABLE_CONFIG, align 4
  %14 = call i32 @ena_com_get_feature(%struct.ena_com_dev* %12, %struct.ena_admin_get_feat_resp* %7, i32 %13, i32 0)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %123

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %7, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %7, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %27, %20
  %35 = load i32, i32* %5, align 4
  %36 = shl i32 1, %35
  %37 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %7, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 1, %40
  %42 = getelementptr inbounds %struct.ena_admin_get_feat_resp, %struct.ena_admin_get_feat_resp* %7, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 1, %45
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %41, i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %123

50:                                               ; preds = %27
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = shl i64 1, %52
  %54 = mul i64 %53, 4
  store i64 %54, i64* %8, align 8
  %55 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %56 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %60 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %59, i32 0, i32 2
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32* @dma_alloc_coherent(i32 %57, i64 %58, i32* %60, i32 %61)
  %63 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %64 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %66 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %50
  br label %118

74:                                               ; preds = %50
  %75 = load i32, i32* %5, align 4
  %76 = zext i32 %75 to i64
  %77 = shl i64 1, %76
  %78 = mul i64 %77, 4
  store i64 %78, i64* %8, align 8
  %79 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %80 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i32 @devm_kzalloc(i32 %81, i64 %82, i32 %83)
  %85 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %86 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %88 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %74
  br label %100

96:                                               ; preds = %74
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %99 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  store i32 0, i32* %3, align 4
  br label %123

100:                                              ; preds = %95
  %101 = load i32, i32* %5, align 4
  %102 = zext i32 %101 to i64
  %103 = shl i64 1, %102
  %104 = mul i64 %103, 4
  store i64 %104, i64* %8, align 8
  %105 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %106 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i64, i64* %8, align 8
  %109 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %110 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %113 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @dma_free_coherent(i32 %107, i64 %108, i32* %111, i32 %114)
  %116 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %117 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %116, i32 0, i32 1
  store i32* null, i32** %117, align 8
  br label %118

118:                                              ; preds = %100, %73
  %119 = load %struct.ena_rss*, %struct.ena_rss** %6, align 8
  %120 = getelementptr inbounds %struct.ena_rss, %struct.ena_rss* %119, i32 0, i32 0
  store i32 0, i32* %120, align 8
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %118, %96, %34, %18
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @ena_com_get_feature(%struct.ena_com_dev*, %struct.ena_admin_get_feat_resp*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32* @dma_alloc_coherent(i32, i64, i32*, i32) #1

declare dso_local i32 @devm_kzalloc(i32, i64, i32) #1

declare dso_local i32 @dma_free_coherent(i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
