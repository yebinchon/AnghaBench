; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_file.c_ocxl_file_unregister_afu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_file.c_ocxl_file_unregister_afu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_afu = type { i32 }
%struct.ocxl_file_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocxl_file_unregister_afu(%struct.ocxl_afu* %0) #0 {
  %2 = alloca %struct.ocxl_afu*, align 8
  %3 = alloca %struct.ocxl_file_info*, align 8
  store %struct.ocxl_afu* %0, %struct.ocxl_afu** %2, align 8
  %4 = load %struct.ocxl_afu*, %struct.ocxl_afu** %2, align 8
  %5 = call %struct.ocxl_file_info* @ocxl_afu_get_private(%struct.ocxl_afu* %4)
  store %struct.ocxl_file_info* %5, %struct.ocxl_file_info** %3, align 8
  %6 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %3, align 8
  %7 = icmp ne %struct.ocxl_file_info* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %17

9:                                                ; preds = %1
  %10 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %3, align 8
  %11 = call i32 @ocxl_file_make_invisible(%struct.ocxl_file_info* %10)
  %12 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %3, align 8
  %13 = call i32 @ocxl_sysfs_unregister_afu(%struct.ocxl_file_info* %12)
  %14 = load %struct.ocxl_file_info*, %struct.ocxl_file_info** %3, align 8
  %15 = getelementptr inbounds %struct.ocxl_file_info, %struct.ocxl_file_info* %14, i32 0, i32 0
  %16 = call i32 @device_unregister(i32* %15)
  br label %17

17:                                               ; preds = %9, %8
  ret void
}

declare dso_local %struct.ocxl_file_info* @ocxl_afu_get_private(%struct.ocxl_afu*) #1

declare dso_local i32 @ocxl_file_make_invisible(%struct.ocxl_file_info*) #1

declare dso_local i32 @ocxl_sysfs_unregister_afu(%struct.ocxl_file_info*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
