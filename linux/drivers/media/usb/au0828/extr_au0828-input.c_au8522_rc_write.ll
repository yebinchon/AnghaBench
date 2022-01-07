; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-input.c_au8522_rc_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-input.c_au8522_rc_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_rc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_msg = type { i8*, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au0828_rc*, i32, i32)* @au8522_rc_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au8522_rc_write(%struct.au0828_rc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.au0828_rc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca %struct.i2c_msg, align 8
  store %struct.au0828_rc* %0, %struct.au0828_rc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %12 = load i32, i32* %6, align 4
  %13 = ashr i32 %12, 8
  %14 = or i32 %13, 128
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %11, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 1
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 255
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %16, align 1
  %20 = getelementptr inbounds i8, i8* %16, i64 1
  %21 = load i32, i32* %7, align 4
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %20, align 1
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 0
  %24 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  store i8* %24, i8** %23, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1
  store i32 3, i32* %25, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 3
  %28 = load %struct.au0828_rc*, %struct.au0828_rc** %5, align 8
  %29 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %27, align 8
  %31 = load %struct.au0828_rc*, %struct.au0828_rc** %5, align 8
  %32 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @i2c_transfer(i32 %36, %struct.i2c_msg* %10, i32 1)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %3
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %51

42:                                               ; preds = %3
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  br label %49

49:                                               ; preds = %46, %45
  %50 = phi i32 [ 0, %45 ], [ %48, %46 ]
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %40
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
