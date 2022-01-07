; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_pio_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_pio_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32 }

@RDC_8820_PIO_0_DISABLE = common dso_local global i32 0, align 4
@NO_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"dst_gpio_outb ERROR !\0A\00", align 1
@DST_TYPE_HAS_FW_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dst_pio_disable(%struct.dst_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dst_state*, align 8
  store %struct.dst_state* %0, %struct.dst_state** %3, align 8
  %4 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %5 = load i32, i32* @RDC_8820_PIO_0_DISABLE, align 4
  %6 = load i32, i32* @RDC_8820_PIO_0_DISABLE, align 4
  %7 = load i32, i32* @NO_DELAY, align 4
  %8 = call i64 @dst_gpio_outb(%struct.dst_state* %4, i32 -1, i32 %5, i32 %6, i32 %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %22

12:                                               ; preds = %1
  %13 = load %struct.dst_state*, %struct.dst_state** %3, align 8
  %14 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DST_TYPE_HAS_FW_1, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = call i32 @udelay(i32 1000)
  br label %21

21:                                               ; preds = %19, %12
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %10
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @dst_gpio_outb(%struct.dst_state*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
