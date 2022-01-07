; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de21040_get_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de21040_get_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@ROMCmd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"timeout reading 21040 MAC address byte %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.de_private*)* @de21040_get_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de21040_get_mac_address(%struct.de_private* %0) #0 {
  %2 = alloca %struct.de_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.de_private* %0, %struct.de_private** %2, align 8
  %6 = load i32, i32* @ROMCmd, align 4
  %7 = call i32 @dw32(i32 %6, i32 0)
  %8 = call i32 @udelay(i32 5)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %43, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp ult i32 %10, 6
  br i1 %11, label %12, label %46

12:                                               ; preds = %9
  store i32 100000, i32* %5, align 4
  br label %13

13:                                               ; preds = %24, %12
  %14 = load i32, i32* @ROMCmd, align 4
  %15 = call i32 @dr32(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = call i32 (...) @rmb()
  br label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %5, align 4
  %23 = icmp sgt i32 %22, 0
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %13, label %26

26:                                               ; preds = %24
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.de_private*, %struct.de_private** %2, align 8
  %29 = getelementptr inbounds %struct.de_private, %struct.de_private* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %3, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %27, i32* %35, align 4
  %36 = call i32 @udelay(i32 1)
  %37 = load i32, i32* %5, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %26
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %9

46:                                               ; preds = %9
  ret void
}

declare dso_local i32 @dw32(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dr32(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
