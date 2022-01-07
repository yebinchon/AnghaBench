; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-mci.c_mci_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-mci.c_mci_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mci = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ddb_link* }
%struct.ddb_link = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MCI_CONTROL_RESET = common dso_local global i32 0, align 4
@MCI_CONTROL = common dso_local global i64 0, align 8
@MCI_CONTROL_READY = common dso_local global i64 0, align 8
@SX8_TSCONFIG_MODE_NORMAL = common dso_local global i32 0, align 4
@SX8_TSCONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mci*)* @mci_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mci_reset(%struct.mci* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mci*, align 8
  %4 = alloca %struct.ddb_link*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.mci* %0, %struct.mci** %3, align 8
  %7 = load %struct.mci*, %struct.mci** %3, align 8
  %8 = getelementptr inbounds %struct.mci, %struct.mci* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.ddb_link*, %struct.ddb_link** %10, align 8
  store %struct.ddb_link* %11, %struct.ddb_link** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 40, i64* %6, align 8
  %12 = load %struct.ddb_link*, %struct.ddb_link** %4, align 8
  %13 = load i32, i32* @MCI_CONTROL_RESET, align 4
  %14 = load i64, i64* @MCI_CONTROL, align 8
  %15 = call i32 @ddblwritel(%struct.ddb_link* %12, i32 %13, i64 %14)
  %16 = load %struct.ddb_link*, %struct.ddb_link** %4, align 8
  %17 = load i64, i64* @MCI_CONTROL, align 8
  %18 = add nsw i64 %17, 4
  %19 = call i32 @ddblwritel(%struct.ddb_link* %16, i32 0, i64 %18)
  %20 = call i32 @msleep(i32 300)
  %21 = load %struct.ddb_link*, %struct.ddb_link** %4, align 8
  %22 = load i64, i64* @MCI_CONTROL, align 8
  %23 = call i32 @ddblwritel(%struct.ddb_link* %21, i32 0, i64 %22)
  br label %24

24:                                               ; preds = %1, %39
  %25 = load %struct.ddb_link*, %struct.ddb_link** %4, align 8
  %26 = load i64, i64* @MCI_CONTROL, align 8
  %27 = call i64 @ddblreadl(%struct.ddb_link* %25, i64 %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @MCI_CONTROL_READY, align 8
  %30 = and i64 %28, %29
  %31 = load i64, i64* @MCI_CONTROL_READY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %41

34:                                               ; preds = %24
  %35 = load i64, i64* %6, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %6, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %41

39:                                               ; preds = %34
  %40 = call i32 @msleep(i32 50)
  br label %24

41:                                               ; preds = %38, %33
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* @MCI_CONTROL_READY, align 8
  %44 = and i64 %42, %43
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 -1, i32* %2, align 4
  br label %59

47:                                               ; preds = %41
  %48 = load %struct.ddb_link*, %struct.ddb_link** %4, align 8
  %49 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 9
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.ddb_link*, %struct.ddb_link** %4, align 8
  %55 = load i32, i32* @SX8_TSCONFIG_MODE_NORMAL, align 4
  %56 = load i64, i64* @SX8_TSCONFIG, align 8
  %57 = call i32 @ddblwritel(%struct.ddb_link* %54, i32 %55, i64 %56)
  br label %58

58:                                               ; preds = %53, %47
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %46
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @ddblwritel(%struct.ddb_link*, i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @ddblreadl(%struct.ddb_link*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
