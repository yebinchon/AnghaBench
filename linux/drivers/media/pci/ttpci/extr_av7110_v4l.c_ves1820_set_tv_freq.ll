; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_v4l.c_ves1820_set_tv_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_v4l.c_ves1820_set_tv_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"freq: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, i32)* @ves1820_set_tv_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ves1820_set_tv_freq(%struct.saa7146_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @dprintk(i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %10, 614
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 8
  %14 = and i32 %13, 127
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %14, i32* %15, align 16
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 255
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 142, i32* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 2692
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 160, i32* %6, align 4
  br label %29

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 7156
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 144, i32* %6, align 4
  br label %28

27:                                               ; preds = %23
  store i32 48, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, -3
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %32, i32* %33, align 4
  %34 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %36 = call i32 @tuner_write(%struct.saa7146_dev* %34, i32 97, i32* %35)
  ret i32 %36
}

declare dso_local i32 @dprintk(i32, i8*, i32) #1

declare dso_local i32 @tuner_write(%struct.saa7146_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
