; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-input.c_au8522_rc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-input.c_au8522_rc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_rc = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_msg = type { i8*, i32, i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au0828_rc*, i32, i32, i8*, i32)* @au8522_rc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au8522_rc_read(%struct.au0828_rc* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.au0828_rc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i8], align 1
  %14 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.au0828_rc* %0, %struct.au0828_rc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %14, i64 0, i64 0
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  %17 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  store i8* %17, i8** %16, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 1
  store i32 2, i32* %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 2
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 3
  %21 = load %struct.au0828_rc*, %struct.au0828_rc** %7, align 8
  %22 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %20, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i64 1
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 0
  %26 = load i8*, i8** %10, align 8
  store i8* %26, i8** %25, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 1
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %27, align 8
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 2
  %30 = load i32, i32* @I2C_M_RD, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 3
  %32 = load %struct.au0828_rc*, %struct.au0828_rc** %7, align 8
  %33 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %31, align 8
  %35 = load i32, i32* %8, align 4
  %36 = ashr i32 %35, 8
  %37 = or i32 64, %36
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  store i8 %38, i8* %39, align 1
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 255
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 1
  store i8 %42, i8* %43, align 1
  %44 = load i32, i32* %9, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %5
  %47 = load i32, i32* %9, align 4
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 2
  store i8 %48, i8* %49, align 1
  %50 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %14, i64 0, i64 0
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %46, %5
  %55 = load %struct.au0828_rc*, %struct.au0828_rc** %7, align 8
  %56 = getelementptr inbounds %struct.au0828_rc, %struct.au0828_rc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %14, i64 0, i64 0
  %62 = call i32 @i2c_transfer(i32 %60, %struct.i2c_msg* %61, i32 2)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %6, align 4
  br label %76

67:                                               ; preds = %54
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  br label %74

74:                                               ; preds = %71, %70
  %75 = phi i32 [ 0, %70 ], [ %73, %71 ]
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %74, %65
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
