; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_session_get_prop_buf_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_msgs.c_session_get_prop_buf_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi_msg_session_property_info_pkt = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hfi_buffer_requirements = type { i32 }

@HFI_ERR_SESSION_INVALID_PARAMETER = common dso_local global i32 0, align 4
@HFI_BUFFER_TYPE_MAX = common dso_local global i32 0, align 4
@HFI_ERR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi_msg_session_property_info_pkt*, %struct.hfi_buffer_requirements*)* @session_get_prop_buf_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @session_get_prop_buf_req(%struct.hfi_msg_session_property_info_pkt* %0, %struct.hfi_buffer_requirements* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi_msg_session_property_info_pkt*, align 8
  %5 = alloca %struct.hfi_buffer_requirements*, align 8
  %6 = alloca %struct.hfi_buffer_requirements*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hfi_msg_session_property_info_pkt* %0, %struct.hfi_msg_session_property_info_pkt** %4, align 8
  store %struct.hfi_buffer_requirements* %1, %struct.hfi_buffer_requirements** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.hfi_msg_session_property_info_pkt*, %struct.hfi_msg_session_property_info_pkt** %4, align 8
  %10 = getelementptr inbounds %struct.hfi_msg_session_property_info_pkt, %struct.hfi_msg_session_property_info_pkt* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = sub i64 %14, 16
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = urem i64 %21, 4
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load %struct.hfi_msg_session_property_info_pkt*, %struct.hfi_msg_session_property_info_pkt** %4, align 8
  %26 = getelementptr inbounds %struct.hfi_msg_session_property_info_pkt, %struct.hfi_msg_session_property_info_pkt* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %24, %19, %2
  %32 = load i32, i32* @HFI_ERR_SESSION_INVALID_PARAMETER, align 4
  store i32 %32, i32* %3, align 4
  br label %70

33:                                               ; preds = %24
  %34 = load %struct.hfi_msg_session_property_info_pkt*, %struct.hfi_msg_session_property_info_pkt** %4, align 8
  %35 = getelementptr inbounds %struct.hfi_msg_session_property_info_pkt, %struct.hfi_msg_session_property_info_pkt* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = bitcast i32* %37 to %struct.hfi_buffer_requirements*
  store %struct.hfi_buffer_requirements* %38, %struct.hfi_buffer_requirements** %6, align 8
  %39 = load %struct.hfi_buffer_requirements*, %struct.hfi_buffer_requirements** %6, align 8
  %40 = icmp ne %struct.hfi_buffer_requirements* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* @HFI_ERR_SESSION_INVALID_PARAMETER, align 4
  store i32 %42, i32* %3, align 4
  br label %70

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %61, %43
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %44
  %48 = load %struct.hfi_buffer_requirements*, %struct.hfi_buffer_requirements** %5, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.hfi_buffer_requirements, %struct.hfi_buffer_requirements* %48, i64 %50
  %52 = load %struct.hfi_buffer_requirements*, %struct.hfi_buffer_requirements** %6, align 8
  %53 = call i32 @memcpy(%struct.hfi_buffer_requirements* %51, %struct.hfi_buffer_requirements* %52, i32 4)
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @HFI_BUFFER_TYPE_MAX, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* @HFI_ERR_SESSION_INVALID_PARAMETER, align 4
  store i32 %60, i32* %3, align 4
  br label %70

61:                                               ; preds = %47
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = sub i64 %63, 4
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %7, align 4
  %66 = load %struct.hfi_buffer_requirements*, %struct.hfi_buffer_requirements** %6, align 8
  %67 = getelementptr inbounds %struct.hfi_buffer_requirements, %struct.hfi_buffer_requirements* %66, i32 1
  store %struct.hfi_buffer_requirements* %67, %struct.hfi_buffer_requirements** %6, align 8
  br label %44

68:                                               ; preds = %44
  %69 = load i32, i32* @HFI_ERR_NONE, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %59, %41, %31
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @memcpy(%struct.hfi_buffer_requirements*, %struct.hfi_buffer_requirements*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
