; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-spi.c_ir_spi_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-spi.c_ir_spi_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.ir_spi_data* }
%struct.ir_spi_data = type { i32, i32, %struct.TYPE_2__*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.spi_transfer = type { i32, i32, i32* }

@IR_SPI_MAX_BUFSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unable to deliver the signal\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*, i32)* @ir_spi_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_spi_tx(%struct.rc_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ir_spi_data*, align 8
  %12 = alloca %struct.spi_transfer, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %17 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %16, i32 0, i32 0
  %18 = load %struct.ir_spi_data*, %struct.ir_spi_data** %17, align 8
  store %struct.ir_spi_data* %18, %struct.ir_spi_data** %11, align 8
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %73, %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %76

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ir_spi_data*, %struct.ir_spi_data** %11, align 8
  %30 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = mul i32 %28, %31
  %33 = call i32 @DIV_ROUND_CLOSEST(i32 %32, i32 1000000)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %13, align 4
  %36 = add i32 %34, %35
  %37 = load i32, i32* @IR_SPI_MAX_BUFSIZE, align 4
  %38 = icmp uge i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %23
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %126

42:                                               ; preds = %23
  %43 = load i32, i32* %8, align 4
  %44 = srem i32 %43, 2
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.ir_spi_data*, %struct.ir_spi_data** %11, align 8
  %48 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  br label %54

50:                                               ; preds = %42
  %51 = load %struct.ir_spi_data*, %struct.ir_spi_data** %11, align 8
  %52 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  br label %54

54:                                               ; preds = %50, %46
  %55 = phi i32 [ %49, %46 ], [ %53, %50 ]
  store i32 %55, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %56

56:                                               ; preds = %69, %54
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %56
  %61 = load i32, i32* %15, align 4
  %62 = load %struct.ir_spi_data*, %struct.ir_spi_data** %11, align 8
  %63 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %10, align 4
  %67 = zext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 %61, i32* %68, align 4
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  br label %56

72:                                               ; preds = %56
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %19

76:                                               ; preds = %19
  %77 = call i32 @memset(%struct.spi_transfer* %12, i32 0, i32 16)
  %78 = load %struct.ir_spi_data*, %struct.ir_spi_data** %11, align 8
  %79 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = mul i32 %80, 16
  %82 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  store i32 %81, i32* %82, align 8
  %83 = load i32, i32* %10, align 4
  %84 = zext i32 %83 to i64
  %85 = mul i64 %84, 4
  %86 = trunc i64 %85 to i32
  %87 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 1
  store i32 %86, i32* %87, align 4
  %88 = load %struct.ir_spi_data*, %struct.ir_spi_data** %11, align 8
  %89 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %88, i32 0, i32 3
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  store i32* %90, i32** %91, align 8
  %92 = load %struct.ir_spi_data*, %struct.ir_spi_data** %11, align 8
  %93 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @regulator_enable(i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %76
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %4, align 4
  br label %126

100:                                              ; preds = %76
  %101 = load %struct.ir_spi_data*, %struct.ir_spi_data** %11, align 8
  %102 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %101, i32 0, i32 2
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = call i32 @spi_sync_transfer(%struct.TYPE_2__* %103, %struct.spi_transfer* %12, i32 1)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load %struct.ir_spi_data*, %struct.ir_spi_data** %11, align 8
  %109 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = call i32 @dev_err(i32* %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %113

113:                                              ; preds = %107, %100
  %114 = load %struct.ir_spi_data*, %struct.ir_spi_data** %11, align 8
  %115 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @regulator_disable(i32 %116)
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* %9, align 4
  br label %124

122:                                              ; preds = %113
  %123 = load i32, i32* %7, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %98, %39
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @spi_sync_transfer(%struct.TYPE_2__*, %struct.spi_transfer*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
