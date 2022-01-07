; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv6111.c_wait_for_call_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv6111.c_wait_for_call_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv*, i32)* @wait_for_call_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_call_done(%struct.stv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.stv* %0, %struct.stv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 10, i64* %7, align 8
  br label %9

9:                                                ; preds = %25, %2
  %10 = load i64, i64* %7, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load %struct.stv*, %struct.stv** %4, align 8
  %14 = call i32 @read_reg(%struct.stv* %13, i32 9, i32* %8)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %33

19:                                               ; preds = %12
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %31

25:                                               ; preds = %19
  %26 = call i32 @usleep_range(i32 4000, i32 6000)
  %27 = load i64, i64* %7, align 8
  %28 = sub nsw i64 %27, 1
  store i64 %28, i64* %7, align 8
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %9

31:                                               ; preds = %24, %9
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %17
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @read_reg(%struct.stv*, i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
