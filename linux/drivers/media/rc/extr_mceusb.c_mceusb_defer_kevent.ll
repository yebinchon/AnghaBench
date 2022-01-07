; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_mceusb.c_mceusb_defer_kevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_mceusb.c_mceusb_defer_kevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mceusb_dev = type { i32, i32, i32 }

@EVENT_RST_PEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"kevent %d dropped pending USB Reset Device\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"kevent %d already scheduled\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"kevent %d scheduled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mceusb_dev*, i32)* @mceusb_defer_kevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mceusb_defer_kevent(%struct.mceusb_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mceusb_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mceusb_dev* %0, %struct.mceusb_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %6, i32 0, i32 2
  %8 = call i32 @set_bit(i32 %5, i32* %7)
  %9 = load i32, i32* @EVENT_RST_PEND, align 4
  %10 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %10, i32 0, i32 2
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %37

20:                                               ; preds = %2
  %21 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %22 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %21, i32 0, i32 1
  %23 = call i32 @schedule_work(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %27 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %37

31:                                               ; preds = %20
  %32 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %14, %31, %25
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
