; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5777.c_radio_tea5777_update_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5777.c_radio_tea5777_update_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radio_tea5777 = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.radio_tea5777*, i32*)* }

@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radio_tea5777*, i32)* @radio_tea5777_update_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radio_tea5777_update_read_reg(%struct.radio_tea5777* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radio_tea5777*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radio_tea5777* %0, %struct.radio_tea5777** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %8 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

12:                                               ; preds = %2
  %13 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %14 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %19 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %24 = call i32 @radio_tea5777_set_freq(%struct.radio_tea5777* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %59

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29, %17, %12
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @msecs_to_jiffies(i32 %34)
  %36 = call i64 @schedule_timeout_interruptible(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @ERESTARTSYS, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %59

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %30
  %43 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %44 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.radio_tea5777*, i32*)*, i32 (%struct.radio_tea5777*, i32*)** %46, align 8
  %48 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %49 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %50 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %49, i32 0, i32 0
  %51 = call i32 %47(%struct.radio_tea5777* %48, i32* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %59

56:                                               ; preds = %42
  %57 = load %struct.radio_tea5777*, %struct.radio_tea5777** %4, align 8
  %58 = getelementptr inbounds %struct.radio_tea5777, %struct.radio_tea5777* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %54, %38, %27, %11
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @radio_tea5777_set_freq(%struct.radio_tea5777*) #1

declare dso_local i64 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
