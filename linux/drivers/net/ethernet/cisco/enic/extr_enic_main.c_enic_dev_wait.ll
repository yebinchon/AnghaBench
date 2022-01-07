; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_dev_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_dev_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnic_dev*, i32 (%struct.vnic_dev*, i32)*, i32 (%struct.vnic_dev*, i32*)*, i32)* @enic_dev_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_dev_wait(%struct.vnic_dev* %0, i32 (%struct.vnic_dev*, i32)* %1, i32 (%struct.vnic_dev*, i32*)* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnic_dev*, align 8
  %7 = alloca i32 (%struct.vnic_dev*, i32)*, align 8
  %8 = alloca i32 (%struct.vnic_dev*, i32*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vnic_dev* %0, %struct.vnic_dev** %6, align 8
  store i32 (%struct.vnic_dev*, i32)* %1, i32 (%struct.vnic_dev*, i32)** %7, align 8
  store i32 (%struct.vnic_dev*, i32*)* %2, i32 (%struct.vnic_dev*, i32*)** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = call i32 (...) @in_interrupt()
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i32 (%struct.vnic_dev*, i32)*, i32 (%struct.vnic_dev*, i32)** %7, align 8
  %16 = load %struct.vnic_dev*, %struct.vnic_dev** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 %15(%struct.vnic_dev* %16, i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %5, align 4
  br label %53

23:                                               ; preds = %4
  %24 = load i32, i32* @jiffies, align 4
  %25 = load i32, i32* @HZ, align 4
  %26 = mul nsw i32 %25, 2
  %27 = add nsw i32 %24, %26
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %10, align 8
  br label %29

29:                                               ; preds = %45, %23
  %30 = load i32 (%struct.vnic_dev*, i32*)*, i32 (%struct.vnic_dev*, i32*)** %8, align 8
  %31 = load %struct.vnic_dev*, %struct.vnic_dev** %6, align 8
  %32 = call i32 %30(%struct.vnic_dev* %31, i32* %11)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %5, align 4
  br label %53

37:                                               ; preds = %29
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %53

41:                                               ; preds = %37
  %42 = load i32, i32* @HZ, align 4
  %43 = sdiv i32 %42, 10
  %44 = call i32 @schedule_timeout_uninterruptible(i32 %43)
  br label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %10, align 8
  %47 = load i32, i32* @jiffies, align 4
  %48 = call i64 @time_after(i64 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %29, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @ETIMEDOUT, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %40, %35, %21
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i64 @time_after(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
