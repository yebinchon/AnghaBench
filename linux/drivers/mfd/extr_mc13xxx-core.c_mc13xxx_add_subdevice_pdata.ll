; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_mc13xxx-core.c_mc13xxx_add_subdevice_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_mc13xxx-core.c_mc13xxx_add_subdevice_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc13xxx = type { i32, i32 }
%struct.mfd_cell = type { i8*, i64, i32 }

@E2BIG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mc13xxx*, i8*, i8*, i64)* @mc13xxx_add_subdevice_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13xxx_add_subdevice_pdata(%struct.mc13xxx* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mc13xxx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [30 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca %struct.mfd_cell, align 8
  store %struct.mc13xxx* %0, %struct.mc13xxx** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.mc13xxx*, %struct.mc13xxx** %6, align 8
  %14 = call i8* @mc13xxx_get_chipname(%struct.mc13xxx* %13)
  store i8* %14, i8** %11, align 8
  %15 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %12, i32 0, i32 0
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %12, i32 0, i32 1
  %18 = load i64, i64* %9, align 8
  store i64 %18, i64* %17, align 8
  %19 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %12, i32 0, i32 2
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 @snprintf(i8* %20, i32 30, i8* %21, i8* %22)
  %24 = sext i32 %23 to i64
  %25 = icmp ugt i64 %24, 30
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* @E2BIG, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %52

29:                                               ; preds = %4
  %30 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %31 = getelementptr inbounds [30 x i8], [30 x i8]* %10, i64 0, i64 0
  %32 = call i64 @strlen(i8* %31)
  %33 = add nsw i64 %32, 1
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32 @kmemdup(i8* %30, i64 %33, i32 %34)
  %36 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %12, i32 0, i32 2
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %12, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %52

43:                                               ; preds = %29
  %44 = load %struct.mc13xxx*, %struct.mc13xxx** %6, align 8
  %45 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mc13xxx*, %struct.mc13xxx** %6, align 8
  %48 = getelementptr inbounds %struct.mc13xxx, %struct.mc13xxx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @regmap_irq_get_domain(i32 %49)
  %51 = call i32 @mfd_add_devices(i32 %46, i32 -1, %struct.mfd_cell* %12, i32 1, i32* null, i32 0, i32 %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %43, %40, %26
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i8* @mc13xxx_get_chipname(%struct.mc13xxx*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @kmemdup(i8*, i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @mfd_add_devices(i32, i32, %struct.mfd_cell*, i32, i32*, i32, i32) #1

declare dso_local i32 @regmap_irq_get_domain(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
