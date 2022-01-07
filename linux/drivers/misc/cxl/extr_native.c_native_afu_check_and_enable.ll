; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_afu_check_and_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_afu_check_and_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, %struct.cxl_afu*)* }
%struct.cxl_afu = type { i64, i32 }

@cxl_ops = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [41 x i8] c"Refusing to enable afu while link down!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_afu*)* @native_afu_check_and_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @native_afu_check_and_enable(%struct.cxl_afu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl_afu*, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %3, align 8
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cxl_ops, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32 (i32, %struct.cxl_afu*)*, i32 (i32, %struct.cxl_afu*)** %5, align 8
  %7 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %8 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %11 = call i32 %6(i32 %9, %struct.cxl_afu* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %26

17:                                               ; preds = %1
  %18 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %19 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %26

23:                                               ; preds = %17
  %24 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %25 = call i32 @afu_enable(%struct.cxl_afu* %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %23, %22, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @afu_enable(%struct.cxl_afu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
