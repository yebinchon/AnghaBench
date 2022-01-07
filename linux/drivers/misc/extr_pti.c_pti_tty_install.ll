; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pti.c_pti_tty_install.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pti.c_pti_tty_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32 }
%struct.tty_struct = type { i32, %struct.pti_tty* }
%struct.pti_tty = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PTITTY_MINOR_START = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_driver*, %struct.tty_struct*)* @pti_tty_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pti_tty_install(%struct.tty_driver* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_driver*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pti_tty*, align 8
  %8 = alloca i32, align 4
  store %struct.tty_driver* %0, %struct.tty_driver** %4, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %5, align 8
  %9 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %14 = call i32 @tty_standard_install(%struct.tty_driver* %12, %struct.tty_struct* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %53

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.pti_tty* @kmalloc(i32 8, i32 %18)
  store %struct.pti_tty* %19, %struct.pti_tty** %7, align 8
  %20 = load %struct.pti_tty*, %struct.pti_tty** %7, align 8
  %21 = icmp eq %struct.pti_tty* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %55

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PTITTY_MINOR_START, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = call i8* @pti_request_masterchannel(i32 0, i32* null)
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.pti_tty*, %struct.pti_tty** %7, align 8
  %33 = getelementptr inbounds %struct.pti_tty, %struct.pti_tty* %32, i32 0, i32 0
  store i32* %31, i32** %33, align 8
  br label %39

34:                                               ; preds = %25
  %35 = call i8* @pti_request_masterchannel(i32 2, i32* null)
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.pti_tty*, %struct.pti_tty** %7, align 8
  %38 = getelementptr inbounds %struct.pti_tty, %struct.pti_tty* %37, i32 0, i32 0
  store i32* %36, i32** %38, align 8
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.pti_tty*, %struct.pti_tty** %7, align 8
  %41 = getelementptr inbounds %struct.pti_tty, %struct.pti_tty* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.pti_tty*, %struct.pti_tty** %7, align 8
  %46 = call i32 @kfree(%struct.pti_tty* %45)
  %47 = load i32, i32* @ENXIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %55

49:                                               ; preds = %39
  %50 = load %struct.pti_tty*, %struct.pti_tty** %7, align 8
  %51 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %52 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %51, i32 0, i32 1
  store %struct.pti_tty* %50, %struct.pti_tty** %52, align 8
  br label %53

53:                                               ; preds = %49, %2
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %44, %22
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @tty_standard_install(%struct.tty_driver*, %struct.tty_struct*) #1

declare dso_local %struct.pti_tty* @kmalloc(i32, i32) #1

declare dso_local i8* @pti_request_masterchannel(i32, i32*) #1

declare dso_local i32 @kfree(%struct.pti_tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
