; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_hsi.c_cfhsi_netlink_parms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_hsi.c_cfhsi_netlink_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.cfhsi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [22 x i8] c"no params data found\0A\00", align 1
@__IFLA_CAIF_HSI_INACTIVITY_TOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@NEXT_TIMER_MAX_DELTA = common dso_local global i32 0, align 4
@__IFLA_CAIF_HSI_AGGREGATION_TOUT = common dso_local global i32 0, align 4
@__IFLA_CAIF_HSI_HEAD_ALIGN = common dso_local global i32 0, align 4
@__IFLA_CAIF_HSI_TAIL_ALIGN = common dso_local global i32 0, align 4
@__IFLA_CAIF_HSI_QHIGH_WATERMARK = common dso_local global i32 0, align 4
@__IFLA_CAIF_HSI_QLOW_WATERMARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlattr**, %struct.cfhsi*)* @cfhsi_netlink_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfhsi_netlink_parms(%struct.nlattr** %0, %struct.cfhsi* %1) #0 {
  %3 = alloca %struct.nlattr**, align 8
  %4 = alloca %struct.cfhsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %3, align 8
  store %struct.cfhsi* %1, %struct.cfhsi** %4, align 8
  %7 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %8 = icmp ne %struct.nlattr** %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %147

11:                                               ; preds = %2
  %12 = load i32, i32* @__IFLA_CAIF_HSI_INACTIVITY_TOUT, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %15
  %17 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %18 = icmp ne %struct.nlattr* %17, null
  br i1 %18, label %19, label %57

19:                                               ; preds = %11
  %20 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = call i8* @nla_get_u32(%struct.nlattr* %24)
  %26 = ptrtoint i8* %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @HZ, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sdiv i32 %29, 1000
  %31 = load %struct.cfhsi*, %struct.cfhsi** %4, align 8
  %32 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.cfhsi*, %struct.cfhsi** %4, align 8
  %35 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %19
  %40 = load %struct.cfhsi*, %struct.cfhsi** %4, align 8
  %41 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %56

43:                                               ; preds = %19
  %44 = load %struct.cfhsi*, %struct.cfhsi** %4, align 8
  %45 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @NEXT_TIMER_MAX_DELTA, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32, i32* @NEXT_TIMER_MAX_DELTA, align 4
  %52 = load %struct.cfhsi*, %struct.cfhsi** %4, align 8
  %53 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  br label %55

55:                                               ; preds = %50, %43
  br label %56

56:                                               ; preds = %55, %39
  br label %57

57:                                               ; preds = %56, %11
  %58 = load i32, i32* @__IFLA_CAIF_HSI_AGGREGATION_TOUT, align 4
  store i32 %58, i32* %5, align 4
  %59 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %59, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = icmp ne %struct.nlattr* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %57
  %66 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %66, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = call i8* @nla_get_u32(%struct.nlattr* %70)
  %72 = load %struct.cfhsi*, %struct.cfhsi** %4, align 8
  %73 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 5
  store i8* %71, i8** %74, align 8
  br label %75

75:                                               ; preds = %65, %57
  %76 = load i32, i32* @__IFLA_CAIF_HSI_HEAD_ALIGN, align 4
  store i32 %76, i32* %5, align 4
  %77 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %77, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = icmp ne %struct.nlattr* %81, null
  br i1 %82, label %83, label %93

83:                                               ; preds = %75
  %84 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %84, i64 %86
  %88 = load %struct.nlattr*, %struct.nlattr** %87, align 8
  %89 = call i8* @nla_get_u32(%struct.nlattr* %88)
  %90 = load %struct.cfhsi*, %struct.cfhsi** %4, align 8
  %91 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 4
  store i8* %89, i8** %92, align 8
  br label %93

93:                                               ; preds = %83, %75
  %94 = load i32, i32* @__IFLA_CAIF_HSI_TAIL_ALIGN, align 4
  store i32 %94, i32* %5, align 4
  %95 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %95, i64 %97
  %99 = load %struct.nlattr*, %struct.nlattr** %98, align 8
  %100 = icmp ne %struct.nlattr* %99, null
  br i1 %100, label %101, label %111

101:                                              ; preds = %93
  %102 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %102, i64 %104
  %106 = load %struct.nlattr*, %struct.nlattr** %105, align 8
  %107 = call i8* @nla_get_u32(%struct.nlattr* %106)
  %108 = load %struct.cfhsi*, %struct.cfhsi** %4, align 8
  %109 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 3
  store i8* %107, i8** %110, align 8
  br label %111

111:                                              ; preds = %101, %93
  %112 = load i32, i32* @__IFLA_CAIF_HSI_QHIGH_WATERMARK, align 4
  store i32 %112, i32* %5, align 4
  %113 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %113, i64 %115
  %117 = load %struct.nlattr*, %struct.nlattr** %116, align 8
  %118 = icmp ne %struct.nlattr* %117, null
  br i1 %118, label %119, label %129

119:                                              ; preds = %111
  %120 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %120, i64 %122
  %124 = load %struct.nlattr*, %struct.nlattr** %123, align 8
  %125 = call i8* @nla_get_u32(%struct.nlattr* %124)
  %126 = load %struct.cfhsi*, %struct.cfhsi** %4, align 8
  %127 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  store i8* %125, i8** %128, align 8
  br label %129

129:                                              ; preds = %119, %111
  %130 = load i32, i32* @__IFLA_CAIF_HSI_QLOW_WATERMARK, align 4
  store i32 %130, i32* %5, align 4
  %131 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %131, i64 %133
  %135 = load %struct.nlattr*, %struct.nlattr** %134, align 8
  %136 = icmp ne %struct.nlattr* %135, null
  br i1 %136, label %137, label %147

137:                                              ; preds = %129
  %138 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %138, i64 %140
  %142 = load %struct.nlattr*, %struct.nlattr** %141, align 8
  %143 = call i8* @nla_get_u32(%struct.nlattr* %142)
  %144 = load %struct.cfhsi*, %struct.cfhsi** %4, align 8
  %145 = getelementptr inbounds %struct.cfhsi, %struct.cfhsi* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  store i8* %143, i8** %146, align 8
  br label %147

147:                                              ; preds = %9, %137, %129
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
