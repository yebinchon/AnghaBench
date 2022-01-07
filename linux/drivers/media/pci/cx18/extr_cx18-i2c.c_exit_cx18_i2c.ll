; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-i2c.c_exit_cx18_i2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-i2c.c_exit_cx18_i2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32* }

@.str = private unnamed_addr constant [10 x i8] c"i2c exit\0A\00", align 1
@CX18_REG_I2C_1_WR = common dso_local global i32 0, align 4
@CX18_REG_I2C_2_WR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exit_cx18_i2c(%struct.cx18* %0) #0 {
  %2 = alloca %struct.cx18*, align 8
  %3 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %2, align 8
  %4 = call i32 @CX18_DEBUG_I2C(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.cx18*, %struct.cx18** %2, align 8
  %6 = load %struct.cx18*, %struct.cx18** %2, align 8
  %7 = load i32, i32* @CX18_REG_I2C_1_WR, align 4
  %8 = call i32 @cx18_read_reg(%struct.cx18* %6, i32 %7)
  %9 = or i32 %8, 4
  %10 = load i32, i32* @CX18_REG_I2C_1_WR, align 4
  %11 = call i32 @cx18_write_reg(%struct.cx18* %5, i32 %9, i32 %10)
  %12 = load %struct.cx18*, %struct.cx18** %2, align 8
  %13 = load %struct.cx18*, %struct.cx18** %2, align 8
  %14 = load i32, i32* @CX18_REG_I2C_2_WR, align 4
  %15 = call i32 @cx18_read_reg(%struct.cx18* %13, i32 %14)
  %16 = or i32 %15, 4
  %17 = load i32, i32* @CX18_REG_I2C_2_WR, align 4
  %18 = call i32 @cx18_write_reg(%struct.cx18* %12, i32 %16, i32 %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %30, %1
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 2
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load %struct.cx18*, %struct.cx18** %2, align 8
  %24 = getelementptr inbounds %struct.cx18, %struct.cx18* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = call i32 @i2c_del_adapter(i32* %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %19

33:                                               ; preds = %19
  ret void
}

declare dso_local i32 @CX18_DEBUG_I2C(i8*) #1

declare dso_local i32 @cx18_write_reg(%struct.cx18*, i32, i32) #1

declare dso_local i32 @cx18_read_reg(%struct.cx18*, i32) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
