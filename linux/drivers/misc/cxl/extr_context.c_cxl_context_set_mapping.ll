; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_context.c_cxl_context_set_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_context.c_cxl_context_set_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_context = type { i32, %struct.address_space* }
%struct.address_space = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxl_context_set_mapping(%struct.cxl_context* %0, %struct.address_space* %1) #0 {
  %3 = alloca %struct.cxl_context*, align 8
  %4 = alloca %struct.address_space*, align 8
  store %struct.cxl_context* %0, %struct.cxl_context** %3, align 8
  store %struct.address_space* %1, %struct.address_space** %4, align 8
  %5 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %6 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.address_space*, %struct.address_space** %4, align 8
  %9 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %10 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %9, i32 0, i32 1
  store %struct.address_space* %8, %struct.address_space** %10, align 8
  %11 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %12 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %11, i32 0, i32 0
  %13 = call i32 @mutex_unlock(i32* %12)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
