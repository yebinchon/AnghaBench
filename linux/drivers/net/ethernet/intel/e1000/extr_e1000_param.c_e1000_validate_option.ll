; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_param.c_e1000_validate_option.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_param.c_e1000_validate_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_option = type { i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, %struct.e1000_opt_list* }
%struct.e1000_opt_list = type { i32, i8* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.e1000_adapter = type { i32 }

@OPTION_UNSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s Enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s Disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s set to %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Invalid %s value specified (%i) %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.e1000_option*, %struct.e1000_adapter*)* @e1000_validate_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_validate_option(i32* %0, %struct.e1000_option* %1, %struct.e1000_adapter* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.e1000_option*, align 8
  %7 = alloca %struct.e1000_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.e1000_opt_list*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.e1000_option* %1, %struct.e1000_option** %6, align 8
  store %struct.e1000_adapter* %2, %struct.e1000_adapter** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @OPTION_UNSET, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %16 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  store i32 0, i32* %4, align 4
  br label %130

19:                                               ; preds = %3
  %20 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %21 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %112 [
    i32 130, label %23
    i32 128, label %41
    i32 129, label %69
  ]

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %40 [
    i32 131, label %26
    i32 132, label %33
  ]

26:                                               ; preds = %23
  %27 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %28 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 (i8*, i8*, ...) @e_dev_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i32 0, i32* %4, align 4
  br label %130

33:                                               ; preds = %23
  %34 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %35 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 (i8*, i8*, ...) @e_dev_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  store i32 0, i32* %4, align 4
  br label %130

40:                                               ; preds = %23
  br label %114

41:                                               ; preds = %19
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %45 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp uge i32 %43, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %41
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %54 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ule i32 %52, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %61 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, i8*, ...) @e_dev_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %64, i32 %66)
  store i32 0, i32* %4, align 4
  br label %130

68:                                               ; preds = %50, %41
  br label %114

69:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %108, %69
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %73 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %71, %76
  br i1 %77, label %78, label %111

78:                                               ; preds = %70
  %79 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %80 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load %struct.e1000_opt_list*, %struct.e1000_opt_list** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.e1000_opt_list, %struct.e1000_opt_list* %83, i64 %85
  store %struct.e1000_opt_list* %86, %struct.e1000_opt_list** %9, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.e1000_opt_list*, %struct.e1000_opt_list** %9, align 8
  %90 = getelementptr inbounds %struct.e1000_opt_list, %struct.e1000_opt_list* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %78
  %94 = load %struct.e1000_opt_list*, %struct.e1000_opt_list** %9, align 8
  %95 = getelementptr inbounds %struct.e1000_opt_list, %struct.e1000_opt_list* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load %struct.e1000_opt_list*, %struct.e1000_opt_list** %9, align 8
  %103 = getelementptr inbounds %struct.e1000_opt_list, %struct.e1000_opt_list* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 (i8*, i8*, ...) @e_dev_info(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %101, %93
  store i32 0, i32* %4, align 4
  br label %130

107:                                              ; preds = %78
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %70

111:                                              ; preds = %70
  br label %114

112:                                              ; preds = %19
  %113 = call i32 (...) @BUG()
  br label %114

114:                                              ; preds = %112, %111, %68, %40
  %115 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %116 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to i8*
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %123 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i8*, i8*, ...) @e_dev_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %119, i32 %121, i32 %124)
  %126 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %127 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32*, i32** %5, align 8
  store i32 %128, i32* %129, align 4
  store i32 -1, i32* %4, align 4
  br label %130

130:                                              ; preds = %114, %106, %59, %33, %26, %14
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @e_dev_info(i8*, i8*, ...) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
