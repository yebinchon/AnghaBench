; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ves1x93.c_ves1x93_readreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_ves1x93.c_ves1x93_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ves1x93_state = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ves1x93_state*, i32)* @ves1x93_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ves1x93_readreg(%struct.ves1x93_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ves1x93_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [1 x i32], align 4
  %9 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.ves1x93_state* %0, %struct.ves1x93_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %11, align 4
  %13 = bitcast [1 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32* %16, i32** %15, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  store i32 2, i32* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 3
  %20 = load %struct.ves1x93_state*, %struct.ves1x93_state** %4, align 8
  %21 = getelementptr inbounds %struct.ves1x93_state, %struct.ves1x93_state* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %19, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i64 1
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 0
  %27 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  store i32* %27, i32** %26, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 1
  store i32 1, i32* %28, align 8
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 2
  %30 = load i32, i32* @I2C_M_RD, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 3
  %32 = load %struct.ves1x93_state*, %struct.ves1x93_state** %4, align 8
  %33 = getelementptr inbounds %struct.ves1x93_state, %struct.ves1x93_state* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %31, align 8
  %37 = load %struct.ves1x93_state*, %struct.ves1x93_state** %4, align 8
  %38 = getelementptr inbounds %struct.ves1x93_state, %struct.ves1x93_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %9, i64 0, i64 0
  %41 = call i32 @i2c_transfer(i32 %39, %struct.i2c_msg* %40, i32 2)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 2
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %49

46:                                               ; preds = %2
  %47 = getelementptr inbounds [1 x i32], [1 x i32]* %8, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %44
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
