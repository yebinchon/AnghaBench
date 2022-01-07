; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_iface_cmdq_write_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_iface_cmdq_write_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_hfi_device = type { %struct.iface_queue*, i32, %struct.TYPE_2__* }
%struct.iface_queue = type { i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.hfi_pkt_hdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IFACEQ_CMD_IDX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"write to iface cmd queue failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_hfi_device*, i8*)* @venus_iface_cmdq_write_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_iface_cmdq_write_nolock(%struct.venus_hfi_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.venus_hfi_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.hfi_pkt_hdr*, align 8
  %8 = alloca %struct.iface_queue*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.venus_hfi_device* %0, %struct.venus_hfi_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %12 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.device*, %struct.device** %14, align 8
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %17 = call i32 @venus_is_valid_state(%struct.venus_hfi_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %53

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to %struct.hfi_pkt_hdr*
  store %struct.hfi_pkt_hdr* %24, %struct.hfi_pkt_hdr** %7, align 8
  %25 = load %struct.hfi_pkt_hdr*, %struct.hfi_pkt_hdr** %7, align 8
  %26 = getelementptr inbounds %struct.hfi_pkt_hdr, %struct.hfi_pkt_hdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %29 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %31 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %30, i32 0, i32 0
  %32 = load %struct.iface_queue*, %struct.iface_queue** %31, align 8
  %33 = load i64, i64* @IFACEQ_CMD_IDX, align 8
  %34 = getelementptr inbounds %struct.iface_queue, %struct.iface_queue* %32, i64 %33
  store %struct.iface_queue* %34, %struct.iface_queue** %8, align 8
  %35 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %36 = load %struct.iface_queue*, %struct.iface_queue** %8, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @venus_write_queue(%struct.venus_hfi_device* %35, %struct.iface_queue* %36, i8* %37, i64* %9)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %22
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %3, align 4
  br label %53

46:                                               ; preds = %22
  %47 = load i64, i64* %9, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %51 = call i32 @venus_soft_int(%struct.venus_hfi_device* %50)
  br label %52

52:                                               ; preds = %49, %46
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %41, %19
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @venus_is_valid_state(%struct.venus_hfi_device*) #1

declare dso_local i32 @venus_write_queue(%struct.venus_hfi_device*, %struct.iface_queue*, i8*, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @venus_soft_int(%struct.venus_hfi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
