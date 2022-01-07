; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_find_format_by_fourcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_find_format_by_fourcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_format = type { i32 }
%struct.isc_device = type { i32, %struct.isc_format** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.isc_format* (%struct.isc_device*, i32)* @find_format_by_fourcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.isc_format* @find_format_by_fourcc(%struct.isc_device* %0, i32 %1) #0 {
  %3 = alloca %struct.isc_format*, align 8
  %4 = alloca %struct.isc_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.isc_format*, align 8
  %8 = alloca i32, align 4
  store %struct.isc_device* %0, %struct.isc_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %10 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %32, %2
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load %struct.isc_device*, %struct.isc_device** %4, align 8
  %18 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %17, i32 0, i32 1
  %19 = load %struct.isc_format**, %struct.isc_format*** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.isc_format*, %struct.isc_format** %19, i64 %21
  %23 = load %struct.isc_format*, %struct.isc_format** %22, align 8
  store %struct.isc_format* %23, %struct.isc_format** %7, align 8
  %24 = load %struct.isc_format*, %struct.isc_format** %7, align 8
  %25 = getelementptr inbounds %struct.isc_format, %struct.isc_format* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %16
  %30 = load %struct.isc_format*, %struct.isc_format** %7, align 8
  store %struct.isc_format* %30, %struct.isc_format** %3, align 8
  br label %36

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %12

35:                                               ; preds = %12
  store %struct.isc_format* null, %struct.isc_format** %3, align 8
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.isc_format*, %struct.isc_format** %3, align 8
  ret %struct.isc_format* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
