; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_test_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_test_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.rocker_wait = type { i32 }

@TEST_DMA_CTRL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"no interrupt received within a timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"unexpected memory content %02x at byte %x\0A, %02x expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker*, %struct.rocker_wait*, i32, i32, i8*, i8*, i64)* @rocker_dma_test_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_dma_test_one(%struct.rocker* %0, %struct.rocker_wait* %1, i32 %2, i32 %3, i8* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.rocker*, align 8
  %10 = alloca %struct.rocker_wait*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.pci_dev*, align 8
  %17 = alloca i32, align 4
  store %struct.rocker* %0, %struct.rocker** %9, align 8
  store %struct.rocker_wait* %1, %struct.rocker_wait** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %18 = load %struct.rocker*, %struct.rocker** %9, align 8
  %19 = getelementptr inbounds %struct.rocker, %struct.rocker* %18, i32 0, i32 0
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %16, align 8
  %21 = load %struct.rocker_wait*, %struct.rocker_wait** %10, align 8
  %22 = call i32 @rocker_wait_reset(%struct.rocker_wait* %21)
  %23 = load %struct.rocker*, %struct.rocker** %9, align 8
  %24 = load i32, i32* @TEST_DMA_CTRL, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @rocker_write32(%struct.rocker* %23, i32 %24, i32 %25)
  %27 = load %struct.rocker_wait*, %struct.rocker_wait** %10, align 8
  %28 = load i32, i32* @HZ, align 4
  %29 = sdiv i32 %28, 10
  %30 = call i32 @rocker_wait_event_timeout(%struct.rocker_wait* %27, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %7
  %33 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = call i32 (i32*, i8*, ...) @dev_err(i32* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %82

38:                                               ; preds = %7
  store i32 0, i32* %17, align 4
  br label %39

39:                                               ; preds = %78, %38
  %40 = load i32, i32* %17, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %15, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %81

44:                                               ; preds = %39
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* %17, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8*, i8** %14, align 8
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %50, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %44
  %59 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  %60 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %59, i32 0, i32 0
  %61 = load i8*, i8** %13, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i32, i32* %17, align 4
  %68 = load i8*, i8** %14, align 8
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* %60, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67, i32 %73)
  %75 = load i32, i32* @EIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %8, align 4
  br label %82

77:                                               ; preds = %44
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %17, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %17, align 4
  br label %39

81:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %81, %58, %32
  %83 = load i32, i32* %8, align 4
  ret i32 %83
}

declare dso_local i32 @rocker_wait_reset(%struct.rocker_wait*) #1

declare dso_local i32 @rocker_write32(%struct.rocker*, i32, i32) #1

declare dso_local i32 @rocker_wait_event_timeout(%struct.rocker_wait*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
