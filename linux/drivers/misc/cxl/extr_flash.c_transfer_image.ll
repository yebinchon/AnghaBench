; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_flash.c_transfer_image.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_flash.c_transfer_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.cxl_adapter_image = type { i32 }

@cxl_h_download_adapter_image = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"resetting adapter\0A\00", align 1
@cxl_h_validate_adapter_image = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"remove current afu\0A\00", align 1
@DEVICE_SCOPE = common dso_local global i32 0, align 4
@transfer = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl*, i32, %struct.cxl_adapter_image*)* @transfer_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transfer_image(%struct.cxl* %0, i32 %1, %struct.cxl_adapter_image* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxl_adapter_image*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cxl* %0, %struct.cxl** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cxl_adapter_image* %2, %struct.cxl_adapter_image** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %80 [
    i32 129, label %11
    i32 128, label %28
  ]

11:                                               ; preds = %3
  %12 = load %struct.cxl*, %struct.cxl** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.cxl_adapter_image*, %struct.cxl_adapter_image** %7, align 8
  %15 = call i32 @handle_image(%struct.cxl* %12, i32 %13, i32* @cxl_h_download_adapter_image, %struct.cxl_adapter_image* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = call i32 @pr_devel(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.cxl*, %struct.cxl** %5, align 8
  %21 = getelementptr inbounds %struct.cxl, %struct.cxl* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cxl_h_reset_adapter(i32 %24)
  br label %26

26:                                               ; preds = %18, %11
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %83

28:                                               ; preds = %3
  %29 = load %struct.cxl*, %struct.cxl** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.cxl_adapter_image*, %struct.cxl_adapter_image** %7, align 8
  %32 = call i32 @handle_image(%struct.cxl* %29, i32 %30, i32* @cxl_h_validate_adapter_image, %struct.cxl_adapter_image* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = call i32 @pr_devel(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.cxl*, %struct.cxl** %5, align 8
  %38 = getelementptr inbounds %struct.cxl, %struct.cxl* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cxl_h_reset_adapter(i32 %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %83

44:                                               ; preds = %28
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %44
  %48 = call i32 @pr_devel(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %64, %47
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.cxl*, %struct.cxl** %5, align 8
  %52 = getelementptr inbounds %struct.cxl, %struct.cxl* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load %struct.cxl*, %struct.cxl** %5, align 8
  %57 = getelementptr inbounds %struct.cxl, %struct.cxl* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @cxl_guest_remove_afu(i32 %62)
  br label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %49

67:                                               ; preds = %49
  %68 = call i32 @pr_devel(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.cxl*, %struct.cxl** %5, align 8
  %70 = getelementptr inbounds %struct.cxl, %struct.cxl* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @cxl_h_reset_adapter(i32 %73)
  %75 = load %struct.cxl*, %struct.cxl** %5, align 8
  %76 = load i32, i32* @DEVICE_SCOPE, align 4
  %77 = call i32 @update_devicetree(%struct.cxl* %75, i32 %76)
  store i32 %77, i32* %8, align 4
  store i32 1, i32* @transfer, align 4
  br label %78

78:                                               ; preds = %67, %44
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %83

80:                                               ; preds = %3
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %80, %78, %35, %26
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @handle_image(%struct.cxl*, i32, i32*, %struct.cxl_adapter_image*) #1

declare dso_local i32 @pr_devel(i8*) #1

declare dso_local i32 @cxl_h_reset_adapter(i32) #1

declare dso_local i32 @cxl_guest_remove_afu(i32) #1

declare dso_local i32 @update_devicetree(%struct.cxl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
