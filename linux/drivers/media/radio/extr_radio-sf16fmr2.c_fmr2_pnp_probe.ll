; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-sf16fmr2.c_fmr2_pnp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-sf16fmr2.c_fmr2_pnp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmr2 = type { i32 }
%struct.pnp_dev = type { i32 }
%struct.pnp_device_id = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fmr2_cards = common dso_local global %struct.fmr2** null, align 8
@num_fmr2_cards = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*, %struct.pnp_device_id*)* @fmr2_pnp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmr2_pnp_probe(%struct.pnp_dev* %0, %struct.pnp_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca %struct.pnp_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fmr2*, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %4, align 8
  store %struct.pnp_device_id* %1, %struct.pnp_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.fmr2* @kzalloc(i32 4, i32 %8)
  store %struct.fmr2* %9, %struct.fmr2** %7, align 8
  %10 = load %struct.fmr2*, %struct.fmr2** %7, align 8
  %11 = icmp ne %struct.fmr2* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.fmr2*, %struct.fmr2** %7, align 8
  %17 = getelementptr inbounds %struct.fmr2, %struct.fmr2* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load %struct.fmr2*, %struct.fmr2** %7, align 8
  %19 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %19, i32 0, i32 0
  %21 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %22 = call i32 @pnp_port_start(%struct.pnp_dev* %21, i32 0)
  %23 = call i32 @fmr2_probe(%struct.fmr2* %18, i32* %20, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %15
  %27 = load %struct.fmr2*, %struct.fmr2** %7, align 8
  %28 = call i32 @kfree(%struct.fmr2* %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %40

30:                                               ; preds = %15
  %31 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %32 = load %struct.fmr2*, %struct.fmr2** %7, align 8
  %33 = call i32 @pnp_set_drvdata(%struct.pnp_dev* %31, %struct.fmr2* %32)
  %34 = load %struct.fmr2*, %struct.fmr2** %7, align 8
  %35 = load %struct.fmr2**, %struct.fmr2*** @fmr2_cards, align 8
  %36 = load i32, i32* @num_fmr2_cards, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @num_fmr2_cards, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds %struct.fmr2*, %struct.fmr2** %35, i64 %38
  store %struct.fmr2* %34, %struct.fmr2** %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %30, %26, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.fmr2* @kzalloc(i32, i32) #1

declare dso_local i32 @fmr2_probe(%struct.fmr2*, i32*, i32) #1

declare dso_local i32 @pnp_port_start(%struct.pnp_dev*, i32) #1

declare dso_local i32 @kfree(%struct.fmr2*) #1

declare dso_local i32 @pnp_set_drvdata(%struct.pnp_dev*, %struct.fmr2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
