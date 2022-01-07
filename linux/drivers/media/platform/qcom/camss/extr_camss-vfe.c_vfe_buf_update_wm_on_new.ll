; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_buf_update_wm_on_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe.c_vfe_buf_update_wm_on_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vfe_output = type { i32, %struct.camss_buffer**, i32 }
%struct.camss_buffer = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Inactive buffer is busy\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Output idle with buffer set!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, %struct.vfe_output*, %struct.camss_buffer*)* @vfe_buf_update_wm_on_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_buf_update_wm_on_new(%struct.vfe_device* %0, %struct.vfe_output* %1, %struct.camss_buffer* %2) #0 {
  %4 = alloca %struct.vfe_device*, align 8
  %5 = alloca %struct.vfe_output*, align 8
  %6 = alloca %struct.camss_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %4, align 8
  store %struct.vfe_output* %1, %struct.vfe_output** %5, align 8
  store %struct.camss_buffer* %2, %struct.camss_buffer** %6, align 8
  %8 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %9 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %94 [
    i32 128, label %11
    i32 129, label %61
    i32 130, label %93
  ]

11:                                               ; preds = %3
  %12 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %13 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %19 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %18, i32 0, i32 1
  %20 = load %struct.camss_buffer**, %struct.camss_buffer*** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.camss_buffer*, %struct.camss_buffer** %20, i64 %22
  %24 = load %struct.camss_buffer*, %struct.camss_buffer** %23, align 8
  %25 = icmp ne %struct.camss_buffer* %24, null
  br i1 %25, label %50, label %26

26:                                               ; preds = %11
  %27 = load %struct.camss_buffer*, %struct.camss_buffer** %6, align 8
  %28 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %29 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %28, i32 0, i32 1
  %30 = load %struct.camss_buffer**, %struct.camss_buffer*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.camss_buffer*, %struct.camss_buffer** %30, i64 %32
  store %struct.camss_buffer* %27, %struct.camss_buffer** %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %38 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %39 = call i32 @vfe_output_update_pong_addr(%struct.vfe_device* %37, %struct.vfe_output* %38, i32 0)
  br label %44

40:                                               ; preds = %26
  %41 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %42 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %43 = call i32 @vfe_output_update_ping_addr(%struct.vfe_device* %41, %struct.vfe_output* %42, i32 0)
  br label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %46 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %47 = call i32 @vfe_output_frame_drop(%struct.vfe_device* %45, %struct.vfe_output* %46, i32 3)
  %48 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %49 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %48, i32 0, i32 0
  store i32 130, i32* %49, align 8
  br label %60

50:                                               ; preds = %11
  %51 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %52 = load %struct.camss_buffer*, %struct.camss_buffer** %6, align 8
  %53 = call i32 @vfe_buf_add_pending(%struct.vfe_output* %51, %struct.camss_buffer* %52)
  %54 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %55 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err_ratelimited(i32 %58, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %50, %44
  br label %98

61:                                               ; preds = %3
  %62 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %63 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %62, i32 0, i32 1
  %64 = load %struct.camss_buffer**, %struct.camss_buffer*** %63, align 8
  %65 = getelementptr inbounds %struct.camss_buffer*, %struct.camss_buffer** %64, i64 0
  %66 = load %struct.camss_buffer*, %struct.camss_buffer** %65, align 8
  %67 = icmp ne %struct.camss_buffer* %66, null
  br i1 %67, label %82, label %68

68:                                               ; preds = %61
  %69 = load %struct.camss_buffer*, %struct.camss_buffer** %6, align 8
  %70 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %71 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %70, i32 0, i32 1
  %72 = load %struct.camss_buffer**, %struct.camss_buffer*** %71, align 8
  %73 = getelementptr inbounds %struct.camss_buffer*, %struct.camss_buffer** %72, i64 0
  store %struct.camss_buffer* %69, %struct.camss_buffer** %73, align 8
  %74 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %75 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %76 = call i32 @vfe_output_init_addrs(%struct.vfe_device* %74, %struct.vfe_output* %75, i32 1)
  %77 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %78 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %79 = call i32 @vfe_output_frame_drop(%struct.vfe_device* %77, %struct.vfe_output* %78, i32 1)
  %80 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %81 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %80, i32 0, i32 0
  store i32 128, i32* %81, align 8
  br label %92

82:                                               ; preds = %61
  %83 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %84 = load %struct.camss_buffer*, %struct.camss_buffer** %6, align 8
  %85 = call i32 @vfe_buf_add_pending(%struct.vfe_output* %83, %struct.camss_buffer* %84)
  %86 = load %struct.vfe_device*, %struct.vfe_device** %4, align 8
  %87 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_err_ratelimited(i32 %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %92

92:                                               ; preds = %82, %68
  br label %98

93:                                               ; preds = %3
  br label %94

94:                                               ; preds = %3, %93
  %95 = load %struct.vfe_output*, %struct.vfe_output** %5, align 8
  %96 = load %struct.camss_buffer*, %struct.camss_buffer** %6, align 8
  %97 = call i32 @vfe_buf_add_pending(%struct.vfe_output* %95, %struct.camss_buffer* %96)
  br label %98

98:                                               ; preds = %94, %92, %60
  ret void
}

declare dso_local i32 @vfe_output_update_pong_addr(%struct.vfe_device*, %struct.vfe_output*, i32) #1

declare dso_local i32 @vfe_output_update_ping_addr(%struct.vfe_device*, %struct.vfe_output*, i32) #1

declare dso_local i32 @vfe_output_frame_drop(%struct.vfe_device*, %struct.vfe_output*, i32) #1

declare dso_local i32 @vfe_buf_add_pending(%struct.vfe_output*, %struct.camss_buffer*) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*) #1

declare dso_local i32 @vfe_output_init_addrs(%struct.vfe_device*, %struct.vfe_output*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
