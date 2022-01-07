; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_enum_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i32, i32, i32, i32, i32 }
%struct.venus_inst = type { i32 }
%struct.venus_format = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @vdec_enum_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_enum_fmt(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca %struct.venus_inst*, align 8
  %9 = alloca %struct.venus_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.venus_inst* @to_inst(%struct.file* %10)
  store %struct.venus_inst* %11, %struct.venus_inst** %8, align 8
  %12 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @memset(i32 %14, i32 0, i32 4)
  %16 = load %struct.venus_inst*, %struct.venus_inst** %8, align 8
  %17 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.venus_format* @find_format_by_index(%struct.venus_inst* %16, i32 %19, i32 %22)
  store %struct.venus_format* %23, %struct.venus_format** %9, align 8
  %24 = load %struct.venus_format*, %struct.venus_format** %9, align 8
  %25 = icmp ne %struct.venus_format* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %40

29:                                               ; preds = %3
  %30 = load %struct.venus_format*, %struct.venus_format** %9, align 8
  %31 = getelementptr inbounds %struct.venus_format, %struct.venus_format* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.venus_format*, %struct.venus_format** %9, align 8
  %36 = getelementptr inbounds %struct.venus_format, %struct.venus_format* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %29, %26
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.venus_inst* @to_inst(%struct.file*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.venus_format* @find_format_by_index(%struct.venus_inst*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
