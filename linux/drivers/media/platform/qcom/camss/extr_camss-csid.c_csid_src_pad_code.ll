; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csid.c_csid_src_pad_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csid.c_csid_src_pad_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csid_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@CAMSS_8x16 = common dso_local global i64 0, align 8
@CAMSS_8x96 = common dso_local global i64 0, align 8
@MEDIA_BUS_FMT_SBGGR10_2X8_PADHI_LE = common dso_local global i32 0, align 4
@MEDIA_BUS_FMT_Y10_2X8_PADHI_LE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csid_device*, i32, i32, i32)* @csid_src_pad_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csid_src_pad_code(%struct.csid_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.csid_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  store %struct.csid_device* %0, %struct.csid_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %13 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CAMSS_8x16, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ugt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %62

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %5, align 4
  br label %62

25:                                               ; preds = %4
  %26 = load %struct.csid_device*, %struct.csid_device** %6, align 8
  %27 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CAMSS_8x96, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %55 [
    i32 129, label %35
    i32 128, label %45
  ]

35:                                               ; preds = %33
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 129, i32* %36, align 4
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* @MEDIA_BUS_FMT_SBGGR10_2X8_PADHI_LE, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %41 = call i32 @ARRAY_SIZE(i32* %40)
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @csid_find_code(i32* %39, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  br label %62

45:                                               ; preds = %33
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  store i32 128, i32* %46, align 4
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* @MEDIA_BUS_FMT_Y10_2X8_PADHI_LE, align 4
  store i32 %48, i32* %47, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %51 = call i32 @ARRAY_SIZE(i32* %50)
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @csid_find_code(i32* %49, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %5, align 4
  br label %62

55:                                               ; preds = %33
  %56 = load i32, i32* %8, align 4
  %57 = icmp ugt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %5, align 4
  br label %62

61:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %59, %58, %45, %35, %23, %22
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @csid_find_code(i32*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
