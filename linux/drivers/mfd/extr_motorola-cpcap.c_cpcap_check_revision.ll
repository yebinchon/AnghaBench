; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_motorola-cpcap.c_cpcap_check_revision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_motorola-cpcap.c_cpcap_check_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_ddata = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"CPCAP vendor: %s rev: %i.%i (%x)\0A\00", align 1
@CPCAP_VENDOR_ST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"ST\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"TI\00", align 1
@CPCAP_REVISION_2_1 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"Please add old CPCAP revision support as needed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpcap_ddata*)* @cpcap_check_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpcap_check_revision(%struct.cpcap_ddata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpcap_ddata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.cpcap_ddata* %0, %struct.cpcap_ddata** %3, align 8
  %7 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %3, align 8
  %8 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %3, align 8
  %12 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @cpcap_get_vendor(i32* %10, i32 %13, i64* %4)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %60

19:                                               ; preds = %1
  %20 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %3, align 8
  %21 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %3, align 8
  %25 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @cpcap_get_revision(i32* %23, i32 %26, i64* %5)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %60

32:                                               ; preds = %19
  %33 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %3, align 8
  %34 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @CPCAP_VENDOR_ST, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @CPCAP_REVISION_MAJOR(i64 %42)
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @CPCAP_REVISION_MINOR(i64 %44)
  %46 = load i64, i64* %5, align 8
  %47 = call i32 (i32*, i8*, ...) @dev_info(i32* %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %43, i32 %45, i64 %46)
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @CPCAP_REVISION_2_1, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %32
  %52 = load %struct.cpcap_ddata*, %struct.cpcap_ddata** %3, align 8
  %53 = getelementptr inbounds %struct.cpcap_ddata, %struct.cpcap_ddata* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 (i32*, i8*, ...) @dev_info(i32* %55, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %60

59:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %51, %30, %17
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @cpcap_get_vendor(i32*, i32, i64*) #1

declare dso_local i32 @cpcap_get_revision(i32*, i32, i64*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @CPCAP_REVISION_MAJOR(i64) #1

declare dso_local i32 @CPCAP_REVISION_MINOR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
