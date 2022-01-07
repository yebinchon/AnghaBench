; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_i2c_write_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_i2c_write_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { i32 }
%struct.i2c_msg = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt1*, i32, i32*, %struct.i2c_msg*)* @pt1_i2c_write_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt1_i2c_write_msg(%struct.pt1* %0, i32 %1, i32* %2, %struct.i2c_msg* %3) #0 {
  %5 = alloca %struct.pt1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.i2c_msg*, align 8
  %9 = alloca i32, align 4
  store %struct.pt1* %0, %struct.pt1** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.i2c_msg* %3, %struct.i2c_msg** %8, align 8
  %10 = load %struct.pt1*, %struct.pt1** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @pt1_i2c_prepare(%struct.pt1* %10, i32 %11, i32* %6)
  %13 = load %struct.pt1*, %struct.pt1** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = shl i32 %17, 1
  %19 = call i32 @pt1_i2c_write_byte(%struct.pt1* %13, i32 %14, i32* %6, i32 %18)
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %37, %4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %20
  %27 = load %struct.pt1*, %struct.pt1** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.i2c_msg*, %struct.i2c_msg** %8, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pt1_i2c_write_byte(%struct.pt1* %27, i32 %28, i32* %6, i32 %35)
  br label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %20

40:                                               ; preds = %20
  %41 = load i32, i32* %6, align 4
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  ret void
}

declare dso_local i32 @pt1_i2c_prepare(%struct.pt1*, i32, i32*) #1

declare dso_local i32 @pt1_i2c_write_byte(%struct.pt1*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
