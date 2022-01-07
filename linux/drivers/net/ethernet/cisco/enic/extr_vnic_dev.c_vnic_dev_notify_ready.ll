; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_notify_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c_vnic_dev_notify_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnic_dev*)* @vnic_dev_notify_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnic_dev_notify_ready(%struct.vnic_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnic_dev*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.vnic_dev* %0, %struct.vnic_dev** %3, align 8
  %8 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %9 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sdiv i32 %10, 4
  store i32 %11, i32* %5, align 4
  %12 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %13 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %18 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %1
  store i32 0, i32* %2, align 4
  br label %59

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %52, %22
  store i64 0, i64* %7, align 8
  %24 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %25 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %24, i32 0, i32 1
  %26 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %27 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %30 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32* %25, i32 %28, i32 %31)
  %33 = load %struct.vnic_dev*, %struct.vnic_dev** %3, align 8
  %34 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %33, i32 0, i32 1
  %35 = bitcast i32* %34 to i64*
  store i64* %35, i64** %4, align 8
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %48, %23
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i64*, i64** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = add nsw i64 %46, %45
  store i64 %47, i64* %7, align 8
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %6, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %36

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %7, align 8
  %54 = load i64*, i64** %4, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %23, label %58

58:                                               ; preds = %52
  store i32 1, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %21
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
