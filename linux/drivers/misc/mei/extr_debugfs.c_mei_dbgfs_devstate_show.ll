; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_debugfs.c_mei_dbgfs_devstate_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_debugfs.c_mei_dbgfs_devstate_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.mei_device* }
%struct.mei_device = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"dev: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"hbm: %s\0A\00", align 1
@MEI_HBM_ENUM_CLIENTS = common dso_local global i64 0, align 8
@MEI_HBM_STARTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"hbm features:\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\09PG: %01d\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"\09DC: %01d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"\09IE: %01d\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"\09DOT: %01d\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"\09EV: %01d\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"\09FA: %01d\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"\09OS: %01d\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"\09DR: %01d\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"pg:  %s, %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"ENABLED\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"DISABLED\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mei_dbgfs_devstate_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_dbgfs_devstate_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mei_device*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  store %struct.mei_device* %8, %struct.mei_device** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %11 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @mei_dev_state_str(i32 %12)
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %19 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @mei_hbm_state_str(i64 %20)
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %26 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MEI_HBM_ENUM_CLIENTS, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %95

30:                                               ; preds = %2
  %31 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %32 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MEI_HBM_STARTED, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %95

36:                                               ; preds = %30
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = call i32 @seq_puts(%struct.seq_file* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %41 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  %46 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %47 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %48 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %51)
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %55 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %58)
  %60 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %61 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %62 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %65)
  %67 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %68 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %69 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %72)
  %74 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %75 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %76 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* %79)
  %81 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %82 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %83 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* %86)
  %88 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %89 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %90 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %36, %30, %2
  %96 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %97 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %98 = call i64 @mei_pg_is_enabled(%struct.mei_device* %97)
  %99 = icmp ne i64 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)
  %102 = load %struct.mei_device*, %struct.mei_device** %5, align 8
  %103 = call i32 @mei_pg_state(%struct.mei_device* %102)
  %104 = call i32 @mei_pg_state_str(i32 %103)
  %105 = call i32 (%struct.seq_file*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i8* %101, i32 %104)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, ...) #1

declare dso_local i32 @mei_dev_state_str(i32) #1

declare dso_local i32 @mei_hbm_state_str(i64) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i64 @mei_pg_is_enabled(%struct.mei_device*) #1

declare dso_local i32 @mei_pg_state_str(i32) #1

declare dso_local i32 @mei_pg_state(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
