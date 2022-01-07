; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-dec23.c_fill_table_dc00_d800.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-dec23.c_fill_table_dc00_d800.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_dec23_private = type { i32*, i32* }

@ONE_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwc_dec23_private*)* @fill_table_dc00_d800 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_table_dc00_d800(%struct.pwc_dec23_private* %0) #0 {
  %2 = alloca %struct.pwc_dec23_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pwc_dec23_private* %0, %struct.pwc_dec23_private** %2, align 8
  store i32 16384, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %31, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 256
  br i1 %8, label %9, label %34

9:                                                ; preds = %6
  %10 = load i32, i32* %4, align 4
  %11 = zext i32 %10 to i64
  %12 = and i64 %11, -16385
  %13 = trunc i64 %12 to i32
  %14 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %2, align 8
  %15 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32 %13, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %2, align 8
  %22 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %20, i32* %26, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add i32 %27, 31684
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 31684
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %9
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %6

34:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
