; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-input.c___cx88_ir_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-input.c___cx88_ir_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32, %struct.cx88_IR* }
%struct.cx88_IR = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@cx88_ir_work = common dso_local global i32 0, align 4
@PCI_INT_IR_SMPINT = common dso_local global i32 0, align 4
@MO_DDS_IO = common dso_local global i32 0, align 4
@ir_samplerate = common dso_local global i32 0, align 4
@MO_DDSCFG_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @__cx88_ir_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cx88_ir_start(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cx88_core*, align 8
  %5 = alloca %struct.cx88_IR*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.cx88_core*
  store %struct.cx88_core* %7, %struct.cx88_core** %4, align 8
  %8 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %9 = icmp ne %struct.cx88_core* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %12 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %11, i32 0, i32 1
  %13 = load %struct.cx88_IR*, %struct.cx88_IR** %12, align 8
  %14 = icmp ne %struct.cx88_IR* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %63

18:                                               ; preds = %10
  %19 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %20 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %19, i32 0, i32 1
  %21 = load %struct.cx88_IR*, %struct.cx88_IR** %20, align 8
  store %struct.cx88_IR* %21, %struct.cx88_IR** %5, align 8
  %22 = load %struct.cx88_IR*, %struct.cx88_IR** %5, align 8
  %23 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %18
  %27 = load %struct.cx88_IR*, %struct.cx88_IR** %5, align 8
  %28 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %27, i32 0, i32 2
  %29 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %30 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %31 = call i32 @hrtimer_init(%struct.TYPE_3__* %28, i32 %29, i32 %30)
  %32 = load i32, i32* @cx88_ir_work, align 4
  %33 = load %struct.cx88_IR*, %struct.cx88_IR** %5, align 8
  %34 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.cx88_IR*, %struct.cx88_IR** %5, align 8
  %37 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %36, i32 0, i32 2
  %38 = load %struct.cx88_IR*, %struct.cx88_IR** %5, align 8
  %39 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %40, 1000000
  %42 = call i32 @ktime_set(i32 0, i32 %41)
  %43 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %44 = call i32 @hrtimer_start(%struct.TYPE_3__* %37, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %26, %18
  %46 = load %struct.cx88_IR*, %struct.cx88_IR** %5, align 8
  %47 = getelementptr inbounds %struct.cx88_IR, %struct.cx88_IR* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load i32, i32* @PCI_INT_IR_SMPINT, align 4
  %52 = load %struct.cx88_core*, %struct.cx88_core** %4, align 8
  %53 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* @MO_DDS_IO, align 4
  %57 = load i32, i32* @ir_samplerate, align 4
  %58 = mul nsw i32 3404422, %57
  %59 = call i32 @cx_write(i32 %56, i32 %58)
  %60 = load i32, i32* @MO_DDSCFG_IO, align 4
  %61 = call i32 @cx_write(i32 %60, i32 5)
  br label %62

62:                                               ; preds = %50, %45
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %15
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @hrtimer_init(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @hrtimer_start(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
