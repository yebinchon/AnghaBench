; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_guest_psl_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_guest_psl_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_context = type { i32 }
%struct.cxl_irq_info = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"%d: received PSL interrupt %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Unable to get IRQ info: %i\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @guest_psl_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guest_psl_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cxl_context*, align 8
  %7 = alloca %struct.cxl_irq_info, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.cxl_context*
  store %struct.cxl_context* %10, %struct.cxl_context** %6, align 8
  %11 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %12 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @pr_devel(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %17 = call i32 @guest_get_irq_info(%struct.cxl_context* %16, %struct.cxl_irq_info* %7)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %23, i32* %3, align 4
  br label %29

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.cxl_context*, %struct.cxl_context** %6, align 8
  %27 = call i32 @cxl_irq_psl8(i32 %25, %struct.cxl_context* %26, %struct.cxl_irq_info* %7)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %24, %20
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i32 @pr_devel(i8*, i32, i32) #1

declare dso_local i32 @guest_get_irq_info(%struct.cxl_context*, %struct.cxl_irq_info*) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @cxl_irq_psl8(i32, %struct.cxl_context*, %struct.cxl_irq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
