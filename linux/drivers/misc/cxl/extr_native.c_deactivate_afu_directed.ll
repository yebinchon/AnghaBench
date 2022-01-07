; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_deactivate_afu_directed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_deactivate_afu_directed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (%struct.cxl_afu*)* }
%struct.cxl_afu = type { %struct.TYPE_7__*, i64, i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"Deactivating AFU directed mode\0A\00", align 1
@cxl_ops = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_afu*)* @deactivate_afu_directed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deactivate_afu_directed(%struct.cxl_afu* %0) #0 {
  %2 = alloca %struct.cxl_afu*, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %2, align 8
  %3 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %4 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %3, i32 0, i32 3
  %5 = call i32 @dev_info(i32* %4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %7 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %6, i32 0, i32 2
  store i64 0, i64* %7, align 8
  %8 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %9 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %11 = call i32 @cxl_sysfs_afu_m_remove(%struct.cxl_afu* %10)
  %12 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %13 = call i32 @cxl_chardev_afu_remove(%struct.cxl_afu* %12)
  %14 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %15 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** @cxl_ops, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32 (%struct.cxl_afu*)*, i32 (%struct.cxl_afu*)** %26, align 8
  %28 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %29 = call i32 %27(%struct.cxl_afu* %28)
  br label %30

30:                                               ; preds = %24, %1
  %31 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %32 = call i32 @cxl_afu_disable(%struct.cxl_afu* %31)
  %33 = load %struct.cxl_afu*, %struct.cxl_afu** %2, align 8
  %34 = call i32 @cxl_psl_purge(%struct.cxl_afu* %33)
  ret i32 0
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @cxl_sysfs_afu_m_remove(%struct.cxl_afu*) #1

declare dso_local i32 @cxl_chardev_afu_remove(%struct.cxl_afu*) #1

declare dso_local i32 @cxl_afu_disable(%struct.cxl_afu*) #1

declare dso_local i32 @cxl_psl_purge(%struct.cxl_afu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
