; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_identify_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_identify_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ADV748X_IO_CHIP_REV_ID_1 = common dso_local global i32 0, align 4
@ADV748X_IO_CHIP_REV_ID_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to read chip revision\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"chip found @ 0x%02x revision %02x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv748x_state*)* @adv748x_identify_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_identify_chip(%struct.adv748x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adv748x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adv748x_state* %0, %struct.adv748x_state** %3, align 8
  %6 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %7 = load i32, i32* @ADV748X_IO_CHIP_REV_ID_1, align 4
  %8 = call i32 @io_read(%struct.adv748x_state* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %10 = load i32, i32* @ADV748X_IO_CHIP_REV_ID_2, align 4
  %11 = call i32 @io_read(%struct.adv748x_state* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14, %1
  %18 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %19 = call i32 @adv_err(%struct.adv748x_state* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %33

22:                                               ; preds = %14
  %23 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %24 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %25 = getelementptr inbounds %struct.adv748x_state, %struct.adv748x_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 1
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @adv_info(%struct.adv748x_state* %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %22, %17
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @io_read(%struct.adv748x_state*, i32) #1

declare dso_local i32 @adv_err(%struct.adv748x_state*, i8*) #1

declare dso_local i32 @adv_info(%struct.adv748x_state*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
