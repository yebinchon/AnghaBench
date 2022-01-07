; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_write_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_write_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_state = type { i32 }
%struct.adv748x_reg_value = type { i64, i32, i32 }

@ADV748X_PAGE_EOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Error regs page: 0x%02x reg: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv748x_state*, %struct.adv748x_reg_value*)* @adv748x_write_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_write_regs(%struct.adv748x_state* %0, %struct.adv748x_reg_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adv748x_state*, align 8
  %5 = alloca %struct.adv748x_reg_value*, align 8
  %6 = alloca i32, align 4
  store %struct.adv748x_state* %0, %struct.adv748x_state** %4, align 8
  store %struct.adv748x_reg_value* %1, %struct.adv748x_reg_value** %5, align 8
  br label %7

7:                                                ; preds = %38, %2
  %8 = load %struct.adv748x_reg_value*, %struct.adv748x_reg_value** %5, align 8
  %9 = getelementptr inbounds %struct.adv748x_reg_value, %struct.adv748x_reg_value* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ADV748X_PAGE_EOR, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %7
  %14 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %15 = load %struct.adv748x_reg_value*, %struct.adv748x_reg_value** %5, align 8
  %16 = getelementptr inbounds %struct.adv748x_reg_value, %struct.adv748x_reg_value* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.adv748x_reg_value*, %struct.adv748x_reg_value** %5, align 8
  %19 = getelementptr inbounds %struct.adv748x_reg_value, %struct.adv748x_reg_value* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.adv748x_reg_value*, %struct.adv748x_reg_value** %5, align 8
  %22 = getelementptr inbounds %struct.adv748x_reg_value, %struct.adv748x_reg_value* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @adv748x_write(%struct.adv748x_state* %14, i64 %17, i32 %20, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %13
  %28 = load %struct.adv748x_state*, %struct.adv748x_state** %4, align 8
  %29 = load %struct.adv748x_reg_value*, %struct.adv748x_reg_value** %5, align 8
  %30 = getelementptr inbounds %struct.adv748x_reg_value, %struct.adv748x_reg_value* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.adv748x_reg_value*, %struct.adv748x_reg_value** %5, align 8
  %33 = getelementptr inbounds %struct.adv748x_reg_value, %struct.adv748x_reg_value* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @adv_err(%struct.adv748x_state* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %31, i32 %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %42

37:                                               ; preds = %13
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.adv748x_reg_value*, %struct.adv748x_reg_value** %5, align 8
  %40 = getelementptr inbounds %struct.adv748x_reg_value, %struct.adv748x_reg_value* %39, i32 1
  store %struct.adv748x_reg_value* %40, %struct.adv748x_reg_value** %5, align 8
  br label %7

41:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %27
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @adv748x_write(%struct.adv748x_state*, i64, i32, i32) #1

declare dso_local i32 @adv_err(%struct.adv748x_state*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
