; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c___smsc911x_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c___smsc911x_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SMSC911X_USE_32BIT = common dso_local global i32 0, align 4
@SMSC911X_USE_16BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc911x_data*, i32)* @__smsc911x_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__smsc911x_reg_read(%struct.smsc911x_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smsc911x_data*, align 8
  %5 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %7 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SMSC911X_USE_32BIT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %15 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %16, %17
  %19 = call i32 @readl(i32 %18)
  store i32 %19, i32* %3, align 4
  br label %48

20:                                               ; preds = %2
  %21 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %22 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SMSC911X_USE_16BIT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %20
  %29 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %30 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i32 @readw(i32 %33)
  %35 = and i32 %34, 65535
  %36 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %37 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %38, %39
  %41 = add nsw i32 %40, 2
  %42 = call i32 @readw(i32 %41)
  %43 = and i32 %42, 65535
  %44 = shl i32 %43, 16
  %45 = or i32 %35, %44
  store i32 %45, i32* %3, align 4
  br label %48

46:                                               ; preds = %20
  %47 = call i32 (...) @BUG()
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %28, %13
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @readw(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
