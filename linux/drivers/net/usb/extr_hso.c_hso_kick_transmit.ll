; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_kick_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_kick_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_serial = type { i32, i32 (%struct.hso_serial*)*, i32, i64, i64, i64, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hso_serial*)* @hso_kick_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hso_kick_transmit(%struct.hso_serial* %0) #0 {
  %2 = alloca %struct.hso_serial*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.hso_serial* %0, %struct.hso_serial** %2, align 8
  %5 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %6 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %5, i32 0, i32 2
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %10 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %66

14:                                               ; preds = %1
  %15 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %16 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %66

20:                                               ; preds = %14
  %21 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %22 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @hso_get_activity(i32 %23)
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %66

29:                                               ; preds = %20
  %30 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %31 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %34 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @swap(i32 %32, i64 %35)
  %37 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %38 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %41 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %40, i32 0, i32 5
  store i64 %39, i64* %41, align 8
  %42 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %43 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %45 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %29
  %49 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %50 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %49, i32 0, i32 1
  %51 = load i32 (%struct.hso_serial*)*, i32 (%struct.hso_serial*)** %50, align 8
  %52 = icmp ne i32 (%struct.hso_serial*)* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %55 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %54, i32 0, i32 1
  %56 = load i32 (%struct.hso_serial*)*, i32 (%struct.hso_serial*)** %55, align 8
  %57 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %58 = call i32 %56(%struct.hso_serial* %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %63 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %53
  br label %65

65:                                               ; preds = %64, %48, %29
  br label %66

66:                                               ; preds = %65, %28, %19, %13
  %67 = load %struct.hso_serial*, %struct.hso_serial** %2, align 8
  %68 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %67, i32 0, i32 2
  %69 = load i64, i64* %3, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hso_get_activity(i32) #1

declare dso_local i32 @swap(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
