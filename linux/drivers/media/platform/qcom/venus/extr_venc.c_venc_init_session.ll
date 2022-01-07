; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_init_session.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_venc.c_venc_init_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { %struct.TYPE_3__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@HFI_BUFFER_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_inst*)* @venc_init_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venc_init_session(%struct.venus_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_inst*, align 8
  %4 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %3, align 8
  %5 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %6 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %7 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @hfi_session_init(%struct.venus_inst* %5, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %63

16:                                               ; preds = %1
  %17 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %18 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %19 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %22 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @venus_helper_set_input_resolution(%struct.venus_inst* %17, i32 %20, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %59

28:                                               ; preds = %16
  %29 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %30 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %31 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %34 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @HFI_BUFFER_OUTPUT, align 4
  %37 = call i32 @venus_helper_set_output_resolution(%struct.venus_inst* %29, i32 %32, i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %59

41:                                               ; preds = %28
  %42 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %43 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %44 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @venus_helper_set_color_format(%struct.venus_inst* %42, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %59

52:                                               ; preds = %41
  %53 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %54 = call i32 @venc_set_properties(%struct.venus_inst* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %59

58:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %63

59:                                               ; preds = %57, %51, %40, %27
  %60 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %61 = call i32 @hfi_session_deinit(%struct.venus_inst* %60)
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %58, %14
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @hfi_session_init(%struct.venus_inst*, i32) #1

declare dso_local i32 @venus_helper_set_input_resolution(%struct.venus_inst*, i32, i32) #1

declare dso_local i32 @venus_helper_set_output_resolution(%struct.venus_inst*, i32, i32, i32) #1

declare dso_local i32 @venus_helper_set_color_format(%struct.venus_inst*, i32) #1

declare dso_local i32 @venc_set_properties(%struct.venus_inst*) #1

declare dso_local i32 @hfi_session_deinit(%struct.venus_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
