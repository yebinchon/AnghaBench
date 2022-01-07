; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_pagetest.c_erasecrosstest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_pagetest.c_erasecrosstest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@twopages = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"erasecrosstest\0A\00", align 1
@ebcnt = common dso_local global i32 0, align 4
@bbt = common dso_local global i64* null, align 8
@mtd = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"erasing block %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"writing 1st page of block %d\0A\00", align 1
@rnd_state = common dso_local global i32 0, align 4
@writebuf = common dso_local global i32 0, align 4
@pgsize = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"There is no data like this!\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"reading 1st page of block %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"verifying 1st page of block %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"verify failed!\0A\00", align 1
@errcnt = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"erasecrosstest ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @erasecrosstest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erasecrosstest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32 0, i32* %2, align 4
  %8 = load i8*, i8** @twopages, align 8
  store i8* %8, i8** %7, align 8
  %9 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i64 0, i64* %6, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %31, %0
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ebcnt, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i64*, i64** @bbt, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %14, %10
  %22 = phi i1 [ false, %10 ], [ %20, %14 ]
  br i1 %22, label %23, label %34

23:                                               ; preds = %21
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mtd, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %6, align 8
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %10

34:                                               ; preds = %21
  %35 = load i32, i32* @ebcnt, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %49, %34
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i64*, i64** @bbt, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %40, %37
  %48 = phi i1 [ false, %37 ], [ %46, %40 ]
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %37

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mtd, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @mtdtest_erase_eraseblock(%struct.TYPE_5__* %55, i32 %56)
  store i32 %57, i32* %2, align 4
  %58 = load i32, i32* %2, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %2, align 4
  store i32 %61, i32* %1, align 4
  br label %177

62:                                               ; preds = %52
  %63 = load i32, i32* %4, align 4
  %64 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @writebuf, align 4
  %66 = load i32, i32* @pgsize, align 4
  %67 = call i32 @prandom_bytes_state(i32* @rnd_state, i32 %65, i32 %66)
  %68 = load i32, i32* @writebuf, align 4
  %69 = call i32 @strcpy(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mtd, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i32, i32* @pgsize, align 4
  %73 = load i32, i32* @writebuf, align 4
  %74 = call i32 @mtdtest_write(%struct.TYPE_5__* %70, i64 %71, i32 %72, i32 %73)
  store i32 %74, i32* %2, align 4
  %75 = load i32, i32* %2, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %62
  %78 = load i32, i32* %2, align 4
  store i32 %78, i32* %1, align 4
  br label %177

79:                                               ; preds = %62
  %80 = load i32, i32* %4, align 4
  %81 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* @pgsize, align 4
  %84 = call i32 @memset(i8* %82, i32 0, i32 %83)
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mtd, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i32, i32* @pgsize, align 4
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @mtdtest_read(%struct.TYPE_5__* %85, i64 %86, i32 %87, i8* %88)
  store i32 %89, i32* %2, align 4
  %90 = load i32, i32* %2, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %79
  %93 = load i32, i32* %2, align 4
  store i32 %93, i32* %1, align 4
  br label %177

94:                                               ; preds = %79
  %95 = load i32, i32* %4, align 4
  %96 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @writebuf, align 4
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* @pgsize, align 4
  %100 = call i64 @memcmp(i32 %97, i8* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %104 = load i32, i32* @errcnt, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* @errcnt, align 4
  store i32 -1, i32* %1, align 4
  br label %177

106:                                              ; preds = %94
  %107 = load i32, i32* %4, align 4
  %108 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mtd, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @mtdtest_erase_eraseblock(%struct.TYPE_5__* %109, i32 %110)
  store i32 %111, i32* %2, align 4
  %112 = load i32, i32* %2, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %106
  %115 = load i32, i32* %2, align 4
  store i32 %115, i32* %1, align 4
  br label %177

116:                                              ; preds = %106
  %117 = load i32, i32* %4, align 4
  %118 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @writebuf, align 4
  %120 = load i32, i32* @pgsize, align 4
  %121 = call i32 @prandom_bytes_state(i32* @rnd_state, i32 %119, i32 %120)
  %122 = load i32, i32* @writebuf, align 4
  %123 = call i32 @strcpy(i32 %122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mtd, align 8
  %125 = load i64, i64* %6, align 8
  %126 = load i32, i32* @pgsize, align 4
  %127 = load i32, i32* @writebuf, align 4
  %128 = call i32 @mtdtest_write(%struct.TYPE_5__* %124, i64 %125, i32 %126, i32 %127)
  store i32 %128, i32* %2, align 4
  %129 = load i32, i32* %2, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %116
  %132 = load i32, i32* %2, align 4
  store i32 %132, i32* %1, align 4
  br label %177

133:                                              ; preds = %116
  %134 = load i32, i32* %5, align 4
  %135 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mtd, align 8
  %137 = load i32, i32* %5, align 4
  %138 = call i32 @mtdtest_erase_eraseblock(%struct.TYPE_5__* %136, i32 %137)
  store i32 %138, i32* %2, align 4
  %139 = load i32, i32* %2, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %133
  %142 = load i32, i32* %2, align 4
  store i32 %142, i32* %1, align 4
  br label %177

143:                                              ; preds = %133
  %144 = load i32, i32* %4, align 4
  %145 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %144)
  %146 = load i8*, i8** %7, align 8
  %147 = load i32, i32* @pgsize, align 4
  %148 = call i32 @memset(i8* %146, i32 0, i32 %147)
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mtd, align 8
  %150 = load i64, i64* %6, align 8
  %151 = load i32, i32* @pgsize, align 4
  %152 = load i8*, i8** %7, align 8
  %153 = call i32 @mtdtest_read(%struct.TYPE_5__* %149, i64 %150, i32 %151, i8* %152)
  store i32 %153, i32* %2, align 4
  %154 = load i32, i32* %2, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %143
  %157 = load i32, i32* %2, align 4
  store i32 %157, i32* %1, align 4
  br label %177

158:                                              ; preds = %143
  %159 = load i32, i32* %4, align 4
  %160 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* @writebuf, align 4
  %162 = load i8*, i8** %7, align 8
  %163 = load i32, i32* @pgsize, align 4
  %164 = call i64 @memcmp(i32 %161, i8* %162, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %158
  %167 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %168 = load i32, i32* @errcnt, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* @errcnt, align 4
  store i32 -1, i32* %1, align 4
  br label %177

170:                                              ; preds = %158
  %171 = load i32, i32* %2, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %170
  %174 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %170
  %176 = load i32, i32* %2, align 4
  store i32 %176, i32* %1, align 4
  br label %177

177:                                              ; preds = %175, %166, %156, %141, %131, %114, %102, %92, %77, %60
  %178 = load i32, i32* %1, align 4
  ret i32 %178
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @mtdtest_erase_eraseblock(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @prandom_bytes_state(i32*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @mtdtest_write(%struct.TYPE_5__*, i64, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mtdtest_read(%struct.TYPE_5__*, i64, i32, i8*) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
