; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_param.c_pch_gbe_validate_option.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_param.c_pch_gbe_validate_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_option = type { i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, %struct.pch_gbe_opt_list* }
%struct.pch_gbe_opt_list = type { i32, i8* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.pch_gbe_adapter = type { i32 }

@OPTION_UNSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%s Enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%s Disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s set to %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Invalid %s value specified (%i) %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.pch_gbe_option*, %struct.pch_gbe_adapter*)* @pch_gbe_validate_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_validate_option(i32* %0, %struct.pch_gbe_option* %1, %struct.pch_gbe_adapter* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pch_gbe_option*, align 8
  %7 = alloca %struct.pch_gbe_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pch_gbe_opt_list*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.pch_gbe_option* %1, %struct.pch_gbe_option** %6, align 8
  store %struct.pch_gbe_adapter* %2, %struct.pch_gbe_adapter** %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @OPTION_UNSET, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.pch_gbe_option*, %struct.pch_gbe_option** %6, align 8
  %16 = getelementptr inbounds %struct.pch_gbe_option, %struct.pch_gbe_option* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  store i32 0, i32* %4, align 4
  br label %145

19:                                               ; preds = %3
  %20 = load %struct.pch_gbe_option*, %struct.pch_gbe_option** %6, align 8
  %21 = getelementptr inbounds %struct.pch_gbe_option, %struct.pch_gbe_option* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %124 [
    i32 130, label %23
    i32 128, label %47
    i32 129, label %78
  ]

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %46 [
    i32 131, label %26
    i32 132, label %36
  ]

26:                                               ; preds = %23
  %27 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %28 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pch_gbe_option*, %struct.pch_gbe_option** %6, align 8
  %31 = getelementptr inbounds %struct.pch_gbe_option, %struct.pch_gbe_option* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 (i32, i8*, i8*, ...) @netdev_dbg(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %34)
  store i32 0, i32* %4, align 4
  br label %145

36:                                               ; preds = %23
  %37 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %38 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pch_gbe_option*, %struct.pch_gbe_option** %6, align 8
  %41 = getelementptr inbounds %struct.pch_gbe_option, %struct.pch_gbe_option* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 (i32, i8*, i8*, ...) @netdev_dbg(i32 %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  store i32 0, i32* %4, align 4
  br label %145

46:                                               ; preds = %23
  br label %126

47:                                               ; preds = %19
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pch_gbe_option*, %struct.pch_gbe_option** %6, align 8
  %51 = getelementptr inbounds %struct.pch_gbe_option, %struct.pch_gbe_option* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %49, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %47
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pch_gbe_option*, %struct.pch_gbe_option** %6, align 8
  %60 = getelementptr inbounds %struct.pch_gbe_option, %struct.pch_gbe_option* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sle i32 %58, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %56
  %66 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %67 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pch_gbe_option*, %struct.pch_gbe_option** %6, align 8
  %70 = getelementptr inbounds %struct.pch_gbe_option, %struct.pch_gbe_option* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, i8*, ...) @netdev_dbg(i32 %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %73, i32 %75)
  store i32 0, i32* %4, align 4
  br label %145

77:                                               ; preds = %56, %47
  br label %126

78:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %120, %78
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.pch_gbe_option*, %struct.pch_gbe_option** %6, align 8
  %82 = getelementptr inbounds %struct.pch_gbe_option, %struct.pch_gbe_option* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %80, %85
  br i1 %86, label %87, label %123

87:                                               ; preds = %79
  %88 = load %struct.pch_gbe_option*, %struct.pch_gbe_option** %6, align 8
  %89 = getelementptr inbounds %struct.pch_gbe_option, %struct.pch_gbe_option* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load %struct.pch_gbe_opt_list*, %struct.pch_gbe_opt_list** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.pch_gbe_opt_list, %struct.pch_gbe_opt_list* %92, i64 %94
  store %struct.pch_gbe_opt_list* %95, %struct.pch_gbe_opt_list** %9, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.pch_gbe_opt_list*, %struct.pch_gbe_opt_list** %9, align 8
  %99 = getelementptr inbounds %struct.pch_gbe_opt_list, %struct.pch_gbe_opt_list* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %97, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %87
  %103 = load %struct.pch_gbe_opt_list*, %struct.pch_gbe_opt_list** %9, align 8
  %104 = getelementptr inbounds %struct.pch_gbe_opt_list, %struct.pch_gbe_opt_list* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 0
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %102
  %111 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %112 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.pch_gbe_opt_list*, %struct.pch_gbe_opt_list** %9, align 8
  %115 = getelementptr inbounds %struct.pch_gbe_opt_list, %struct.pch_gbe_opt_list* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i32, i8*, i8*, ...) @netdev_dbg(i32 %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %110, %102
  store i32 0, i32* %4, align 4
  br label %145

119:                                              ; preds = %87
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %79

123:                                              ; preds = %79
  br label %126

124:                                              ; preds = %19
  %125 = call i32 (...) @BUG()
  br label %126

126:                                              ; preds = %124, %123, %77, %46
  %127 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %128 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.pch_gbe_option*, %struct.pch_gbe_option** %6, align 8
  %131 = getelementptr inbounds %struct.pch_gbe_option, %struct.pch_gbe_option* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to i8*
  %135 = load i32*, i32** %5, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.pch_gbe_option*, %struct.pch_gbe_option** %6, align 8
  %138 = getelementptr inbounds %struct.pch_gbe_option, %struct.pch_gbe_option* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i32, i8*, i8*, ...) @netdev_dbg(i32 %129, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %134, i32 %136, i32 %139)
  %141 = load %struct.pch_gbe_option*, %struct.pch_gbe_option** %6, align 8
  %142 = getelementptr inbounds %struct.pch_gbe_option, %struct.pch_gbe_option* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32*, i32** %5, align 8
  store i32 %143, i32* %144, align 4
  store i32 -1, i32* %4, align 4
  br label %145

145:                                              ; preds = %126, %118, %65, %36, %26, %14
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i32 @netdev_dbg(i32, i8*, i8*, ...) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
