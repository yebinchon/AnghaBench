; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_parse_protocol_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_parse_protocol_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }
%struct.rc_dev = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@proto_names = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"lirc\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Unknown protocol: '%s'\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Protocol not specified\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*, i8*)* @parse_protocol_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_protocol_change(%struct.rc_dev* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %108, %3
  %15 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %109

17:                                               ; preds = %14
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %109

22:                                               ; preds = %17
  %23 = load i8*, i8** %8, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 43
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %8, align 8
  br label %40

30:                                               ; preds = %22
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 45
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %8, align 8
  br label %39

38:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %38, %35
  br label %40

40:                                               ; preds = %39, %27
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %64, %40
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @proto_names, align 8
  %44 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %67

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** @proto_names, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @strcasecmp(i8* %47, i8* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %46
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @proto_names, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %12, align 4
  br label %67

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %13, align 4
  br label %41

67:                                               ; preds = %56, %41
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** @proto_names, align 8
  %70 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %69)
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load i8*, i8** %8, align 8
  %74 = call i32 @strcasecmp(i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  store i32 0, i32* %12, align 4
  br label %84

77:                                               ; preds = %72
  %78 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %79 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %78, i32 0, i32 0
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %79, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %120

84:                                               ; preds = %76
  br label %85

85:                                               ; preds = %84, %67
  %86 = load i32, i32* %9, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i32, i32* %12, align 4
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 4
  br label %108

95:                                               ; preds = %85
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32, i32* %12, align 4
  %100 = xor i32 %99, -1
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %100
  store i32 %103, i32* %101, align 4
  br label %107

104:                                              ; preds = %95
  %105 = load i32, i32* %12, align 4
  %106 = load i32*, i32** %6, align 8
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %104, %98
  br label %108

108:                                              ; preds = %107, %90
  br label %14

109:                                              ; preds = %21, %14
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %109
  %113 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %114 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %113, i32 0, i32 0
  %115 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %114, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %120

118:                                              ; preds = %109
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %112, %77
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
