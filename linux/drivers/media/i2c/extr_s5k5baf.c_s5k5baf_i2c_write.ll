; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { i32, i32 }
%struct.i2c_client = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"i2c_write: 0x%04x : 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"i2c_write: error during transfer (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5k5baf*, i32, i32)* @s5k5baf_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5k5baf_i2c_write(%struct.s5k5baf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.s5k5baf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  store %struct.s5k5baf* %0, %struct.s5k5baf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %11 = load i32, i32* %5, align 4
  %12 = ashr i32 %11, 8
  store i32 %12, i32* %10, align 4
  %13 = getelementptr inbounds i32, i32* %10, i64 1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 255
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds i32, i32* %13, i64 1
  %17 = load i32, i32* %6, align 4
  %18 = ashr i32 %17, 8
  store i32 %18, i32* %16, align 4
  %19 = getelementptr inbounds i32, i32* %16, i64 1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 255
  store i32 %21, i32* %19, align 4
  %22 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %23 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %22, i32 0, i32 1
  %24 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %23)
  store %struct.i2c_client* %24, %struct.i2c_client** %8, align 8
  %25 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %26 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %48

30:                                               ; preds = %3
  %31 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %33 = call i32 @i2c_master_send(%struct.i2c_client* %31, i32* %32, i32 4)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* @debug, align 4
  %35 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @v4l2_dbg(i32 3, i32 %34, %struct.i2c_client* %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 4
  br i1 %40, label %41, label %48

41:                                               ; preds = %30
  %42 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @v4l2_err(%struct.i2c_client* %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %47 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %29, %41, %30
  ret void
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.i2c_client*, i8*, i32, i32) #1

declare dso_local i32 @v4l2_err(%struct.i2c_client*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
