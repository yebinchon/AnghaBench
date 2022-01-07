; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-i2c.c_ngene_command_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-i2c.c_ngene_command_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene = type { i32 }
%struct.ngene_command = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }

@CMD_I2C_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ngene*, i32, i32*, i32)* @ngene_command_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngene_command_i2c_write(%struct.ngene* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ngene*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ngene_command, align 8
  store %struct.ngene* %0, %struct.ngene** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @CMD_I2C_WRITE, align 4
  %12 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %10, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 8
  %15 = load i32, i32* %9, align 4
  %16 = add nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %10, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i64 %17, i64* %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 %21, 1
  %23 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %10, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %10, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @memcpy(i32 %29, i32* %30, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %10, i32 0, i32 2
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %10, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load %struct.ngene*, %struct.ngene** %6, align 8
  %39 = call i64 @ngene_command(%struct.ngene* %38, %struct.ngene_command* %10)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %4
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %55

44:                                               ; preds = %4
  %45 = getelementptr inbounds %struct.ngene_command, %struct.ngene_command* %10, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %55

54:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %51, %41
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @ngene_command(%struct.ngene*, %struct.ngene_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
