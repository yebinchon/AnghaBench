; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_alloc_context_array.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_ucan.c_ucan_alloc_context_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucan_priv = type { i32, %struct.TYPE_3__, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.ucan_priv* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Not enough memory to allocate tx contexts\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucan_priv*)* @ucan_alloc_context_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucan_alloc_context_array(%struct.ucan_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucan_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ucan_priv* %0, %struct.ucan_priv** %3, align 8
  %5 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %6 = call i32 @ucan_release_context_array(%struct.ucan_priv* %5)
  %7 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.TYPE_4__* @kcalloc(i32 %10, i32 16, i32 %11)
  %13 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %14 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %13, i32 0, i32 2
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %14, align 8
  %15 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %21 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @netdev_err(i32 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %60

26:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %50, %26
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %30 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %27
  %35 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %36 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %43 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %44 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store %struct.ucan_priv* %42, %struct.ucan_priv** %49, align 8
  br label %50

50:                                               ; preds = %34
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %27

53:                                               ; preds = %27
  %54 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %55 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ucan_priv*, %struct.ucan_priv** %3, align 8
  %59 = getelementptr inbounds %struct.ucan_priv, %struct.ucan_priv* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %53, %19
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @ucan_release_context_array(%struct.ucan_priv*) #1

declare dso_local %struct.TYPE_4__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
