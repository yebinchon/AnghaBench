; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-input.c_au8522_rc_andor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-input.c_au8522_rc_andor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_rc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au0828_rc*, i32, i8, i8)* @au8522_rc_andor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au8522_rc_andor(%struct.au0828_rc* %0, i32 %1, i8 signext %2, i8 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.au0828_rc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.au0828_rc* %0, %struct.au0828_rc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  %13 = load %struct.au0828_rc*, %struct.au0828_rc** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @au8522_rc_read(%struct.au0828_rc* %13, i32 %14, i32 -1, i8* %11, i32 1)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %46

20:                                               ; preds = %4
  %21 = load i8, i8* %11, align 1
  store i8 %21, i8* %12, align 1
  %22 = load i8, i8* %11, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* %8, align 1
  %25 = sext i8 %24 to i32
  %26 = xor i32 %25, -1
  %27 = and i32 %23, %26
  %28 = load i8, i8* %9, align 1
  %29 = sext i8 %28 to i32
  %30 = load i8, i8* %8, align 1
  %31 = sext i8 %30 to i32
  %32 = and i32 %29, %31
  %33 = or i32 %27, %32
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %11, align 1
  %35 = load i8, i8* %11, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8, i8* %12, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %46

41:                                               ; preds = %20
  %42 = load %struct.au0828_rc*, %struct.au0828_rc** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i8, i8* %11, align 1
  %45 = call i32 @au8522_rc_write(%struct.au0828_rc* %42, i32 %43, i8 signext %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %41, %40, %18
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @au8522_rc_read(%struct.au0828_rc*, i32, i32, i8*, i32) #1

declare dso_local i32 @au8522_rc_write(%struct.au0828_rc*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
