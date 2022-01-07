; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-mailbox.c_get_mailbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-mailbox.c_get_mailbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32 }
%struct.ivtv_mailbox_data = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@API_FAST_RESULT = common dso_local global i32 0, align 4
@API_RESULT = common dso_local global i32 0, align 4
@API_NO_WAIT_MB = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*, %struct.ivtv_mailbox_data*, i32)* @get_mailbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mailbox(%struct.ivtv* %0, %struct.ivtv_mailbox_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ivtv*, align 8
  %6 = alloca %struct.ivtv_mailbox_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %5, align 8
  store %struct.ivtv_mailbox_data* %1, %struct.ivtv_mailbox_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* @jiffies, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.ivtv_mailbox_data*, %struct.ivtv_mailbox_data** %6, align 8
  %15 = getelementptr inbounds %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  store i32 100, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @API_FAST_RESULT, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @API_RESULT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 1, i32* %11, align 4
  br label %23

23:                                               ; preds = %22, %3
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %63, %23
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %24
  store i32 1, i32* %10, align 4
  br label %29

29:                                               ; preds = %42, %28
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = load %struct.ivtv*, %struct.ivtv** %5, align 8
  %35 = load %struct.ivtv_mailbox_data*, %struct.ivtv_mailbox_data** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @try_mailbox(%struct.ivtv* %34, %struct.ivtv_mailbox_data* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %69

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %29

45:                                               ; preds = %29
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @API_NO_WAIT_MB, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %45
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i32, i32* %12, align 4
  %54 = mul nsw i32 10, %53
  %55 = call i64 @msecs_to_jiffies(i32 %54)
  %56 = add i64 %52, %55
  %57 = call i64 @time_after(i64 %51, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %66

60:                                               ; preds = %50
  %61 = call i32 @ivtv_msleep_timeout(i32 10, i32 0)
  br label %62

62:                                               ; preds = %60, %45
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %24

66:                                               ; preds = %59, %24
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %39
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @try_mailbox(%struct.ivtv*, %struct.ivtv_mailbox_data*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @ivtv_msleep_timeout(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
