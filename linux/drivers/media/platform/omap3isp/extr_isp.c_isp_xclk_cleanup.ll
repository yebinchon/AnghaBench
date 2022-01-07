; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_xclk_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_isp.c_isp_xclk_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { %struct.isp_xclk*, %struct.TYPE_2__* }
%struct.isp_xclk = type { i32 }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_device*)* @isp_xclk_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_xclk_cleanup(%struct.isp_device* %0) #0 {
  %2 = alloca %struct.isp_device*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isp_xclk*, align 8
  store %struct.isp_device* %0, %struct.isp_device** %2, align 8
  %6 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %7 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %3, align 8
  %11 = load %struct.device_node*, %struct.device_node** %3, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.device_node*, %struct.device_node** %3, align 8
  %15 = call i32 @of_clk_del_provider(%struct.device_node* %14)
  br label %16

16:                                               ; preds = %13, %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %42, %16
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %20 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %19, i32 0, i32 0
  %21 = load %struct.isp_xclk*, %struct.isp_xclk** %20, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.isp_xclk* %21)
  %23 = icmp ult i32 %18, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %17
  %25 = load %struct.isp_device*, %struct.isp_device** %2, align 8
  %26 = getelementptr inbounds %struct.isp_device, %struct.isp_device* %25, i32 0, i32 0
  %27 = load %struct.isp_xclk*, %struct.isp_xclk** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.isp_xclk, %struct.isp_xclk* %27, i64 %29
  store %struct.isp_xclk* %30, %struct.isp_xclk** %5, align 8
  %31 = load %struct.isp_xclk*, %struct.isp_xclk** %5, align 8
  %32 = getelementptr inbounds %struct.isp_xclk, %struct.isp_xclk* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @IS_ERR(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %24
  %37 = load %struct.isp_xclk*, %struct.isp_xclk** %5, align 8
  %38 = getelementptr inbounds %struct.isp_xclk, %struct.isp_xclk* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @clk_unregister(i32 %39)
  br label %41

41:                                               ; preds = %36, %24
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %17

45:                                               ; preds = %17
  ret void
}

declare dso_local i32 @of_clk_del_provider(%struct.device_node*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.isp_xclk*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
