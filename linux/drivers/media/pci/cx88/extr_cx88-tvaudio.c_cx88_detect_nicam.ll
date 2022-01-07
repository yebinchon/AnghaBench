; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-tvaudio.c_cx88_detect_nicam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-tvaudio.c_cx88_detect_nicam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_core = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"start nicam autodetect.\0A\00", align 1
@AUD_NICAM_STATUS2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"nicam is detected.\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"nicam is not detected.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx88_core*)* @cx88_detect_nicam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx88_detect_nicam(%struct.cx88_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx88_core*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cx88_core* %0, %struct.cx88_core** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %23, %1
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 6
  br i1 %9, label %10, label %26

10:                                               ; preds = %7
  %11 = load i32, i32* @AUD_NICAM_STATUS2, align 4
  %12 = call i32 @cx_read(i32 %11)
  %13 = and i32 %12, 2
  %14 = ashr i32 %13, 1
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = call i32 @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %28

21:                                               ; preds = %10
  %22 = call i32 @usleep_range(i32 10000, i32 20000)
  br label %23

23:                                               ; preds = %21
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %7

26:                                               ; preds = %7
  %27 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %19
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
