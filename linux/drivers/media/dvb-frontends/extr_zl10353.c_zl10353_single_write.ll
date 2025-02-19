; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_zl10353.c_zl10353_single_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_zl10353.c_zl10353_single_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.zl10353_state* }
%struct.zl10353_state = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"zl10353: write to reg %x failed (err = %d)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32)* @zl10353_single_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zl10353_single_write(%struct.dvb_frontend* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.zl10353_state*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca %struct.i2c_msg, align 8
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.zl10353_state*, %struct.zl10353_state** %13, align 8
  store %struct.zl10353_state* %14, %struct.zl10353_state** %8, align 8
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  store i32 2, i32* %19, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32* %21, i32** %20, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 3
  %24 = load %struct.zl10353_state*, %struct.zl10353_state** %8, align 8
  %25 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %23, align 4
  %28 = load %struct.zl10353_state*, %struct.zl10353_state** %8, align 8
  %29 = getelementptr inbounds %struct.zl10353_state, %struct.zl10353_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @i2c_transfer(i32 %30, %struct.i2c_msg* %10, i32 1)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %4, align 4
  br label %40

39:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
