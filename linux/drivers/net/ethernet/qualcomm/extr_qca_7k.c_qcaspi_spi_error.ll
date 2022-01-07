; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_7k.c_qcaspi_spi_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_7k.c_qcaspi_spi_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcaspi = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@QCASPI_SYNC_READY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"spi error\0A\00", align 1
@QCASPI_SYNC_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qcaspi_spi_error(%struct.qcaspi* %0) #0 {
  %2 = alloca %struct.qcaspi*, align 8
  store %struct.qcaspi* %0, %struct.qcaspi** %2, align 8
  %3 = load %struct.qcaspi*, %struct.qcaspi** %2, align 8
  %4 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @QCASPI_SYNC_READY, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %22

9:                                                ; preds = %1
  %10 = load %struct.qcaspi*, %struct.qcaspi** %2, align 8
  %11 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @netdev_err(i32 %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* @QCASPI_SYNC_UNKNOWN, align 8
  %15 = load %struct.qcaspi*, %struct.qcaspi** %2, align 8
  %16 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.qcaspi*, %struct.qcaspi** %2, align 8
  %18 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
