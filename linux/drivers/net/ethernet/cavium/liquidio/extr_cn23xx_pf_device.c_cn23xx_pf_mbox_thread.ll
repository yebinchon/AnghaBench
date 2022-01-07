; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_pf_mbox_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn23xx_pf_device.c_cn23xx_pf_mbox_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.cavium_wk = type { i32, i64 }
%struct.octeon_mbox = type { i32, i32, %struct.octeon_device* }
%struct.octeon_device = type { i64, %struct.octeon_mbox**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@OCTEON_CN23XX_REV_1_1 = common dso_local global i64 0, align 8
@OCTEON_PFVFACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @cn23xx_pf_mbox_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cn23xx_pf_mbox_thread(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.cavium_wk*, align 8
  %4 = alloca %struct.octeon_mbox*, align 8
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %10 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %11 = bitcast %struct.work_struct* %10 to %struct.cavium_wk*
  store %struct.cavium_wk* %11, %struct.cavium_wk** %3, align 8
  %12 = load %struct.cavium_wk*, %struct.cavium_wk** %3, align 8
  %13 = getelementptr inbounds %struct.cavium_wk, %struct.cavium_wk* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.octeon_mbox*
  store %struct.octeon_mbox* %15, %struct.octeon_mbox** %4, align 8
  %16 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %17 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %16, i32 0, i32 2
  %18 = load %struct.octeon_device*, %struct.octeon_device** %17, align 8
  store %struct.octeon_device* %18, %struct.octeon_device** %5, align 8
  %19 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %20 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OCTEON_CN23XX_REV_1_1, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %90

24:                                               ; preds = %1
  %25 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %26 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @readq(i32 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %31 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @writeq(i64 %29, i32 %32)
  store i64 0, i64* %9, align 8
  br label %34

34:                                               ; preds = %82, %24
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %37 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %35, %39
  br i1 %40, label %41, label %85

41:                                               ; preds = %34
  %42 = load i64, i64* %9, align 8
  %43 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %44 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = mul i64 %42, %46
  store i64 %47, i64* %8, align 8
  %48 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %49 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %48, i32 0, i32 1
  %50 = load %struct.octeon_mbox**, %struct.octeon_mbox*** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.octeon_mbox*, %struct.octeon_mbox** %50, i64 %51
  %53 = load %struct.octeon_mbox*, %struct.octeon_mbox** %52, align 8
  %54 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @readq(i32 %55)
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %81

59:                                               ; preds = %41
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* @OCTEON_PFVFACK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %59
  %64 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %65 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %64, i32 0, i32 1
  %66 = load %struct.octeon_mbox**, %struct.octeon_mbox*** %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds %struct.octeon_mbox*, %struct.octeon_mbox** %66, i64 %67
  %69 = load %struct.octeon_mbox*, %struct.octeon_mbox** %68, align 8
  %70 = call i64 @octeon_mbox_read(%struct.octeon_mbox* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %63
  %73 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %74 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %73, i32 0, i32 1
  %75 = load %struct.octeon_mbox**, %struct.octeon_mbox*** %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = getelementptr inbounds %struct.octeon_mbox*, %struct.octeon_mbox** %75, i64 %76
  %78 = load %struct.octeon_mbox*, %struct.octeon_mbox** %77, align 8
  %79 = call i32 @octeon_mbox_process_message(%struct.octeon_mbox* %78)
  br label %80

80:                                               ; preds = %72, %63
  br label %81

81:                                               ; preds = %80, %59, %41
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %9, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %9, align 8
  br label %34

85:                                               ; preds = %34
  %86 = load %struct.cavium_wk*, %struct.cavium_wk** %3, align 8
  %87 = getelementptr inbounds %struct.cavium_wk, %struct.cavium_wk* %86, i32 0, i32 0
  %88 = call i32 @msecs_to_jiffies(i32 10)
  %89 = call i32 @schedule_delayed_work(i32* %87, i32 %88)
  br label %93

90:                                               ; preds = %1
  %91 = load %struct.octeon_mbox*, %struct.octeon_mbox** %4, align 8
  %92 = call i32 @octeon_mbox_process_message(%struct.octeon_mbox* %91)
  br label %93

93:                                               ; preds = %90, %85
  ret void
}

declare dso_local i64 @readq(i32) #1

declare dso_local i32 @writeq(i64, i32) #1

declare dso_local i64 @octeon_mbox_read(%struct.octeon_mbox*) #1

declare dso_local i32 @octeon_mbox_process_message(%struct.octeon_mbox*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
