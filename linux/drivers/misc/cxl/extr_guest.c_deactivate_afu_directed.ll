; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_deactivate_afu_directed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_deactivate_afu_directed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cxl_afu*)* }
%struct.cxl_afu = type { i64, i64, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Deactivating AFU(%d) directed mode\0A\00", align 1
@cxl_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_afu*)* @deactivate_afu_directed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deactivate_afu_directed(%struct.cxl_afu* %0) #0 {
  %2 = alloca %struct.cxl_afu*, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %2, align 8
  %3 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %4 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %3, i32 0, i32 3
  %5 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %6 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @dev_info(i32* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %10 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %12 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %14 = call i32 @cxl_sysfs_afu_m_remove(%struct.cxl_afu* %13)
  %15 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %16 = call i32 @cxl_chardev_afu_remove(%struct.cxl_afu* %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.cxl_afu*)*, i32 (%struct.cxl_afu*)** %18, align 8
  %20 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %21 = call i32 %19(%struct.cxl_afu* %20)
  ret i32 0
}

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @cxl_sysfs_afu_m_remove(%struct.cxl_afu*) #1

declare dso_local i32 @cxl_chardev_afu_remove(%struct.cxl_afu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
