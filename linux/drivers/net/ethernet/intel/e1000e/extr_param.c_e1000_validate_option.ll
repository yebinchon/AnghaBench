; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_param.c_e1000_validate_option.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_param.c_e1000_validate_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_option = type { i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.e1000_opt_list* }
%struct.e1000_opt_list = type { i32, i8* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.e1000_adapter = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

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
  br label %150

19:                                               ; preds = %3
  %20 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %21 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %128 [
    i32 130, label %23
    i32 128, label %49
    i32 129, label %81
  ]

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %48 [
    i32 131, label %26
    i32 132, label %37
  ]

26:                                               ; preds = %23
  %27 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %28 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %32 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %35)
  store i32 0, i32* %4, align 4
  br label %150

37:                                               ; preds = %23
  %38 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %39 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %43 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  store i32 0, i32* %4, align 4
  br label %150

48:                                               ; preds = %23
  br label %130

49:                                               ; preds = %19
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %53 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp uge i32 %51, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %49
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %62 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ule i32 %60, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %58
  %68 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %69 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %73 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %76, i32 %78)
  store i32 0, i32* %4, align 4
  br label %150

80:                                               ; preds = %58, %49
  br label %130

81:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %124, %81
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %85 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %83, %88
  br i1 %89, label %90, label %127

90:                                               ; preds = %82
  %91 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %92 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load %struct.e1000_opt_list*, %struct.e1000_opt_list** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.e1000_opt_list, %struct.e1000_opt_list* %95, i64 %97
  store %struct.e1000_opt_list* %98, %struct.e1000_opt_list** %9, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.e1000_opt_list*, %struct.e1000_opt_list** %9, align 8
  %102 = getelementptr inbounds %struct.e1000_opt_list, %struct.e1000_opt_list* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %100, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %90
  %106 = load %struct.e1000_opt_list*, %struct.e1000_opt_list** %9, align 8
  %107 = getelementptr inbounds %struct.e1000_opt_list, %struct.e1000_opt_list* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 0
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %105
  %114 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %115 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %114, i32 0, i32 0
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.e1000_opt_list*, %struct.e1000_opt_list** %9, align 8
  %119 = getelementptr inbounds %struct.e1000_opt_list, %struct.e1000_opt_list* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %120)
  br label %122

122:                                              ; preds = %113, %105
  store i32 0, i32* %4, align 4
  br label %150

123:                                              ; preds = %90
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %82

127:                                              ; preds = %82
  br label %130

128:                                              ; preds = %19
  %129 = call i32 (...) @BUG()
  br label %130

130:                                              ; preds = %128, %127, %80, %48
  %131 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %132 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %136 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %143 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i32*, i8*, i8*, ...) @dev_info(i32* %134, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %139, i32 %141, i32 %144)
  %146 = load %struct.e1000_option*, %struct.e1000_option** %6, align 8
  %147 = getelementptr inbounds %struct.e1000_option, %struct.e1000_option* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32*, i32** %5, align 8
  store i32 %148, i32* %149, align 4
  store i32 -1, i32* %4, align 4
  br label %150

150:                                              ; preds = %130, %122, %67, %37, %26, %14
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @dev_info(i32*, i8*, i8*, ...) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
