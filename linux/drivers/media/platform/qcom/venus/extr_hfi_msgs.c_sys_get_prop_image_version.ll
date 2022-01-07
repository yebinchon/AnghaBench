; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_sys_get_prop_image_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_sys_get_prop_image_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hfi_msg_sys_property_info_pkt = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"F/W version: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.hfi_msg_sys_property_info_pkt*)* @sys_get_prop_image_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sys_get_prop_image_version(%struct.device* %0, %struct.hfi_msg_sys_property_info_pkt* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.hfi_msg_sys_property_info_pkt*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.hfi_msg_sys_property_info_pkt* %1, %struct.hfi_msg_sys_property_info_pkt** %4, align 8
  %6 = load %struct.hfi_msg_sys_property_info_pkt*, %struct.hfi_msg_sys_property_info_pkt** %4, align 8
  %7 = getelementptr inbounds %struct.hfi_msg_sys_property_info_pkt, %struct.hfi_msg_sys_property_info_pkt* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = sub i64 %10, 24
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 128
  br i1 %14, label %27, label %15

15:                                               ; preds = %2
  %16 = load %struct.hfi_msg_sys_property_info_pkt*, %struct.hfi_msg_sys_property_info_pkt** %4, align 8
  %17 = getelementptr inbounds %struct.hfi_msg_sys_property_info_pkt, %struct.hfi_msg_sys_property_info_pkt* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.hfi_msg_sys_property_info_pkt*, %struct.hfi_msg_sys_property_info_pkt** %4, align 8
  %24 = getelementptr inbounds %struct.hfi_msg_sys_property_info_pkt, %struct.hfi_msg_sys_property_info_pkt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %22, %15, %2
  br label %35

28:                                               ; preds = %22
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = load %struct.hfi_msg_sys_property_info_pkt*, %struct.hfi_msg_sys_property_info_pkt** %4, align 8
  %31 = getelementptr inbounds %struct.hfi_msg_sys_property_info_pkt, %struct.hfi_msg_sys_property_info_pkt* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = call i32 @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %33)
  br label %35

35:                                               ; preds = %28, %27
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
