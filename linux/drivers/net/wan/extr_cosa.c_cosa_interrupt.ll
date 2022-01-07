; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_cosa_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_cosa.c_cosa_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosa_data = type { i32, i32 }

@SR_CMD_FROM_SRP_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"cosa%d: unknown status 0x%02x in IRQ after %d retries\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cosa_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cosa_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cosa_data*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.cosa_data*
  store %struct.cosa_data* %9, %struct.cosa_data** %7, align 8
  br label %10

10:                                               ; preds = %32, %2
  %11 = load %struct.cosa_data*, %struct.cosa_data** %7, align 8
  %12 = call i32 @cosa_getstatus(%struct.cosa_data* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @SR_CMD_FROM_SRP_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %28 [
    i32 130, label %16
    i32 128, label %20
    i32 129, label %24
  ]

16:                                               ; preds = %10
  %17 = load %struct.cosa_data*, %struct.cosa_data** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @tx_interrupt(%struct.cosa_data* %17, i32 %18)
  br label %42

20:                                               ; preds = %10
  %21 = load %struct.cosa_data*, %struct.cosa_data** %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @rx_interrupt(%struct.cosa_data* %21, i32 %22)
  br label %42

24:                                               ; preds = %10
  %25 = load %struct.cosa_data*, %struct.cosa_data** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @eot_interrupt(%struct.cosa_data* %25, i32 %26)
  br label %42

28:                                               ; preds = %10
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  %31 = icmp slt i32 %29, 100
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @udelay(i32 100)
  br label %10

34:                                               ; preds = %28
  %35 = load %struct.cosa_data*, %struct.cosa_data** %7, align 8
  %36 = getelementptr inbounds %struct.cosa_data, %struct.cosa_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 255
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i8*, i32, ...) @pr_info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %34, %24, %20, %16
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %43
}

declare dso_local i32 @cosa_getstatus(%struct.cosa_data*) #1

declare dso_local i32 @tx_interrupt(%struct.cosa_data*, i32) #1

declare dso_local i32 @rx_interrupt(%struct.cosa_data*, i32) #1

declare dso_local i32 @eot_interrupt(%struct.cosa_data*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_info(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
