; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_is_buf_refed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_is_buf_refed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32, i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.venus_buffer = type { i32, i32 }

@HFI_BUFFERFLAG_READONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_inst*, %struct.vb2_v4l2_buffer*)* @is_buf_refed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_buf_refed(%struct.venus_inst* %0, %struct.vb2_v4l2_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.venus_inst*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.venus_buffer*, align 8
  store %struct.venus_inst* %0, %struct.venus_inst** %4, align 8
  store %struct.vb2_v4l2_buffer* %1, %struct.vb2_v4l2_buffer** %5, align 8
  %7 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %8 = call %struct.venus_buffer* @to_venus_buffer(%struct.vb2_v4l2_buffer* %7)
  store %struct.venus_buffer* %8, %struct.venus_buffer** %6, align 8
  %9 = load %struct.venus_buffer*, %struct.venus_buffer** %6, align 8
  %10 = getelementptr inbounds %struct.venus_buffer, %struct.venus_buffer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @HFI_BUFFERFLAG_READONLY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load %struct.venus_buffer*, %struct.venus_buffer** %6, align 8
  %17 = getelementptr inbounds %struct.venus_buffer, %struct.venus_buffer* %16, i32 0, i32 1
  %18 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %19 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %18, i32 0, i32 1
  %20 = call i32 @list_add_tail(i32* %17, i32* %19)
  %21 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %22 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %21, i32 0, i32 0
  %23 = call i32 @schedule_work(i32* %22)
  store i32 1, i32* %3, align 4
  br label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %15
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.venus_buffer* @to_venus_buffer(%struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
