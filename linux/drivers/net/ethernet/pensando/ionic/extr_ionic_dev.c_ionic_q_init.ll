; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_dev.c_ionic_q_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_dev.c_ionic_q_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { i32 }
%struct.ionic_dev = type { i32 }
%struct.ionic_queue = type { i32, i32, i64, i64, i32, %struct.ionic_desc_info*, i32, %struct.ionic_desc_info*, %struct.ionic_desc_info*, %struct.ionic_dev*, %struct.ionic_lif* }
%struct.ionic_desc_info = type { i32, i32, %struct.ionic_desc_info* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"L%d-%s%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ionic_q_init(%struct.ionic_lif* %0, %struct.ionic_dev* %1, %struct.ionic_queue* %2, i32 %3, i8* %4, i32 %5, i64 %6, i64 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.ionic_lif*, align 8
  %12 = alloca %struct.ionic_dev*, align 8
  %13 = alloca %struct.ionic_queue*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.ionic_desc_info*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ionic_lif* %0, %struct.ionic_lif** %11, align 8
  store %struct.ionic_dev* %1, %struct.ionic_dev** %12, align 8
  store %struct.ionic_queue* %2, %struct.ionic_queue** %13, align 8
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i64 %6, i64* %17, align 8
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  %23 = load i64, i64* %17, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %9
  %26 = load i32, i32* %16, align 4
  %27 = call i32 @is_power_of_2(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25, %9
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  br label %122

32:                                               ; preds = %25
  %33 = load i32, i32* %16, align 4
  %34 = call i32 @ilog2(i32 %33)
  store i32 %34, i32* %21, align 4
  %35 = load i32, i32* %21, align 4
  %36 = icmp ult i32 %35, 2
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %21, align 4
  %39 = icmp ugt i32 %38, 16
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %32
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %122

43:                                               ; preds = %37
  %44 = load %struct.ionic_lif*, %struct.ionic_lif** %11, align 8
  %45 = load %struct.ionic_queue*, %struct.ionic_queue** %13, align 8
  %46 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %45, i32 0, i32 10
  store %struct.ionic_lif* %44, %struct.ionic_lif** %46, align 8
  %47 = load %struct.ionic_dev*, %struct.ionic_dev** %12, align 8
  %48 = load %struct.ionic_queue*, %struct.ionic_queue** %13, align 8
  %49 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %48, i32 0, i32 9
  store %struct.ionic_dev* %47, %struct.ionic_dev** %49, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.ionic_queue*, %struct.ionic_queue** %13, align 8
  %52 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %16, align 4
  %54 = load %struct.ionic_queue*, %struct.ionic_queue** %13, align 8
  %55 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i64, i64* %17, align 8
  %57 = load %struct.ionic_queue*, %struct.ionic_queue** %13, align 8
  %58 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load i64, i64* %18, align 8
  %60 = load %struct.ionic_queue*, %struct.ionic_queue** %13, align 8
  %61 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %60, i32 0, i32 3
  store i64 %59, i64* %61, align 8
  %62 = load %struct.ionic_queue*, %struct.ionic_queue** %13, align 8
  %63 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %62, i32 0, i32 5
  %64 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %63, align 8
  %65 = load %struct.ionic_queue*, %struct.ionic_queue** %13, align 8
  %66 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %65, i32 0, i32 7
  store %struct.ionic_desc_info* %64, %struct.ionic_desc_info** %66, align 8
  %67 = load %struct.ionic_queue*, %struct.ionic_queue** %13, align 8
  %68 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %67, i32 0, i32 7
  %69 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %68, align 8
  %70 = load %struct.ionic_queue*, %struct.ionic_queue** %13, align 8
  %71 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %70, i32 0, i32 8
  store %struct.ionic_desc_info* %69, %struct.ionic_desc_info** %71, align 8
  %72 = load i32, i32* %19, align 4
  %73 = load %struct.ionic_queue*, %struct.ionic_queue** %13, align 8
  %74 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ionic_queue*, %struct.ionic_queue** %13, align 8
  %76 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ionic_lif*, %struct.ionic_lif** %11, align 8
  %79 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %15, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @snprintf(i32 %77, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %80, i8* %81, i32 %82)
  %84 = load %struct.ionic_queue*, %struct.ionic_queue** %13, align 8
  %85 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %84, i32 0, i32 5
  %86 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %85, align 8
  store %struct.ionic_desc_info* %86, %struct.ionic_desc_info** %20, align 8
  store i32 0, i32* %22, align 4
  br label %87

87:                                               ; preds = %118, %43
  %88 = load i32, i32* %22, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %121

91:                                               ; preds = %87
  %92 = load i32, i32* %22, align 4
  %93 = add i32 %92, 1
  %94 = load i32, i32* %16, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.ionic_queue*, %struct.ionic_queue** %13, align 8
  %98 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %97, i32 0, i32 5
  %99 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %98, align 8
  %100 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %20, align 8
  %101 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %100, i32 0, i32 2
  store %struct.ionic_desc_info* %99, %struct.ionic_desc_info** %101, align 8
  br label %107

102:                                              ; preds = %91
  %103 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %20, align 8
  %104 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %103, i64 1
  %105 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %20, align 8
  %106 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %105, i32 0, i32 2
  store %struct.ionic_desc_info* %104, %struct.ionic_desc_info** %106, align 8
  br label %107

107:                                              ; preds = %102, %96
  %108 = load i32, i32* %22, align 4
  %109 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %20, align 8
  %110 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %22, align 4
  %113 = sub i32 %111, %112
  %114 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %20, align 8
  %115 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load %struct.ionic_desc_info*, %struct.ionic_desc_info** %20, align 8
  %117 = getelementptr inbounds %struct.ionic_desc_info, %struct.ionic_desc_info* %116, i32 1
  store %struct.ionic_desc_info* %117, %struct.ionic_desc_info** %20, align 8
  br label %118

118:                                              ; preds = %107
  %119 = load i32, i32* %22, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %22, align 4
  br label %87

121:                                              ; preds = %87
  store i32 0, i32* %10, align 4
  br label %122

122:                                              ; preds = %121, %40, %29
  %123 = load i32, i32* %10, align 4
  ret i32 %123
}

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
