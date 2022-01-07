; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_param.c_ixgb_validate_option.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_param.c_ixgb_validate_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_option = type { i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, %struct.ixgb_opt_list* }
%struct.ixgb_opt_list = type { i32, i8* }
%struct.TYPE_4__ = type { i32, i32 }

@OPTION_UNSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s Enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s Disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s set to %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Invalid %s specified (%i) %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ixgb_option*)* @ixgb_validate_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_validate_option(i32* %0, %struct.ixgb_option* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ixgb_option*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ixgb_opt_list*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.ixgb_option* %1, %struct.ixgb_option** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @OPTION_UNSET, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.ixgb_option*, %struct.ixgb_option** %5, align 8
  %14 = getelementptr inbounds %struct.ixgb_option, %struct.ixgb_option* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32*, i32** %4, align 8
  store i32 %15, i32* %16, align 4
  store i32 0, i32* %3, align 4
  br label %128

17:                                               ; preds = %2
  %18 = load %struct.ixgb_option*, %struct.ixgb_option** %5, align 8
  %19 = getelementptr inbounds %struct.ixgb_option, %struct.ixgb_option* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %110 [
    i32 130, label %21
    i32 128, label %39
    i32 129, label %67
  ]

21:                                               ; preds = %17
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %38 [
    i32 131, label %24
    i32 132, label %31
  ]

24:                                               ; preds = %21
  %25 = load %struct.ixgb_option*, %struct.ixgb_option** %5, align 8
  %26 = getelementptr inbounds %struct.ixgb_option, %struct.ixgb_option* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %29)
  store i32 0, i32* %3, align 4
  br label %128

31:                                               ; preds = %21
  %32 = load %struct.ixgb_option*, %struct.ixgb_option** %5, align 8
  %33 = getelementptr inbounds %struct.ixgb_option, %struct.ixgb_option* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  store i32 0, i32* %3, align 4
  br label %128

38:                                               ; preds = %21
  br label %112

39:                                               ; preds = %17
  %40 = load i32*, i32** %4, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ixgb_option*, %struct.ixgb_option** %5, align 8
  %43 = getelementptr inbounds %struct.ixgb_option, %struct.ixgb_option* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp uge i32 %41, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %39
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ixgb_option*, %struct.ixgb_option** %5, align 8
  %52 = getelementptr inbounds %struct.ixgb_option, %struct.ixgb_option* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ule i32 %50, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %48
  %58 = load %struct.ixgb_option*, %struct.ixgb_option** %5, align 8
  %59 = getelementptr inbounds %struct.ixgb_option, %struct.ixgb_option* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = load i32*, i32** %4, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %62, i32 %64)
  store i32 0, i32* %3, align 4
  br label %128

66:                                               ; preds = %48, %39
  br label %112

67:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %106, %67
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.ixgb_option*, %struct.ixgb_option** %5, align 8
  %71 = getelementptr inbounds %struct.ixgb_option, %struct.ixgb_option* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %69, %74
  br i1 %75, label %76, label %109

76:                                               ; preds = %68
  %77 = load %struct.ixgb_option*, %struct.ixgb_option** %5, align 8
  %78 = getelementptr inbounds %struct.ixgb_option, %struct.ixgb_option* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = load %struct.ixgb_opt_list*, %struct.ixgb_opt_list** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.ixgb_opt_list, %struct.ixgb_opt_list* %81, i64 %83
  store %struct.ixgb_opt_list* %84, %struct.ixgb_opt_list** %7, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ixgb_opt_list*, %struct.ixgb_opt_list** %7, align 8
  %88 = getelementptr inbounds %struct.ixgb_opt_list, %struct.ixgb_opt_list* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %86, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %76
  %92 = load %struct.ixgb_opt_list*, %struct.ixgb_opt_list** %7, align 8
  %93 = getelementptr inbounds %struct.ixgb_opt_list, %struct.ixgb_opt_list* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %91
  %100 = load %struct.ixgb_opt_list*, %struct.ixgb_opt_list** %7, align 8
  %101 = getelementptr inbounds %struct.ixgb_opt_list, %struct.ixgb_opt_list* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %99, %91
  store i32 0, i32* %3, align 4
  br label %128

105:                                              ; preds = %76
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %68

109:                                              ; preds = %68
  br label %112

110:                                              ; preds = %17
  %111 = call i32 (...) @BUG()
  br label %112

112:                                              ; preds = %110, %109, %66, %38
  %113 = load %struct.ixgb_option*, %struct.ixgb_option** %5, align 8
  %114 = getelementptr inbounds %struct.ixgb_option, %struct.ixgb_option* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ixgb_option*, %struct.ixgb_option** %5, align 8
  %121 = getelementptr inbounds %struct.ixgb_option, %struct.ixgb_option* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i8*, i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %117, i32 %119, i32 %122)
  %124 = load %struct.ixgb_option*, %struct.ixgb_option** %5, align 8
  %125 = getelementptr inbounds %struct.ixgb_option, %struct.ixgb_option* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32*, i32** %4, align 8
  store i32 %126, i32* %127, align 4
  store i32 -1, i32* %3, align 4
  br label %128

128:                                              ; preds = %112, %104, %57, %31, %24, %12
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @pr_info(i8*, i8*, ...) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
