; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ttusbir.c_ttusbir_set_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ttusbir.c_ttusbir_set_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttusbir = type { i64, i64, i64*, i32, i32, i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to submit bulk urb: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttusbir*)* @ttusbir_set_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttusbir_set_led(%struct.ttusbir* %0) #0 {
  %2 = alloca %struct.ttusbir*, align 8
  %3 = alloca i32, align 4
  store %struct.ttusbir* %0, %struct.ttusbir** %2, align 8
  %4 = call i32 (...) @smp_mb()
  %5 = load %struct.ttusbir*, %struct.ttusbir** %2, align 8
  %6 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.ttusbir*, %struct.ttusbir** %2, align 8
  %9 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %7, %10
  br i1 %11, label %12, label %49

12:                                               ; preds = %1
  %13 = load %struct.ttusbir*, %struct.ttusbir** %2, align 8
  %14 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %12
  %18 = load %struct.ttusbir*, %struct.ttusbir** %2, align 8
  %19 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %18, i32 0, i32 3
  %20 = call i64 @atomic_add_unless(i32* %19, i32 1, i32 1)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %17
  %23 = load %struct.ttusbir*, %struct.ttusbir** %2, align 8
  %24 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ttusbir*, %struct.ttusbir** %2, align 8
  %27 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.ttusbir*, %struct.ttusbir** %2, align 8
  %29 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %28, i32 0, i32 2
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 4
  store i64 %25, i64* %31, align 8
  %32 = load %struct.ttusbir*, %struct.ttusbir** %2, align 8
  %33 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call i32 @usb_submit_urb(i32 %34, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %22
  %40 = load %struct.ttusbir*, %struct.ttusbir** %2, align 8
  %41 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @dev_warn(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.ttusbir*, %struct.ttusbir** %2, align 8
  %46 = getelementptr inbounds %struct.ttusbir, %struct.ttusbir* %45, i32 0, i32 3
  %47 = call i32 @atomic_dec(i32* %46)
  br label %48

48:                                               ; preds = %39, %22
  br label %49

49:                                               ; preds = %48, %17, %12, %1
  ret void
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
