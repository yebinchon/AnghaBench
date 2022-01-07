; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_find_format_by_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_find_format_by_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_format = type { i32 }

@formats_list = common dso_local global %struct.isc_format* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.isc_format* (i32, i32*)* @find_format_by_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.isc_format* @find_format_by_code(i32 %0, i32* %1) #0 {
  %3 = alloca %struct.isc_format*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.isc_format*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load %struct.isc_format*, %struct.isc_format** @formats_list, align 8
  %9 = getelementptr inbounds %struct.isc_format, %struct.isc_format* %8, i64 0
  store %struct.isc_format* %9, %struct.isc_format** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %28, %2
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.isc_format*, %struct.isc_format** @formats_list, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.isc_format* %12)
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load %struct.isc_format*, %struct.isc_format** %6, align 8
  %17 = getelementptr inbounds %struct.isc_format, %struct.isc_format* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.isc_format*, %struct.isc_format** %6, align 8
  store %struct.isc_format* %24, %struct.isc_format** %3, align 8
  br label %32

25:                                               ; preds = %15
  %26 = load %struct.isc_format*, %struct.isc_format** %6, align 8
  %27 = getelementptr inbounds %struct.isc_format, %struct.isc_format* %26, i32 1
  store %struct.isc_format* %27, %struct.isc_format** %6, align 8
  br label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %10

31:                                               ; preds = %10
  store %struct.isc_format* null, %struct.isc_format** %3, align 8
  br label %32

32:                                               ; preds = %31, %21
  %33 = load %struct.isc_format*, %struct.isc_format** %3, align 8
  ret %struct.isc_format* %33
}

declare dso_local i32 @ARRAY_SIZE(%struct.isc_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
