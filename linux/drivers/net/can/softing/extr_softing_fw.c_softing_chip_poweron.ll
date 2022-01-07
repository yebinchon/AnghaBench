; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_fw.c_softing_chip_poweron.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_fw.c_softing_chip_poweron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softing = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8**, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"sync-a\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"sync-b\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"get_serial_number\00", align 1
@DPRAM_FCT_PARAM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"get_version\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @softing_chip_poweron(%struct.softing* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.softing*, align 8
  %4 = alloca i32, align 4
  store %struct.softing* %0, %struct.softing** %3, align 8
  %5 = load %struct.softing*, %struct.softing** %3, align 8
  %6 = call i32 @_softing_fct_cmd(%struct.softing* %5, i32 99, i32 85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %98

10:                                               ; preds = %1
  %11 = load %struct.softing*, %struct.softing** %3, align 8
  %12 = call i32 @_softing_fct_cmd(%struct.softing* %11, i32 99, i32 170, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %98

16:                                               ; preds = %10
  %17 = load %struct.softing*, %struct.softing** %3, align 8
  %18 = call i32 @softing_reset_chip(%struct.softing* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %98

22:                                               ; preds = %16
  %23 = load %struct.softing*, %struct.softing** %3, align 8
  %24 = call i32 @softing_fct_cmd(%struct.softing* %23, i32 43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %98

28:                                               ; preds = %22
  %29 = load %struct.softing*, %struct.softing** %3, align 8
  %30 = getelementptr inbounds %struct.softing, %struct.softing* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @DPRAM_FCT_PARAM, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = call i32 @ioread32(i32* %33)
  %35 = load %struct.softing*, %struct.softing** %3, align 8
  %36 = getelementptr inbounds %struct.softing, %struct.softing* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  store i32 %34, i32* %37, align 8
  %38 = load %struct.softing*, %struct.softing** %3, align 8
  %39 = call i32 @softing_fct_cmd(%struct.softing* %38, i32 12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  br label %98

43:                                               ; preds = %28
  %44 = load %struct.softing*, %struct.softing** %3, align 8
  %45 = getelementptr inbounds %struct.softing, %struct.softing* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @DPRAM_FCT_PARAM, align 8
  %48 = add i64 %47, 2
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i8* @ioread16(i32* %49)
  %51 = load %struct.softing*, %struct.softing** %3, align 8
  %52 = getelementptr inbounds %struct.softing, %struct.softing* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  store i8* %50, i8** %53, align 8
  %54 = load %struct.softing*, %struct.softing** %3, align 8
  %55 = getelementptr inbounds %struct.softing, %struct.softing* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @DPRAM_FCT_PARAM, align 8
  %58 = add i64 %57, 4
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = call i8* @ioread16(i32* %59)
  %61 = load %struct.softing*, %struct.softing** %3, align 8
  %62 = getelementptr inbounds %struct.softing, %struct.softing* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  store i8* %60, i8** %63, align 8
  %64 = load %struct.softing*, %struct.softing** %3, align 8
  %65 = getelementptr inbounds %struct.softing, %struct.softing* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @DPRAM_FCT_PARAM, align 8
  %68 = add i64 %67, 6
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i8* @ioread16(i32* %69)
  %71 = load %struct.softing*, %struct.softing** %3, align 8
  %72 = getelementptr inbounds %struct.softing, %struct.softing* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i8* %70, i8** %73, align 8
  %74 = load %struct.softing*, %struct.softing** %3, align 8
  %75 = getelementptr inbounds %struct.softing, %struct.softing* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @DPRAM_FCT_PARAM, align 8
  %78 = add i64 %77, 8
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = call i8* @ioread16(i32* %79)
  %81 = load %struct.softing*, %struct.softing** %3, align 8
  %82 = getelementptr inbounds %struct.softing, %struct.softing* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i8**, i8*** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 0
  store i8* %80, i8** %85, align 8
  %86 = load %struct.softing*, %struct.softing** %3, align 8
  %87 = getelementptr inbounds %struct.softing, %struct.softing* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @DPRAM_FCT_PARAM, align 8
  %90 = add i64 %89, 10
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = call i8* @ioread16(i32* %91)
  %93 = load %struct.softing*, %struct.softing** %3, align 8
  %94 = getelementptr inbounds %struct.softing, %struct.softing* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 1
  store i8* %92, i8** %97, align 8
  store i32 0, i32* %2, align 4
  br label %100

98:                                               ; preds = %42, %27, %21, %15, %9
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %43
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @_softing_fct_cmd(%struct.softing*, i32, i32, i8*) #1

declare dso_local i32 @softing_reset_chip(%struct.softing*) #1

declare dso_local i32 @softing_fct_cmd(%struct.softing*, i32, i8*) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i8* @ioread16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
