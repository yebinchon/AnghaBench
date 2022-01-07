; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ir-kbd-i2c.c_get_key_pixelview.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ir-kbd-i2c.c_get_key_pixelview.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IR_i2c = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"read error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@RC_PROTO_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.IR_i2c*, i32*, i8*, i64*)* @get_key_pixelview to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_key_pixelview(%struct.IR_i2c* %0, i32* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.IR_i2c*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.IR_i2c* %0, %struct.IR_i2c** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %13 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @i2c_master_recv(i32 %14, i8* %11, i32 1)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %31

18:                                               ; preds = %4
  %19 = load %struct.IR_i2c*, %struct.IR_i2c** %6, align 8
  %20 = getelementptr inbounds %struct.IR_i2c, %struct.IR_i2c* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @dev_dbg(i32* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %10, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %37

28:                                               ; preds = %18
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %37

31:                                               ; preds = %4
  %32 = load i32, i32* @RC_PROTO_OTHER, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i8, i8* %11, align 1
  %35 = load i8*, i8** %8, align 8
  store i8 %34, i8* %35, align 1
  %36 = load i64*, i64** %9, align 8
  store i64 0, i64* %36, align 8
  store i32 1, i32* %5, align 4
  br label %37

37:                                               ; preds = %31, %28, %26
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @i2c_master_recv(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
