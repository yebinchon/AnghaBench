; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_tempmon_setfan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_tempmon_setfan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_link = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TEMPMON_CONTROL = common dso_local global i32 0, align 4
@TEMPMON_CONTROL_OVERTEMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Over temperature condition\0A\00", align 1
@TEMPMON_SENSOR0 = common dso_local global i32 0, align 4
@TEMPMON_SENSOR1 = common dso_local global i32 0, align 4
@TEMPMON_FANCONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddb_link*)* @tempmon_setfan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tempmon_setfan(%struct.ddb_link* %0) #0 {
  %2 = alloca %struct.ddb_link*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ddb_link* %0, %struct.ddb_link** %2, align 8
  %6 = load %struct.ddb_link*, %struct.ddb_link** %2, align 8
  %7 = load i32, i32* @TEMPMON_CONTROL, align 4
  %8 = call i32 @ddblreadl(%struct.ddb_link* %6, i32 %7)
  %9 = load i32, i32* @TEMPMON_CONTROL_OVERTEMP, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load %struct.ddb_link*, %struct.ddb_link** %2, align 8
  %14 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_info(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ddb_link*, %struct.ddb_link** %2, align 8
  %20 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  br label %21

21:                                               ; preds = %12, %1
  %22 = load %struct.ddb_link*, %struct.ddb_link** %2, align 8
  %23 = load i32, i32* @TEMPMON_SENSOR0, align 4
  %24 = call i32 @ddblreadl(%struct.ddb_link* %22, i32 %23)
  %25 = ashr i32 %24, 8
  %26 = and i32 %25, 255
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 128
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %21
  %32 = load %struct.ddb_link*, %struct.ddb_link** %2, align 8
  %33 = load i32, i32* @TEMPMON_SENSOR1, align 4
  %34 = call i32 @ddblreadl(%struct.ddb_link* %32, i32 %33)
  %35 = ashr i32 %34, 8
  %36 = and i32 %35, 255
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, 128
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load %struct.ddb_link*, %struct.ddb_link** %2, align 8
  %49 = load i32, i32* @TEMPMON_FANCONTROL, align 4
  %50 = call i32 @ddblreadl(%struct.ddb_link* %48, i32 %49)
  %51 = ashr i32 %50, 8
  %52 = and i32 %51, 15
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp sgt i32 %53, 10
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i32 10, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %47
  %57 = load i32, i32* %3, align 4
  %58 = load %struct.ddb_link*, %struct.ddb_link** %2, align 8
  %59 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp sge i32 %57, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %83, %66
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 10
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.ddb_link*, %struct.ddb_link** %2, align 8
  %73 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp sge i32 %71, %79
  br label %81

81:                                               ; preds = %70, %67
  %82 = phi i1 [ false, %67 ], [ %80, %70 ]
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %67

86:                                               ; preds = %81
  br label %108

87:                                               ; preds = %56
  br label %88

88:                                               ; preds = %104, %87
  %89 = load i32, i32* %5, align 4
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %102

91:                                               ; preds = %88
  %92 = load i32, i32* %3, align 4
  %93 = load %struct.ddb_link*, %struct.ddb_link** %2, align 8
  %94 = getelementptr inbounds %struct.ddb_link, %struct.ddb_link* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sub nsw i32 %96, 2
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %92, %100
  br label %102

102:                                              ; preds = %91, %88
  %103 = phi i1 [ false, %88 ], [ %101, %91 ]
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = load i32, i32* %5, align 4
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %88

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %107, %86
  %109 = load %struct.ddb_link*, %struct.ddb_link** %2, align 8
  %110 = load i32, i32* %5, align 4
  %111 = shl i32 %110, 8
  %112 = load i32, i32* @TEMPMON_FANCONTROL, align 4
  %113 = call i32 @ddblwritel(%struct.ddb_link* %109, i32 %111, i32 %112)
  ret void
}

declare dso_local i32 @ddblreadl(%struct.ddb_link*, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @ddblwritel(%struct.ddb_link*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
