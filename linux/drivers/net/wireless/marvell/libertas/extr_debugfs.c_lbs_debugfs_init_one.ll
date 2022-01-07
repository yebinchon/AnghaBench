; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_debugfs.c_lbs_debugfs_init_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_debugfs.c_lbs_debugfs_init_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_debugfs_files = type { i32, i32, i32 }
%struct.lbs_private = type { i8*, i8**, i8*, i8*, i8**, i8** }
%struct.net_device = type { i8* }

@lbs_dir = common dso_local global i8* null, align 8
@debugfs_files = common dso_local global %struct.lbs_debugfs_files* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"subscribed_events\00", align 1
@debugfs_events_files = common dso_local global %struct.lbs_debugfs_files* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"registers\00", align 1
@debugfs_regs_files = common dso_local global %struct.lbs_debugfs_files* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbs_debugfs_init_one(%struct.lbs_private* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lbs_debugfs_files*, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load i8*, i8** @lbs_dir, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %129

10:                                               ; preds = %2
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** @lbs_dir, align 8
  %15 = call i8* @debugfs_create_dir(i8* %13, i8* %14)
  %16 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %17 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %47, %10
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** @debugfs_files, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.lbs_debugfs_files* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %50

23:                                               ; preds = %18
  %24 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** @debugfs_files, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %24, i64 %26
  store %struct.lbs_debugfs_files* %27, %struct.lbs_debugfs_files** %6, align 8
  %28 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** %6, align 8
  %29 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** %6, align 8
  %32 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %35 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %38 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** %6, align 8
  %39 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %38, i32 0, i32 0
  %40 = call i8* @debugfs_create_file(i32 %30, i32 %33, i8* %36, %struct.lbs_private* %37, i32* %39)
  %41 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %42 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %41, i32 0, i32 5
  %43 = load i8**, i8*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  store i8* %40, i8** %46, align 8
  br label %47

47:                                               ; preds = %23
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %18

50:                                               ; preds = %18
  %51 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %52 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %53)
  %55 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %56 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %86, %50
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** @debugfs_events_files, align 8
  %60 = call i32 @ARRAY_SIZE(%struct.lbs_debugfs_files* %59)
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %89

62:                                               ; preds = %57
  %63 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** @debugfs_events_files, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %63, i64 %65
  store %struct.lbs_debugfs_files* %66, %struct.lbs_debugfs_files** %6, align 8
  %67 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** %6, align 8
  %68 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** %6, align 8
  %71 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %74 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %77 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** %6, align 8
  %78 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %77, i32 0, i32 0
  %79 = call i8* @debugfs_create_file(i32 %69, i32 %72, i8* %75, %struct.lbs_private* %76, i32* %78)
  %80 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %81 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %80, i32 0, i32 4
  %82 = load i8**, i8*** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  store i8* %79, i8** %85, align 8
  br label %86

86:                                               ; preds = %62
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %57

89:                                               ; preds = %57
  %90 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %91 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @debugfs_create_dir(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %92)
  %94 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %95 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %125, %89
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** @debugfs_regs_files, align 8
  %99 = call i32 @ARRAY_SIZE(%struct.lbs_debugfs_files* %98)
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %128

101:                                              ; preds = %96
  %102 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** @debugfs_regs_files, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %102, i64 %104
  store %struct.lbs_debugfs_files* %105, %struct.lbs_debugfs_files** %6, align 8
  %106 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** %6, align 8
  %107 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** %6, align 8
  %110 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %113 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %116 = load %struct.lbs_debugfs_files*, %struct.lbs_debugfs_files** %6, align 8
  %117 = getelementptr inbounds %struct.lbs_debugfs_files, %struct.lbs_debugfs_files* %116, i32 0, i32 0
  %118 = call i8* @debugfs_create_file(i32 %108, i32 %111, i8* %114, %struct.lbs_private* %115, i32* %117)
  %119 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %120 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %119, i32 0, i32 1
  %121 = load i8**, i8*** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %121, i64 %123
  store i8* %118, i8** %124, align 8
  br label %125

125:                                              ; preds = %101
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %96

128:                                              ; preds = %96
  br label %129

129:                                              ; preds = %128, %9
  ret void
}

declare dso_local i8* @debugfs_create_dir(i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.lbs_debugfs_files*) #1

declare dso_local i8* @debugfs_create_file(i32, i32, i8*, %struct.lbs_private*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
