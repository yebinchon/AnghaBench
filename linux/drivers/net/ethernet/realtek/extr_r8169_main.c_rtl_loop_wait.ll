; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_loop_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_loop_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }
%struct.rtl_cond = type { i32 (%struct.rtl8169_private.0*)*, i32 }
%struct.rtl8169_private.0 = type opaque

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"%s == %d (loop: %d, delay: %d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8169_private*, %struct.rtl_cond*, void (i32)*, i32, i32, i32)* @rtl_loop_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_loop_wait(%struct.rtl8169_private* %0, %struct.rtl_cond* %1, void (i32)* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl8169_private*, align 8
  %9 = alloca %struct.rtl_cond*, align 8
  %10 = alloca void (i32)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %8, align 8
  store %struct.rtl_cond* %1, %struct.rtl_cond** %9, align 8
  store void (i32)* %2, void (i32)** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %32, %6
  %16 = load i32, i32* %14, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load %struct.rtl_cond*, %struct.rtl_cond** %9, align 8
  %21 = getelementptr inbounds %struct.rtl_cond, %struct.rtl_cond* %20, i32 0, i32 0
  %22 = load i32 (%struct.rtl8169_private.0*)*, i32 (%struct.rtl8169_private.0*)** %21, align 8
  %23 = load %struct.rtl8169_private*, %struct.rtl8169_private** %8, align 8
  %24 = bitcast %struct.rtl8169_private* %23 to %struct.rtl8169_private.0*
  %25 = call i32 %22(%struct.rtl8169_private.0* %24)
  %26 = load i32, i32* %13, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 1, i32* %7, align 4
  br label %51

29:                                               ; preds = %19
  %30 = load void (i32)*, void (i32)** %10, align 8
  %31 = load i32, i32* %11, align 4
  call void %30(i32 %31)
  br label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %14, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %14, align 4
  br label %15

35:                                               ; preds = %15
  %36 = load %struct.rtl8169_private*, %struct.rtl8169_private** %8, align 8
  %37 = load i32, i32* @drv, align 4
  %38 = load %struct.rtl8169_private*, %struct.rtl8169_private** %8, align 8
  %39 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rtl_cond*, %struct.rtl_cond** %9, align 8
  %42 = getelementptr inbounds %struct.rtl_cond, %struct.rtl_cond* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @netif_err(%struct.rtl8169_private* %36, i32 %37, i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %47, i32 %48, i32 %49)
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %35, %28
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @netif_err(%struct.rtl8169_private*, i32, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
