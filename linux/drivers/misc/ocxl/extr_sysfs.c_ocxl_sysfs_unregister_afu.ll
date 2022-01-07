; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_sysfs.c_ocxl_sysfs_unregister_afu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_sysfs.c_ocxl_sysfs_unregister_afu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_file_info = type { i32, i32 }

@afu_attrs = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocxl_sysfs_unregister_afu(%struct.ocxl_file_info* %0) #0 {
  %2 = alloca %struct.ocxl_file_info*, align 8
  %3 = alloca i32, align 4
  store %struct.ocxl_file_info* %0, %struct.ocxl_file_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32*, i32** @afu_attrs, align 8
  %7 = call i32 @ARRAY_SIZE(i32* %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %2, align 8
  %11 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %10, i32 0, i32 1
  %12 = load i32*, i32** @afu_attrs, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = call i32 @device_remove_file(i32* %11, i32* %15)
  br label %17

17:                                               ; preds = %9
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4

20:                                               ; preds = %4
  %21 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %2, align 8
  %22 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %21, i32 0, i32 1
  %23 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %2, align 8
  %24 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %23, i32 0, i32 0
  %25 = call i32 @device_remove_bin_file(i32* %22, i32* %24)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @device_remove_bin_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
