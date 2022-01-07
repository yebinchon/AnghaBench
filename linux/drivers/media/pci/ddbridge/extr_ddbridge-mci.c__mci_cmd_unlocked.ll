; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-mci.c__mci_cmd_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-mci.c__mci_cmd_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mci = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.ddb_link* }
%struct.ddb_link = type { i32 }

@MCI_CONTROL = common dso_local global i64 0, align 8
@MCI_CONTROL_RESET = common dso_local global i32 0, align 4
@MCI_CONTROL_START_COMMAND = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MCI_COMMAND = common dso_local global i64 0, align 8
@MCI_CONTROL_ENABLE_DONE_INTERRUPT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"MCI-%d: MCI timeout\0A\00", align 1
@MCI_RESULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mci*, i32*, i32, i32*, i32)* @_mci_cmd_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mci_cmd_unlocked(%struct.mci* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mci*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ddb_link*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.mci* %0, %struct.mci** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.mci*, %struct.mci** %7, align 8
  %17 = getelementptr inbounds %struct.mci, %struct.mci* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load %struct.ddb_link*, %struct.ddb_link** %19, align 8
  store %struct.ddb_link* %20, %struct.ddb_link** %12, align 8
  %21 = load %struct.ddb_link*, %struct.ddb_link** %12, align 8
  %22 = load i64, i64* @MCI_CONTROL, align 8
  %23 = call i32 @ddblreadl(%struct.ddb_link* %21, i64 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @MCI_CONTROL_RESET, align 4
  %26 = load i32, i32* @MCI_CONTROL_START_COMMAND, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @EIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %119

33:                                               ; preds = %5
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %61

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %36
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %57, %39
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load %struct.ddb_link*, %struct.ddb_link** %12, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* @MCI_COMMAND, align 8
  %52 = load i32, i32* %13, align 4
  %53 = mul nsw i32 %52, 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %51, %54
  %56 = call i32 @ddblwritel(%struct.ddb_link* %45, i32 %50, i64 %55)
  br label %57

57:                                               ; preds = %44
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %40

60:                                               ; preds = %40
  br label %61

61:                                               ; preds = %60, %36, %33
  %62 = load i32, i32* @MCI_CONTROL_START_COMMAND, align 4
  %63 = load i32, i32* @MCI_CONTROL_ENABLE_DONE_INTERRUPT, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %14, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %14, align 4
  %67 = load %struct.ddb_link*, %struct.ddb_link** %12, align 8
  %68 = load i32, i32* %14, align 4
  %69 = load i64, i64* @MCI_CONTROL, align 8
  %70 = call i32 @ddblwritel(%struct.ddb_link* %67, i32 %68, i64 %69)
  %71 = load %struct.mci*, %struct.mci** %7, align 8
  %72 = getelementptr inbounds %struct.mci, %struct.mci* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* @HZ, align 4
  %76 = call i64 @wait_for_completion_timeout(i32* %74, i32 %75)
  store i64 %76, i64* %15, align 8
  %77 = load i64, i64* %15, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %61
  %80 = load %struct.mci*, %struct.mci** %7, align 8
  %81 = getelementptr inbounds %struct.mci, %struct.mci* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.mci*, %struct.mci** %7, align 8
  %86 = getelementptr inbounds %struct.mci, %struct.mci* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dev_warn(i32 %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %119

91:                                               ; preds = %61
  %92 = load i32*, i32** %10, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %118

94:                                               ; preds = %91
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %94
  store i32 0, i32* %13, align 4
  br label %98

98:                                               ; preds = %114, %97
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %117

102:                                              ; preds = %98
  %103 = load %struct.ddb_link*, %struct.ddb_link** %12, align 8
  %104 = load i64, i64* @MCI_RESULT, align 8
  %105 = load i32, i32* %13, align 4
  %106 = mul nsw i32 %105, 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %104, %107
  %109 = call i32 @ddblreadl(%struct.ddb_link* %103, i64 %108)
  %110 = load i32*, i32** %10, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %109, i32* %113, align 4
  br label %114

114:                                              ; preds = %102
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %98

117:                                              ; preds = %98
  br label %118

118:                                              ; preds = %117, %94, %91
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %118, %79, %30
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local i32 @ddblreadl(%struct.ddb_link*, i64) #1

declare dso_local i32 @ddblwritel(%struct.ddb_link*, i32, i64) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
