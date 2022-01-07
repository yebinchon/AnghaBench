; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl-core.c_twl_read_idcode_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl-core.c_twl_read_idcode_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@TWL4030_MODULE_INTBR = common dso_local global i32 0, align 4
@TWL_EEPROM_R_UNLOCK = common dso_local global i32 0, align 4
@REG_UNLOCK_TEST_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"TWL4030 Unable to unlock IDCODE registers -%d\0A\00", align 1
@twl_priv = common dso_local global %struct.TYPE_2__* null, align 8
@REG_IDCODE_7_0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"TWL4030: unable to read IDCODE -%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"TWL4030 Unable to relock IDCODE registers -%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @twl_read_idcode_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_read_idcode_register() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @TWL4030_MODULE_INTBR, align 4
  %3 = load i32, i32* @TWL_EEPROM_R_UNLOCK, align 4
  %4 = load i32, i32* @REG_UNLOCK_TEST_REG, align 4
  %5 = call i32 @twl_i2c_write_u8(i32 %2, i32 %3, i32 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %32

11:                                               ; preds = %0
  %12 = load i32, i32* @TWL4030_MODULE_INTBR, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @twl_priv, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* @REG_IDCODE_7_0, align 4
  %16 = call i32 @twl_i2c_read(i32 %12, i32* %14, i32 %15, i32 4)
  store i32 %16, i32* %1, align 4
  %17 = load i32, i32* %1, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %32

22:                                               ; preds = %11
  %23 = load i32, i32* @TWL4030_MODULE_INTBR, align 4
  %24 = load i32, i32* @REG_UNLOCK_TEST_REG, align 4
  %25 = call i32 @twl_i2c_write_u8(i32 %23, i32 0, i32 %24)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %22
  br label %32

32:                                               ; preds = %31, %19, %8
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @twl_i2c_read(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
