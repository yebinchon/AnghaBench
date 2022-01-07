; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_type_flags_print.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_dst.c_dst_type_flags_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"DST type flags :\0A\00", align 1
@DST_TYPE_HAS_TS188 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c" 0x%x newtuner\0A\00", align 1
@DST_TYPE_HAS_NEWTUNE_2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c" 0x%x newtuner 2\0A\00", align 1
@DST_TYPE_HAS_TS204 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c" 0x%x ts204\0A\00", align 1
@DST_TYPE_HAS_VLF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c" 0x%x VLF\0A\00", align 1
@DST_TYPE_HAS_SYMDIV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c" 0x%x symdiv\0A\00", align 1
@DST_TYPE_HAS_FW_1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c" 0x%x firmware version = 1\0A\00", align 1
@DST_TYPE_HAS_FW_2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c" 0x%x firmware version = 2\0A\00", align 1
@DST_TYPE_HAS_FW_3 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c" 0x%x firmware version = 3\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_state*)* @dst_type_flags_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dst_type_flags_print(%struct.dst_state* %0) #0 {
  %2 = alloca %struct.dst_state*, align 8
  %3 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %2, align 8
  %4 = load %struct.dst_state*, %struct.dst_state** %2, align 8
  %5 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @DST_TYPE_HAS_TS188, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @DST_TYPE_HAS_TS188, align 4
  %14 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @DST_TYPE_HAS_NEWTUNE_2, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @DST_TYPE_HAS_NEWTUNE_2, align 4
  %22 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @DST_TYPE_HAS_TS204, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @DST_TYPE_HAS_TS204, align 4
  %30 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @DST_TYPE_HAS_VLF, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @DST_TYPE_HAS_VLF, align 4
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @DST_TYPE_HAS_SYMDIV, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @DST_TYPE_HAS_SYMDIV, align 4
  %46 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @DST_TYPE_HAS_FW_1, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @DST_TYPE_HAS_FW_1, align 4
  %54 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @DST_TYPE_HAS_FW_2, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @DST_TYPE_HAS_FW_2, align 4
  %62 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @DST_TYPE_HAS_FW_3, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @DST_TYPE_HAS_FW_3, align 4
  %70 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68, %63
  %72 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_err(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
