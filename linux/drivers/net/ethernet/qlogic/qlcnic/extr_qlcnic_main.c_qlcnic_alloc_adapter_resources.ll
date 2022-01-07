; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_alloc_adapter_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_alloc_adapter_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_INTR_COAL_TYPE_RX_TX = common dso_local global i32 0, align 4
@QLCNIC_DEF_INTR_COALESCE_TX_TIME_US = common dso_local global i32 0, align 4
@QLCNIC_DEF_INTR_COALESCE_TX_PACKETS = common dso_local global i32 0, align 4
@QLCNIC_DEF_INTR_COALESCE_RX_TIME_US = common dso_local global i8* null, align 8
@QLCNIC_DEF_INTR_COALESCE_RX_PACKETS = common dso_local global i8* null, align 8
@QLCNIC_INTR_COAL_TYPE_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_alloc_adapter_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_alloc_adapter_resources(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.qlcnic_hardware_context*, align 8
  %4 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %5 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %5, i32 0, i32 2
  %7 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  store %struct.qlcnic_hardware_context* %7, %struct.qlcnic_hardware_context** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32 @kzalloc(i32 4, i32 %8)
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %61

19:                                               ; preds = %1
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %21 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = load i32, i32* @QLCNIC_INTR_COAL_TYPE_RX_TX, align 4
  %25 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %26 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 8
  %28 = load i32, i32* @QLCNIC_DEF_INTR_COALESCE_TX_TIME_US, align 4
  %29 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %30 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @QLCNIC_DEF_INTR_COALESCE_TX_PACKETS, align 4
  %33 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %34 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 4
  %36 = load i8*, i8** @QLCNIC_DEF_INTR_COALESCE_RX_TIME_US, align 8
  %37 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %38 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  %40 = load i8*, i8** @QLCNIC_DEF_INTR_COALESCE_RX_PACKETS, align 8
  %41 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %42 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i8* %40, i8** %43, align 8
  br label %57

44:                                               ; preds = %19
  %45 = load i32, i32* @QLCNIC_INTR_COAL_TYPE_RX, align 4
  %46 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %47 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  %49 = load i8*, i8** @QLCNIC_DEF_INTR_COALESCE_RX_TIME_US, align 8
  %50 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %51 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = load i8*, i8** @QLCNIC_DEF_INTR_COALESCE_RX_PACKETS, align 8
  %54 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %55 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  br label %57

57:                                               ; preds = %44, %23
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %58, i32 0, i32 0
  %60 = call i32 @memset(i32* %59, i32 0, i32 4)
  br label %61

61:                                               ; preds = %57, %16
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
