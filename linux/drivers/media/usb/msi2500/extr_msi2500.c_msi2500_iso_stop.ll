; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_iso_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/msi2500/extr_msi2500.c_msi2500_iso_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msi2500_dev = type { i64*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MAX_ISO_BUFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Unlinking URB %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msi2500_dev*)* @msi2500_iso_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msi2500_iso_stop(%struct.msi2500_dev* %0) #0 {
  %2 = alloca %struct.msi2500_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.msi2500_dev* %0, %struct.msi2500_dev** %2, align 8
  %4 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %5 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i32 (i32, i8*, ...) @dev_dbg(i32 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %42, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MAX_ISO_BUFS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %8
  %13 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %14 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %12
  %22 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %23 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %26 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i32, i8*, ...) @dev_dbg(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load %struct.msi2500_dev*, %struct.msi2500_dev** %2, align 8
  %34 = getelementptr inbounds %struct.msi2500_dev, %struct.msi2500_dev* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @usb_kill_urb(i64 %39)
  br label %41

41:                                               ; preds = %21, %12
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %8

45:                                               ; preds = %8
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @usb_kill_urb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
