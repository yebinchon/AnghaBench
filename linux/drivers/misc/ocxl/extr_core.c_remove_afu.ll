; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_remove_afu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_remove_afu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_afu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocxl_afu*)* @remove_afu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_afu(%struct.ocxl_afu* %0) #0 {
  %2 = alloca %struct.ocxl_afu*, align 8
  store %struct.ocxl_afu* %0, %struct.ocxl_afu** %2, align 8
  %3 = load %struct.ocxl_afu*, %struct.ocxl_afu** %2, align 8
  %4 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %3, i32 0, i32 0
  %5 = call i32 @list_del(i32* %4)
  %6 = load %struct.ocxl_afu*, %struct.ocxl_afu** %2, align 8
  %7 = call i32 @ocxl_context_detach_all(%struct.ocxl_afu* %6)
  %8 = load %struct.ocxl_afu*, %struct.ocxl_afu** %2, align 8
  %9 = call i32 @deactivate_afu(%struct.ocxl_afu* %8)
  %10 = load %struct.ocxl_afu*, %struct.ocxl_afu** %2, align 8
  %11 = call i32 @deconfigure_afu(%struct.ocxl_afu* %10)
  %12 = load %struct.ocxl_afu*, %struct.ocxl_afu** %2, align 8
  %13 = call i32 @ocxl_afu_put(%struct.ocxl_afu* %12)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ocxl_context_detach_all(%struct.ocxl_afu*) #1

declare dso_local i32 @deactivate_afu(%struct.ocxl_afu*) #1

declare dso_local i32 @deconfigure_afu(%struct.ocxl_afu*) #1

declare dso_local i32 @ocxl_afu_put(%struct.ocxl_afu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
