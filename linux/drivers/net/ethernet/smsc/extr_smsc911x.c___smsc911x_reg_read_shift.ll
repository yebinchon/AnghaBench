; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c___smsc911x_reg_read_shift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c___smsc911x_reg_read_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SMSC911X_USE_32BIT = common dso_local global i32 0, align 4
@SMSC911X_USE_16BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc911x_data*, i32)* @__smsc911x_reg_read_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__smsc911x_reg_read_shift(%struct.smsc911x_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smsc911x_data*, align 8
  %5 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %7 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SMSC911X_USE_32BIT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %15 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @__smsc_shift(%struct.smsc911x_data* %17, i32 %18)
  %20 = add nsw i64 %16, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %3, align 4
  br label %54

22:                                               ; preds = %2
  %23 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %24 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SMSC911X_USE_16BIT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %22
  %31 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %32 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @__smsc_shift(%struct.smsc911x_data* %34, i32 %35)
  %37 = add nsw i64 %33, %36
  %38 = call i32 @readw(i64 %37)
  %39 = and i32 %38, 65535
  %40 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %41 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 2
  %46 = call i64 @__smsc_shift(%struct.smsc911x_data* %43, i32 %45)
  %47 = add nsw i64 %42, %46
  %48 = call i32 @readw(i64 %47)
  %49 = and i32 %48, 65535
  %50 = shl i32 %49, 16
  %51 = or i32 %39, %50
  store i32 %51, i32* %3, align 4
  br label %54

52:                                               ; preds = %22
  %53 = call i32 (...) @BUG()
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %30, %13
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @__smsc_shift(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
