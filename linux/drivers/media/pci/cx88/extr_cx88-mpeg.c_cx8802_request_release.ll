; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-mpeg.c_cx8802_request_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-mpeg.c_cx8802_request_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx8802_driver = type { i64, {}*, %struct.cx88_core* }
%struct.cx88_core = type { i64, i32, i32, i32 }

@CX88_MPEG_DVB = common dso_local global i64 0, align 8
@CX88_BOARD_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Post release GPIO=%x\0A\00", align 1
@MO_GP0_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx8802_driver*)* @cx8802_request_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx8802_request_release(%struct.cx8802_driver* %0) #0 {
  %2 = alloca %struct.cx8802_driver*, align 8
  %3 = alloca %struct.cx88_core*, align 8
  store %struct.cx8802_driver* %0, %struct.cx8802_driver** %2, align 8
  %4 = load %struct.cx8802_driver*, %struct.cx8802_driver** %2, align 8
  %5 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %4, i32 0, i32 2
  %6 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  store %struct.cx88_core* %6, %struct.cx88_core** %3, align 8
  %7 = load %struct.cx8802_driver*, %struct.cx8802_driver** %2, align 8
  %8 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %7, i32 0, i32 1
  %9 = bitcast {}** %8 to i32 (%struct.cx8802_driver*)**
  %10 = load i32 (%struct.cx8802_driver*)*, i32 (%struct.cx8802_driver*)** %9, align 8
  %11 = icmp ne i32 (%struct.cx8802_driver*)* %10, null
  br i1 %11, label %12, label %43

12:                                               ; preds = %1
  %13 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %14 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %12
  %19 = load %struct.cx8802_driver*, %struct.cx8802_driver** %2, align 8
  %20 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CX88_MPEG_DVB, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %26 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %29 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.cx8802_driver*, %struct.cx8802_driver** %2, align 8
  %32 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %31, i32 0, i32 1
  %33 = bitcast {}** %32 to i32 (%struct.cx8802_driver*)**
  %34 = load i32 (%struct.cx8802_driver*)*, i32 (%struct.cx8802_driver*)** %33, align 8
  %35 = load %struct.cx8802_driver*, %struct.cx8802_driver** %2, align 8
  %36 = call i32 %34(%struct.cx8802_driver* %35)
  %37 = load i32, i32* @CX88_BOARD_NONE, align 4
  %38 = load %struct.cx88_core*, %struct.cx88_core** %3, align 8
  %39 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @MO_GP0_IO, align 4
  %41 = call i32 @cx_read(i32 %40)
  %42 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %30, %12, %1
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i8*, i32) #1

declare dso_local i32 @cx_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
