; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco.h_orinoco_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_orinoco.h_orinoco_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { i32, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*, i64*)*, i32 (i32*, i64*)* }

@.str = private unnamed_addr constant [52 x i8] c"orinoco_lock() called with hw_unavailable (dev=%p)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.orinoco_private*, i64*)* @orinoco_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orinoco_lock(%struct.orinoco_private* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.orinoco_private*, align 8
  %5 = alloca i64*, align 8
  store %struct.orinoco_private* %0, %struct.orinoco_private** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %7 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load i32 (i32*, i64*)*, i32 (i32*, i64*)** %10, align 8
  %12 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %13 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %12, i32 0, i32 0
  %14 = load i64*, i64** %5, align 8
  %15 = call i32 %11(i32* %13, i64* %14)
  %16 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %17 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %2
  %21 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %22 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @DEBUG(i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %26 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (i32*, i64*)*, i32 (i32*, i64*)** %29, align 8
  %31 = load %struct.orinoco_private*, %struct.orinoco_private** %4, align 8
  %32 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %31, i32 0, i32 0
  %33 = load i64*, i64** %5, align 8
  %34 = call i32 %30(i32* %32, i64* %33)
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @DEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
