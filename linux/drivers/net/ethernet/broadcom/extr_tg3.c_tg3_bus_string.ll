; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_bus_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_bus_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@PCI_EXPRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"PCI Express\00", align 1
@PCIX_MODE = common dso_local global i32 0, align 4
@TG3PCI_CLOCK_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"PCIX:\00", align 1
@GRC_MISC_CFG = common dso_local global i32 0, align 4
@GRC_MISC_CFG_BOARD_ID_MASK = common dso_local global i32 0, align 4
@GRC_MISC_CFG_BOARD_ID_5704CIOBE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"133MHz\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"33MHz\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"50MHz\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"66MHz\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"100MHz\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"PCI:\00", align 1
@PCI_HIGH_SPEED = common dso_local global i32 0, align 4
@PCI_32BIT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c":32-bit\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c":64-bit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tg3*, i8*)* @tg3_bus_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tg3_bus_string(%struct.tg3* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.tg3*, %struct.tg3** %4, align 8
  %8 = load i32, i32* @PCI_EXPRESS, align 4
  %9 = call i64 @tg3_flag(%struct.tg3* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strcpy(i8* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %3, align 8
  br label %95

15:                                               ; preds = %2
  %16 = load %struct.tg3*, %struct.tg3** %4, align 8
  %17 = load i32, i32* @PCIX_MODE, align 4
  %18 = call i64 @tg3_flag(%struct.tg3* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %67

20:                                               ; preds = %15
  %21 = load i32, i32* @TG3PCI_CLOCK_CTRL, align 4
  %22 = call i32 @tr32(i32 %21)
  %23 = and i32 %22, 31
  store i32 %23, i32* %6, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strcpy(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 7
  br i1 %27, label %35, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @GRC_MISC_CFG, align 4
  %30 = call i32 @tr32(i32 %29)
  %31 = load i32, i32* @GRC_MISC_CFG_BOARD_ID_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @GRC_MISC_CFG_BOARD_ID_5704CIOBE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28, %20
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @strcat(i8* %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %66

38:                                               ; preds = %28
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @strcat(i8* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %65

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strcat(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %64

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @strcat(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %63

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 6
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @strcat(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %53
  br label %64

64:                                               ; preds = %63, %47
  br label %65

65:                                               ; preds = %64, %41
  br label %66

66:                                               ; preds = %65, %35
  br label %81

67:                                               ; preds = %15
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @strcpy(i8* %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %70 = load %struct.tg3*, %struct.tg3** %4, align 8
  %71 = load i32, i32* @PCI_HIGH_SPEED, align 4
  %72 = call i64 @tg3_flag(%struct.tg3* %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @strcat(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %80

77:                                               ; preds = %67
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 @strcat(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %74
  br label %81

81:                                               ; preds = %80, %66
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.tg3*, %struct.tg3** %4, align 8
  %84 = load i32, i32* @PCI_32BIT, align 4
  %85 = call i64 @tg3_flag(%struct.tg3* %83, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @strcat(i8* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %93

90:                                               ; preds = %82
  %91 = load i8*, i8** %5, align 8
  %92 = call i32 @strcat(i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i8*, i8** %5, align 8
  store i8* %94, i8** %3, align 8
  br label %95

95:                                               ; preds = %93, %11
  %96 = load i8*, i8** %3, align 8
  ret i8* %96
}

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
