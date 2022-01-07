; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_guest_register_serr_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_guest_register_serr_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i32*, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cxl-%s-err\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@guest_slice_irq_err = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_afu*)* @guest_register_serr_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guest_register_serr_irq(%struct.cxl_afu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl_afu*, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %3, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %6 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %5, i32 0, i32 4
  %7 = call i32 @dev_name(i32* %6)
  %8 = call i32* @kasprintf(i32 %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %10 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %9, i32 0, i32 0
  store i32* %8, i32** %10, align 8
  %11 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %12 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %44

18:                                               ; preds = %1
  %19 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %20 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %23 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @guest_slice_irq_err, align 4
  %26 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %27 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %28 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @cxl_map_irq(i32 %21, i32 %24, i32 %25, %struct.cxl_afu* %26, i32* %29)
  %31 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %32 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = icmp ne i32 %30, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %18
  %35 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %36 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @kfree(i32* %37)
  %39 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %40 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %34, %15
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @cxl_map_irq(i32, i32, i32, %struct.cxl_afu*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
