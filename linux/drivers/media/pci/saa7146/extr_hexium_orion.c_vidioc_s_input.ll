; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7146/extr_hexium_orion.c_vidioc_s_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7146/extr_hexium_orion.c_vidioc_s_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.saa7146_dev = type { i64 }
%struct.hexium = type { i32 }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@HEXIUM_INPUTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_s_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_input(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca %struct.hexium*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.saa7146_fh*
  %12 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %11, i32 0, i32 0
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %12, align 8
  store %struct.saa7146_dev* %13, %struct.saa7146_dev** %8, align 8
  %14 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %15 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.hexium*
  store %struct.hexium* %17, %struct.hexium** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @HEXIUM_INPUTS, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %31

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.hexium*, %struct.hexium** %9, align 8
  %27 = getelementptr inbounds %struct.hexium, %struct.hexium* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.hexium*, %struct.hexium** %9, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @hexium_set_input(%struct.hexium* %28, i32 %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %24, %21
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @hexium_set_input(%struct.hexium*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
