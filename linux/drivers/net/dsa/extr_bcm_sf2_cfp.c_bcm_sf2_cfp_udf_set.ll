; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_udf_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_udf_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sf2_priv = type { i32 }
%struct.cfp_udf_layout = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i64 }

@UDFS_PER_SLICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_sf2_priv*, %struct.cfp_udf_layout*, i32)* @bcm_sf2_cfp_udf_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_sf2_cfp_udf_set(%struct.bcm_sf2_priv* %0, %struct.cfp_udf_layout* %1, i32 %2) #0 {
  %4 = alloca %struct.bcm_sf2_priv*, align 8
  %5 = alloca %struct.cfp_udf_layout*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.bcm_sf2_priv* %0, %struct.bcm_sf2_priv** %4, align 8
  store %struct.cfp_udf_layout* %1, %struct.cfp_udf_layout** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.cfp_udf_layout*, %struct.cfp_udf_layout** %5, align 8
  %10 = getelementptr inbounds %struct.cfp_udf_layout, %struct.cfp_udf_layout* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %41, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @UDFS_PER_SLICE, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %23 = load %struct.cfp_udf_layout*, %struct.cfp_udf_layout** %5, align 8
  %24 = getelementptr inbounds %struct.cfp_udf_layout, %struct.cfp_udf_layout* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* %8, align 4
  %37 = mul i32 %36, 4
  %38 = zext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = call i32 @core_writel(%struct.bcm_sf2_priv* %22, i32 %34, i64 %39)
  br label %41

41:                                               ; preds = %21
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %17

44:                                               ; preds = %17
  ret void
}

declare dso_local i32 @core_writel(%struct.bcm_sf2_priv*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
