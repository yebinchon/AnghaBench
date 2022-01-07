; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pti.c_pti_tty_driver_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pti.c_pti_tty_driver_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.pti_tty* }
%struct.pti_tty = type { i32* }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i8*, i32)* @pti_tty_driver_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pti_tty_driver_write(%struct.tty_struct* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pti_tty*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load %struct.pti_tty*, %struct.pti_tty** %10, align 8
  store %struct.pti_tty* %11, %struct.pti_tty** %8, align 8
  %12 = load %struct.pti_tty*, %struct.pti_tty** %8, align 8
  %13 = icmp ne %struct.pti_tty* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load %struct.pti_tty*, %struct.pti_tty** %8, align 8
  %16 = getelementptr inbounds %struct.pti_tty, %struct.pti_tty* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.pti_tty*, %struct.pti_tty** %8, align 8
  %21 = getelementptr inbounds %struct.pti_tty, %struct.pti_tty* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @pti_write_to_aperture(i32* %22, i32* %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %4, align 4
  br label %31

28:                                               ; preds = %14, %3
  %29 = load i32, i32* @EFAULT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %19
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @pti_write_to_aperture(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
