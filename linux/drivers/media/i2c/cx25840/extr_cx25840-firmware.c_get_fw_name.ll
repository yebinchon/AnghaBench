; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-firmware.c_get_fw_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-firmware.c_get_fw_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i32 }

@firmware = common dso_local global i8* null, align 8
@CX2388x_FIRMWARE = common dso_local global i8* null, align 8
@CX231xx_FIRMWARE = common dso_local global i8* null, align 8
@CX25840_FIRMWARE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.i2c_client*)* @get_fw_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_fw_name(%struct.i2c_client* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.cx25840_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %6 = call i32 @i2c_get_clientdata(%struct.i2c_client* %5)
  %7 = call %struct.cx25840_state* @to_state(i32 %6)
  store %struct.cx25840_state* %7, %struct.cx25840_state** %4, align 8
  %8 = load i8*, i8** @firmware, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i8*, i8** @firmware, align 8
  store i8* %13, i8** %2, align 8
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %16 = call i64 @is_cx2388x(%struct.cx25840_state* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i8*, i8** @CX2388x_FIRMWARE, align 8
  store i8* %19, i8** %2, align 8
  br label %28

20:                                               ; preds = %14
  %21 = load %struct.cx25840_state*, %struct.cx25840_state** %4, align 8
  %22 = call i64 @is_cx231xx(%struct.cx25840_state* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i8*, i8** @CX231xx_FIRMWARE, align 8
  store i8* %25, i8** %2, align 8
  br label %28

26:                                               ; preds = %20
  %27 = load i8*, i8** @CX25840_FIRMWARE, align 8
  store i8* %27, i8** %2, align 8
  br label %28

28:                                               ; preds = %26, %24, %18, %12
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

declare dso_local %struct.cx25840_state* @to_state(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @is_cx2388x(%struct.cx25840_state*) #1

declare dso_local i64 @is_cx231xx(%struct.cx25840_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
