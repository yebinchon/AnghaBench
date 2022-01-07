; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_new_custom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ctrls.c_v4l2_ctrl_new_custom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32 }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_ctrl_config = type { i8*, i8**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@V4L2_CTRL_TYPE_MENU = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_INTEGER_MENU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_config* %1, i8* %2) #0 {
  %4 = alloca %struct.v4l2_ctrl*, align 8
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  %6 = alloca %struct.v4l2_ctrl_config*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_ctrl*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %5, align 8
  store %struct.v4l2_ctrl_config* %1, %struct.v4l2_ctrl_config** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %10, align 8
  %22 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %22, i32 0, i32 1
  %24 = load i8**, i8*** %23, align 8
  store i8** %24, i8*** %11, align 8
  %25 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %25, i32 0, i32 15
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %12, align 8
  %28 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %13, align 4
  %31 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %31, i32 0, i32 14
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %14, align 4
  %34 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %34, i32 0, i32 13
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %37, i32 0, i32 12
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %16, align 4
  %40 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %6, align 8
  %41 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %40, i32 0, i32 11
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %17, align 4
  %43 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %6, align 8
  %44 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %43, i32 0, i32 10
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %18, align 4
  %46 = load i8*, i8** %10, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %3
  %49 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @v4l2_ctrl_fill(i32 %51, i8** %10, i32* %13, i32* %15, i32* %16, i32* %17, i32* %18, i32* %14)
  br label %53

53:                                               ; preds = %48, %3
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @V4L2_CTRL_TYPE_MENU, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER_MENU, align 4
  %60 = icmp eq i32 %58, %59
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i1 [ true, %53 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %17, align 4
  %68 = call i32 @WARN_ON(i32 %67)
  br label %74

69:                                               ; preds = %61
  %70 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %6, align 8
  %71 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @WARN_ON(i32 %72)
  br label %74

74:                                               ; preds = %69, %66
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @V4L2_CTRL_TYPE_MENU, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load i8**, i8*** %11, align 8
  %80 = icmp ne i8** %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %6, align 8
  %83 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = call i8** @v4l2_ctrl_get_menu(i32 %84)
  store i8** %85, i8*** %11, align 8
  br label %99

86:                                               ; preds = %78, %74
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @V4L2_CTRL_TYPE_INTEGER_MENU, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load i32*, i32** %12, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  %97 = call i32 @handler_set_err(%struct.v4l2_ctrl_handler* %94, i32 %96)
  store %struct.v4l2_ctrl* null, %struct.v4l2_ctrl** %4, align 8
  br label %146

98:                                               ; preds = %90, %86
  br label %99

99:                                               ; preds = %98, %81
  %100 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %101 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %6, align 8
  %102 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %6, align 8
  %105 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %6, align 8
  %108 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %10, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %99
  %117 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %6, align 8
  %118 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  br label %122

120:                                              ; preds = %99
  %121 = load i32, i32* %17, align 4
  br label %122

122:                                              ; preds = %120, %116
  %123 = phi i32 [ %119, %116 ], [ %121, %120 ]
  %124 = load i32, i32* %18, align 4
  %125 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %6, align 8
  %126 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %6, align 8
  %129 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i8**, i8*** %11, align 8
  %133 = load i32*, i32** %12, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = call %struct.v4l2_ctrl* @v4l2_ctrl_new(%struct.v4l2_ctrl_handler* %100, i32 %103, i32 %106, i32 %109, i8* %110, i32 %111, i32 %112, i32 %113, i32 %123, i32 %124, i32 %127, i32 %130, i32 %131, i8** %132, i32* %133, i8* %134)
  store %struct.v4l2_ctrl* %135, %struct.v4l2_ctrl** %9, align 8
  %136 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %137 = icmp ne %struct.v4l2_ctrl* %136, null
  br i1 %137, label %138, label %144

138:                                              ; preds = %122
  %139 = load %struct.v4l2_ctrl_config*, %struct.v4l2_ctrl_config** %6, align 8
  %140 = getelementptr inbounds %struct.v4l2_ctrl_config, %struct.v4l2_ctrl_config* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  %143 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %138, %122
  %145 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %9, align 8
  store %struct.v4l2_ctrl* %145, %struct.v4l2_ctrl** %4, align 8
  br label %146

146:                                              ; preds = %144, %93
  %147 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %4, align 8
  ret %struct.v4l2_ctrl* %147
}

declare dso_local i32 @v4l2_ctrl_fill(i32, i8**, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8** @v4l2_ctrl_get_menu(i32) #1

declare dso_local i32 @handler_set_err(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_new(%struct.v4l2_ctrl_handler*, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i8**, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
