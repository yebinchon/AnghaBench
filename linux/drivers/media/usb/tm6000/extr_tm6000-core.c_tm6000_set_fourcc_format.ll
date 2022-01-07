; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-core.c_tm6000_set_fourcc_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-core.c_tm6000_set_fourcc_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { i64, i64 }

@TM6010 = common dso_local global i64 0, align 8
@TM6010_REQ07_RCC_ACTIVE_IF = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_UYVY = common dso_local global i64 0, align 8
@TM6010_REQ07_RC1_TRESHOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tm6000_set_fourcc_format(%struct.tm6000_core* %0) #0 {
  %2 = alloca %struct.tm6000_core*, align 8
  %3 = alloca i32, align 4
  store %struct.tm6000_core* %0, %struct.tm6000_core** %2, align 8
  %4 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %5 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TM6010, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %11 = load i32, i32* @TM6010_REQ07_RCC_ACTIVE_IF, align 4
  %12 = call i32 @tm6000_get_reg(%struct.tm6000_core* %10, i32 %11, i32 0)
  %13 = and i32 %12, 252
  store i32 %13, i32* %3, align 4
  %14 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %15 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_PIX_FMT_UYVY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %9
  %20 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %21 = load i32, i32* @TM6010_REQ07_RCC_ACTIVE_IF, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @tm6000_set_reg(%struct.tm6000_core* %20, i32 %21, i32 %22)
  br label %30

24:                                               ; preds = %9
  %25 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %26 = load i32, i32* @TM6010_REQ07_RCC_ACTIVE_IF, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, 1
  %29 = call i32 @tm6000_set_reg(%struct.tm6000_core* %25, i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %24, %19
  br label %46

31:                                               ; preds = %1
  %32 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %33 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @V4L2_PIX_FMT_UYVY, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %39 = load i32, i32* @TM6010_REQ07_RC1_TRESHOLD, align 4
  %40 = call i32 @tm6000_set_reg(%struct.tm6000_core* %38, i32 %39, i32 208)
  br label %45

41:                                               ; preds = %31
  %42 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %43 = load i32, i32* @TM6010_REQ07_RC1_TRESHOLD, align 4
  %44 = call i32 @tm6000_set_reg(%struct.tm6000_core* %42, i32 %43, i32 144)
  br label %45

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %30
  ret void
}

declare dso_local i32 @tm6000_get_reg(%struct.tm6000_core*, i32, i32) #1

declare dso_local i32 @tm6000_set_reg(%struct.tm6000_core*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
