; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_count_full_read_slots.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-me.c_mei_me_count_full_read_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }

@ME_CBD_HRA = common dso_local global i32 0, align 4
@ME_CBRP_HRA = common dso_local global i32 0, align 4
@ME_CBWP_HRA = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"filled_slots =%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*)* @mei_me_count_full_read_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_me_count_full_read_slots(%struct.mei_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  %9 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %10 = call i32 @mei_me_mecsr_read(%struct.mei_device* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @ME_CBD_HRA, align 4
  %13 = and i32 %11, %12
  %14 = ashr i32 %13, 24
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %7, align 1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ME_CBRP_HRA, align 4
  %18 = and i32 %16, %17
  %19 = ashr i32 %18, 8
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %5, align 1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @ME_CBWP_HRA, align 4
  %23 = and i32 %21, %22
  %24 = ashr i32 %23, 16
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %6, align 1
  %26 = load i8, i8* %6, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* %5, align 1
  %29 = sext i8 %28 to i32
  %30 = sub nsw i32 %27, %29
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %8, align 1
  %32 = load i8, i8* %8, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* %7, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load i32, i32* @EOVERFLOW, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %48

40:                                               ; preds = %1
  %41 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %42 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i8, i8* %8, align 1
  %45 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8 zeroext %44)
  %46 = load i8, i8* %8, align 1
  %47 = zext i8 %46 to i32
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %40, %37
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @mei_me_mecsr_read(%struct.mei_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
