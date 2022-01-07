; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c___smsc911x_reg_write_shift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c___smsc911x_reg_write_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SMSC911X_USE_32BIT = common dso_local global i32 0, align 4
@SMSC911X_USE_16BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsc911x_data*, i32, i32)* @__smsc911x_reg_write_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__smsc911x_reg_write_shift(%struct.smsc911x_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.smsc911x_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %8 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SMSC911X_USE_32BIT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %17 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @__smsc_shift(%struct.smsc911x_data* %19, i32 %20)
  %22 = add nsw i64 %18, %21
  %23 = call i32 @writel(i32 %15, i64 %22)
  br label %57

24:                                               ; preds = %3
  %25 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %26 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SMSC911X_USE_16BIT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 65535
  %35 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %36 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @__smsc_shift(%struct.smsc911x_data* %38, i32 %39)
  %41 = add nsw i64 %37, %40
  %42 = call i32 @writew(i32 %34, i64 %41)
  %43 = load i32, i32* %6, align 4
  %44 = ashr i32 %43, 16
  %45 = and i32 %44, 65535
  %46 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %47 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 2
  %52 = call i64 @__smsc_shift(%struct.smsc911x_data* %49, i32 %51)
  %53 = add nsw i64 %48, %52
  %54 = call i32 @writew(i32 %45, i64 %53)
  br label %57

55:                                               ; preds = %24
  %56 = call i32 (...) @BUG()
  br label %57

57:                                               ; preds = %55, %32, %14
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @__smsc_shift(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
