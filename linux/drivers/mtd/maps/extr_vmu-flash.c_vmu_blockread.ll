; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_vmu-flash.c_vmu_blockread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_vmu-flash.c_vmu_blockread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapleq = type { %struct.TYPE_2__*, %struct.maple_device* }
%struct.TYPE_2__ = type { i64 }
%struct.maple_device = type { i32 }
%struct.memcard = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mapleq*)* @vmu_blockread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmu_blockread(%struct.mapleq* %0) #0 {
  %2 = alloca %struct.mapleq*, align 8
  %3 = alloca %struct.maple_device*, align 8
  %4 = alloca %struct.memcard*, align 8
  store %struct.mapleq* %0, %struct.mapleq** %2, align 8
  %5 = load %struct.mapleq*, %struct.mapleq** %2, align 8
  %6 = getelementptr inbounds %struct.mapleq, %struct.mapleq* %5, i32 0, i32 1
  %7 = load %struct.maple_device*, %struct.maple_device** %6, align 8
  store %struct.maple_device* %7, %struct.maple_device** %3, align 8
  %8 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %9 = call %struct.memcard* @maple_get_drvdata(%struct.maple_device* %8)
  store %struct.memcard* %9, %struct.memcard** %4, align 8
  %10 = load %struct.memcard*, %struct.memcard** %4, align 8
  %11 = getelementptr inbounds %struct.memcard, %struct.memcard* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %37

19:                                               ; preds = %1
  %20 = load %struct.memcard*, %struct.memcard** %4, align 8
  %21 = getelementptr inbounds %struct.memcard, %struct.memcard* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mapleq*, %struct.mapleq** %2, align 8
  %24 = getelementptr inbounds %struct.mapleq, %struct.mapleq* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 12
  %29 = load %struct.memcard*, %struct.memcard** %4, align 8
  %30 = getelementptr inbounds %struct.memcard, %struct.memcard* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.memcard*, %struct.memcard** %4, align 8
  %33 = getelementptr inbounds %struct.memcard, %struct.memcard* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %31, %34
  %36 = call i32 @memcpy(i32 %22, i64 %28, i32 %35)
  br label %37

37:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.memcard* @maple_get_drvdata(%struct.maple_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
