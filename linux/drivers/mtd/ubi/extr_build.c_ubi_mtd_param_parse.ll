; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_build.c_ubi_mtd_param_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_build.c_ubi_mtd_param_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_dev_param = type { i8*, i64, i32, i32 }
%struct.kernel_param = type { i32 }

@MTD_PARAM_LEN_MAX = common dso_local global i32 0, align 4
@MTD_PARAM_MAX_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@mtd_devs = common dso_local global i64 0, align 8
@UBI_MAX_DEVICES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"UBI error: too many parameters, max. is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"UBI error: parameter \22%s\22 is too long, max. is %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"UBI warning: empty 'mtd=' parameter - ignored\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"UBI error: too many arguments at \22%s\22\0A\00", align 1
@mtd_dev_param = common dso_local global %struct.mtd_dev_param* null, align 8
@.str.5 = private unnamed_addr constant [55 x i8] c"UBI error: bad value for max_beb_per1024 parameter: %s\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"UBI error: bad value for ubi_num parameter: %s\00", align 1
@UBI_DEV_NUM_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @ubi_mtd_param_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubi_mtd_param_parse(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernel_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtd_dev_param*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %5, align 8
  %17 = load i32, i32* @MTD_PARAM_LEN_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8* %21, i8** %11, align 8
  %22 = load i32, i32* @MTD_PARAM_MAX_COUNT, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8*, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %166

30:                                               ; preds = %2
  %31 = load i64, i64* @mtd_devs, align 8
  %32 = load i64, i64* @UBI_MAX_DEVICES, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i64, i64* @UBI_MAX_DEVICES, align 8
  %36 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %166

39:                                               ; preds = %30
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* @MTD_PARAM_LEN_MAX, align 4
  %42 = call i32 @strnlen(i8* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @MTD_PARAM_LEN_MAX, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* @MTD_PARAM_LEN_MAX, align 4
  %49 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %47, i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %166

52:                                               ; preds = %39
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = call i32 @pr_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %166

57:                                               ; preds = %52
  %58 = load i8*, i8** %4, align 8
  %59 = call i32 @strcpy(i8* %20, i8* %58)
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %20, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 10
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %20, i64 %70
  store i8 0, i8* %71, align 1
  br label %72

72:                                               ; preds = %67, %57
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %82, %72
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @MTD_PARAM_MAX_COUNT, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = call i8* @strsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %24, i64 %80
  store i8* %78, i8** %81, align 8
  br label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %73

85:                                               ; preds = %73
  %86 = load i8*, i8** %11, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8* %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %166

93:                                               ; preds = %85
  %94 = load %struct.mtd_dev_param*, %struct.mtd_dev_param** @mtd_dev_param, align 8
  %95 = load i64, i64* @mtd_devs, align 8
  %96 = getelementptr inbounds %struct.mtd_dev_param, %struct.mtd_dev_param* %94, i64 %95
  store %struct.mtd_dev_param* %96, %struct.mtd_dev_param** %8, align 8
  %97 = load %struct.mtd_dev_param*, %struct.mtd_dev_param** %8, align 8
  %98 = getelementptr inbounds %struct.mtd_dev_param, %struct.mtd_dev_param* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = getelementptr inbounds i8*, i8** %24, i64 0
  %102 = load i8*, i8** %101, align 16
  %103 = call i32 @strcpy(i8* %100, i8* %102)
  %104 = getelementptr inbounds i8*, i8** %24, i64 1
  %105 = load i8*, i8** %104, align 8
  store i8* %105, i8** %13, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %123

108:                                              ; preds = %93
  %109 = load i8*, i8** %13, align 8
  %110 = call i64 @bytes_str_to_int(i8* %109)
  %111 = load %struct.mtd_dev_param*, %struct.mtd_dev_param** %8, align 8
  %112 = getelementptr inbounds %struct.mtd_dev_param, %struct.mtd_dev_param* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load %struct.mtd_dev_param*, %struct.mtd_dev_param** %8, align 8
  %114 = getelementptr inbounds %struct.mtd_dev_param, %struct.mtd_dev_param* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %108
  %118 = load %struct.mtd_dev_param*, %struct.mtd_dev_param** %8, align 8
  %119 = getelementptr inbounds %struct.mtd_dev_param, %struct.mtd_dev_param* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %166

122:                                              ; preds = %108
  br label %123

123:                                              ; preds = %122, %93
  %124 = getelementptr inbounds i8*, i8** %24, i64 2
  %125 = load i8*, i8** %124, align 16
  store i8* %125, i8** %13, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %141

128:                                              ; preds = %123
  %129 = load i8*, i8** %13, align 8
  %130 = load %struct.mtd_dev_param*, %struct.mtd_dev_param** %8, align 8
  %131 = getelementptr inbounds %struct.mtd_dev_param, %struct.mtd_dev_param* %130, i32 0, i32 3
  %132 = call i32 @kstrtoint(i8* %129, i32 10, i32* %131)
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = load i8*, i8** %13, align 8
  %137 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i8* %136)
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %166

140:                                              ; preds = %128
  br label %141

141:                                              ; preds = %140, %123
  %142 = getelementptr inbounds i8*, i8** %24, i64 3
  %143 = load i8*, i8** %142, align 8
  store i8* %143, i8** %13, align 8
  %144 = load i8*, i8** %13, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %159

146:                                              ; preds = %141
  %147 = load i8*, i8** %13, align 8
  %148 = load %struct.mtd_dev_param*, %struct.mtd_dev_param** %8, align 8
  %149 = getelementptr inbounds %struct.mtd_dev_param, %struct.mtd_dev_param* %148, i32 0, i32 2
  %150 = call i32 @kstrtoint(i8* %147, i32 10, i32* %149)
  store i32 %150, i32* %16, align 4
  %151 = load i32, i32* %16, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %146
  %154 = load i8*, i8** %13, align 8
  %155 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8* %154)
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %166

158:                                              ; preds = %146
  br label %163

159:                                              ; preds = %141
  %160 = load i32, i32* @UBI_DEV_NUM_AUTO, align 4
  %161 = load %struct.mtd_dev_param*, %struct.mtd_dev_param** %8, align 8
  %162 = getelementptr inbounds %struct.mtd_dev_param, %struct.mtd_dev_param* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %159, %158
  %164 = load i64, i64* @mtd_devs, align 8
  %165 = add i64 %164, 1
  store i64 %165, i64* @mtd_devs, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %166

166:                                              ; preds = %163, %153, %135, %117, %88, %55, %46, %34, %27
  %167 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %167)
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i32 @strnlen(i8*, i32) #2

declare dso_local i32 @pr_warn(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i64 @bytes_str_to_int(i8*) #2

declare dso_local i32 @kstrtoint(i8*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
