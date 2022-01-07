; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_cfg_set_regulatory_hint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_cfg_set_regulatory_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.region_code_mapping = type { i8*, i32 }
%struct.lbs_private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.region_code_mapping.0 = type opaque

@lbs_cfg_set_regulatory_hint.regmap = internal constant [6 x %struct.region_code_mapping] [%struct.region_code_mapping { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 16 }, %struct.region_code_mapping { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 32 }, %struct.region_code_mapping { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 48 }, %struct.region_code_mapping { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 49 }, %struct.region_code_mapping { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 50 }, %struct.region_code_mapping { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 64 }], align 16
@.str = private unnamed_addr constant [4 x i8] c"US \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"CA \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"EU \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ES \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"FR \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"JP \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lbs_private*)* @lbs_cfg_set_regulatory_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lbs_cfg_set_regulatory_hint(%struct.lbs_private* %0) #0 {
  %2 = alloca %struct.lbs_private*, align 8
  %3 = alloca i64, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %29, %1
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @ARRAY_SIZE(%struct.region_code_mapping.0* bitcast ([6 x %struct.region_code_mapping]* @lbs_cfg_set_regulatory_hint.regmap to %struct.region_code_mapping.0*))
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %32

8:                                                ; preds = %4
  %9 = load i64, i64* %3, align 8
  %10 = getelementptr inbounds [6 x %struct.region_code_mapping], [6 x %struct.region_code_mapping]* @lbs_cfg_set_regulatory_hint.regmap, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.region_code_mapping, %struct.region_code_mapping* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %14 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %12, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %8
  %18 = load %struct.lbs_private*, %struct.lbs_private** %2, align 8
  %19 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds [6 x %struct.region_code_mapping], [6 x %struct.region_code_mapping]* @lbs_cfg_set_regulatory_hint.regmap, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.region_code_mapping, %struct.region_code_mapping* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 16
  %27 = call i32 @regulatory_hint(i32 %22, i8* %26)
  br label %32

28:                                               ; preds = %8
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %4

32:                                               ; preds = %17, %4
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.region_code_mapping.0*) #1

declare dso_local i32 @regulatory_hint(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
