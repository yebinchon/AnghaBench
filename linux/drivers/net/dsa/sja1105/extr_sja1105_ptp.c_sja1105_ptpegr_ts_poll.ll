; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ptp.c_sja1105_ptpegr_ts_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_ptp.c_sja1105_ptpegr_ts_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.sja1105_regs* }
%struct.sja1105_regs = type { i32* }

@SPI_READ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sja1105_ptpegr_ts_poll(%struct.sja1105_private* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sja1105_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.sja1105_regs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [8 x i32], align 16
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.sja1105_private* %0, %struct.sja1105_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %15 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %16 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load %struct.sja1105_regs*, %struct.sja1105_regs** %18, align 8
  store %struct.sja1105_regs* %19, %struct.sja1105_regs** %8, align 8
  store i32 10, i32* %11, align 4
  br label %20

20:                                               ; preds = %54, %3
  %21 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %22 = load i32, i32* @SPI_READ, align 4
  %23 = load %struct.sja1105_regs*, %struct.sja1105_regs** %8, align 8
  %24 = getelementptr inbounds %struct.sja1105_regs, %struct.sja1105_regs* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %31 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %32 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sja1105_spi_send_packed_buf(%struct.sja1105_private* %21, i32 %22, i32 %29, i32* %30, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %20
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %4, align 4
  br label %99

41:                                               ; preds = %20
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %43 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %44 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @sja1105_unpack(i32* %42, i64* %13, i32 0, i32 0, i32 %47)
  %49 = load i64, i64* %13, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %58

52:                                               ; preds = %41
  %53 = call i32 @usleep_range(i32 10, i32 50)
  br label %54

54:                                               ; preds = %52
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %20, label %58

58:                                               ; preds = %54, %51
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @ETIMEDOUT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %99

64:                                               ; preds = %58
  %65 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %66 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 4
  %71 = mul nsw i32 %70, 8
  store i32 %71, i32* %10, align 4
  %72 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %73 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sub nsw i32 32, %76
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %82 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %80, %85
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  %88 = load i64*, i64** %7, align 8
  store i64 0, i64* %88, align 8
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %90 = load i64*, i64** %7, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.sja1105_private*, %struct.sja1105_private** %5, align 8
  %94 = getelementptr inbounds %struct.sja1105_private, %struct.sja1105_private* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @sja1105_unpack(i32* %89, i64* %90, i32 %91, i32 %92, i32 %97)
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %64, %61, %39
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @sja1105_spi_send_packed_buf(%struct.sja1105_private*, i32, i32, i32*, i32) #1

declare dso_local i32 @sja1105_unpack(i32*, i64*, i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
