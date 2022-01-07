; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_attach_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_attach_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.atmel_nand_controller = type { %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.nand_chip*)* }
%struct.atmel_nand = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.mtd_info = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"atmel_nand\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%s:nand.%d\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to allocate mtd->name\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @atmel_nand_attach_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_nand_attach_chip(%struct.nand_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca %struct.atmel_nand_controller*, align 8
  %5 = alloca %struct.atmel_nand*, align 8
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.atmel_nand_controller* @to_nand_controller(i32 %10)
  store %struct.atmel_nand_controller* %11, %struct.atmel_nand_controller** %4, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %13 = call %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip* %12)
  store %struct.atmel_nand* %13, %struct.atmel_nand** %5, align 8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %15 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %14)
  store %struct.mtd_info* %15, %struct.mtd_info** %6, align 8
  %16 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %4, align 8
  %17 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32 (%struct.nand_chip*)*, i32 (%struct.nand_chip*)** %21, align 8
  %23 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %24 = call i32 %22(%struct.nand_chip* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %83

29:                                               ; preds = %1
  %30 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %4, align 8
  %31 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %4, align 8
  %38 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36, %29
  %44 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %45 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %44, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %45, align 8
  br label %82

46:                                               ; preds = %36
  %47 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %48 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %81, label %51

51:                                               ; preds = %46
  %52 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %4, align 8
  %53 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %4, align 8
  %57 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = call i32 @dev_name(%struct.TYPE_10__* %58)
  %60 = load %struct.atmel_nand*, %struct.atmel_nand** %5, align 8
  %61 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %60, i32 0, i32 0
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @devm_kasprintf(%struct.TYPE_10__* %54, i32 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %65)
  %67 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %68 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %70 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %51
  %74 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %4, align 8
  %75 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = call i32 @dev_err(%struct.TYPE_10__* %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %83

80:                                               ; preds = %51
  br label %81

81:                                               ; preds = %80, %46
  br label %82

82:                                               ; preds = %81, %43
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %73, %27
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.atmel_nand_controller* @to_nand_controller(i32) #1

declare dso_local %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i8* @devm_kasprintf(%struct.TYPE_10__*, i32, i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
