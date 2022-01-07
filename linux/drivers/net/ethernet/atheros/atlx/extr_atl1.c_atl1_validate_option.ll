; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_validate_option.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_validate_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_option = type { i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, %struct.atl1_opt_list* }
%struct.atl1_opt_list = type { i32, i8* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pci_dev = type { i32 }

@OPTION_UNSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s set to %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"invalid %s specified (%i) %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.atl1_option*, %struct.pci_dev*)* @atl1_validate_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1_validate_option(i32* %0, %struct.atl1_option* %1, %struct.pci_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.atl1_option*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.atl1_opt_list*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.atl1_option* %1, %struct.atl1_option** %6, align 8
  store %struct.pci_dev* %2, %struct.pci_dev** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @OPTION_UNSET, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.atl1_option*, %struct.atl1_option** %6, align 8
  %16 = getelementptr inbounds %struct.atl1_option, %struct.atl1_option* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  store i32 0, i32* %4, align 4
  br label %139

19:                                               ; preds = %3
  %20 = load %struct.atl1_option*, %struct.atl1_option** %6, align 8
  %21 = getelementptr inbounds %struct.atl1_option, %struct.atl1_option* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %120 [
    i32 130, label %23
    i32 128, label %45
    i32 129, label %75
  ]

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %44 [
    i32 131, label %26
    i32 132, label %35
  ]

26:                                               ; preds = %23
  %27 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load %struct.atl1_option*, %struct.atl1_option** %6, align 8
  %30 = getelementptr inbounds %struct.atl1_option, %struct.atl1_option* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %33)
  store i32 0, i32* %4, align 4
  br label %139

35:                                               ; preds = %23
  %36 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = load %struct.atl1_option*, %struct.atl1_option** %6, align 8
  %39 = getelementptr inbounds %struct.atl1_option, %struct.atl1_option* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  store i32 0, i32* %4, align 4
  br label %139

44:                                               ; preds = %23
  br label %121

45:                                               ; preds = %19
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.atl1_option*, %struct.atl1_option** %6, align 8
  %49 = getelementptr inbounds %struct.atl1_option, %struct.atl1_option* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp sge i32 %47, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %45
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.atl1_option*, %struct.atl1_option** %6, align 8
  %58 = getelementptr inbounds %struct.atl1_option, %struct.atl1_option* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sle i32 %56, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %54
  %64 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = load %struct.atl1_option*, %struct.atl1_option** %6, align 8
  %67 = getelementptr inbounds %struct.atl1_option, %struct.atl1_option* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %70, i32 %72)
  store i32 0, i32* %4, align 4
  br label %139

74:                                               ; preds = %54, %45
  br label %121

75:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %116, %75
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.atl1_option*, %struct.atl1_option** %6, align 8
  %79 = getelementptr inbounds %struct.atl1_option, %struct.atl1_option* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %77, %82
  br i1 %83, label %84, label %119

84:                                               ; preds = %76
  %85 = load %struct.atl1_option*, %struct.atl1_option** %6, align 8
  %86 = getelementptr inbounds %struct.atl1_option, %struct.atl1_option* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load %struct.atl1_opt_list*, %struct.atl1_opt_list** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.atl1_opt_list, %struct.atl1_opt_list* %89, i64 %91
  store %struct.atl1_opt_list* %92, %struct.atl1_opt_list** %9, align 8
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.atl1_opt_list*, %struct.atl1_opt_list** %9, align 8
  %96 = getelementptr inbounds %struct.atl1_opt_list, %struct.atl1_opt_list* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %94, %97
  br i1 %98, label %99, label %115

99:                                               ; preds = %84
  %100 = load %struct.atl1_opt_list*, %struct.atl1_opt_list** %9, align 8
  %101 = getelementptr inbounds %struct.atl1_opt_list, %struct.atl1_opt_list* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %99
  %108 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 0
  %110 = load %struct.atl1_opt_list*, %struct.atl1_opt_list** %9, align 8
  %111 = getelementptr inbounds %struct.atl1_opt_list, %struct.atl1_opt_list* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %112)
  br label %114

114:                                              ; preds = %107, %99
  store i32 0, i32* %4, align 4
  br label %139

115:                                              ; preds = %84
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %76

119:                                              ; preds = %76
  br label %121

120:                                              ; preds = %19
  br label %121

121:                                              ; preds = %120, %119, %74, %44
  %122 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %123 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %122, i32 0, i32 0
  %124 = load %struct.atl1_option*, %struct.atl1_option** %6, align 8
  %125 = getelementptr inbounds %struct.atl1_option, %struct.atl1_option* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = load i32*, i32** %5, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.atl1_option*, %struct.atl1_option** %6, align 8
  %132 = getelementptr inbounds %struct.atl1_option, %struct.atl1_option* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %123, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %128, i32 %130, i32 %133)
  %135 = load %struct.atl1_option*, %struct.atl1_option** %6, align 8
  %136 = getelementptr inbounds %struct.atl1_option, %struct.atl1_option* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32*, i32** %5, align 8
  store i32 %137, i32* %138, align 4
  store i32 -1, i32* %4, align 4
  br label %139

139:                                              ; preds = %121, %114, %63, %35, %26, %14
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @dev_info(i32*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
