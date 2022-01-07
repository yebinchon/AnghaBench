; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_pagetest.c_crosstest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_pagetest.c_crosstest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"crosstest\0A\00", align 1
@pgsize = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ebcnt = common dso_local global i32 0, align 4
@bbt = common dso_local global i64* null, align 8
@mtd = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"reading page at %#llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"verifying pages read at %#llx match\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"verify failed!\0A\00", align 1
@errcnt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"crosstest ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @crosstest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crosstest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32 0, i32* %2, align 4
  %11 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @pgsize, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kcalloc(i32 %12, i32 4, i32 %13)
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %0
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %1, align 4
  br label %193

20:                                               ; preds = %0
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* @pgsize, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8* %24, i8** %8, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* @pgsize, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* @pgsize, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8* %32, i8** %10, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %52, %20
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @ebcnt, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i64*, i64** @bbt, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %37, %33
  %45 = phi i1 [ false, %33 ], [ %43, %37 ]
  br i1 %45, label %46, label %55

46:                                               ; preds = %44
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %33

55:                                               ; preds = %44
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %81, %55
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @ebcnt, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load i64*, i64** @bbt, align 8
  %65 = load i32, i32* @ebcnt, align 4
  %66 = load i32, i32* %3, align 4
  %67 = sub nsw i32 %65, %66
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %64, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br label %73

73:                                               ; preds = %63, %59
  %74 = phi i1 [ false, %59 ], [ %72, %63 ]
  br i1 %74, label %75, label %84

75:                                               ; preds = %73
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sub nsw i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %59

84:                                               ; preds = %73
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @pgsize, align 4
  %87 = sub nsw i32 %85, %86
  %88 = load i32, i32* @pgsize, align 4
  %89 = sub nsw i32 %87, %88
  store i32 %89, i32* %4, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @pgsize, align 4
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @mtdtest_read(%struct.TYPE_3__* %90, i32 %91, i32 %92, i8* %93)
  store i32 %94, i32* %2, align 4
  %95 = load i32, i32* %2, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %84
  %98 = load i8*, i8** %7, align 8
  %99 = call i32 @kfree(i8* %98)
  %100 = load i32, i32* %2, align 4
  store i32 %100, i32* %1, align 4
  br label %193

101:                                              ; preds = %84
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @pgsize, align 4
  %104 = sub nsw i32 %102, %103
  %105 = load i32, i32* @pgsize, align 4
  %106 = sub nsw i32 %104, %105
  %107 = load i32, i32* @pgsize, align 4
  %108 = sub nsw i32 %106, %107
  store i32 %108, i32* %4, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @pgsize, align 4
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 @mtdtest_read(%struct.TYPE_3__* %109, i32 %110, i32 %111, i8* %112)
  store i32 %113, i32* %2, align 4
  %114 = load i32, i32* %2, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %101
  %117 = load i8*, i8** %7, align 8
  %118 = call i32 @kfree(i8* %117)
  %119 = load i32, i32* %2, align 4
  store i32 %119, i32* %1, align 4
  br label %193

120:                                              ; preds = %101
  %121 = load i32, i32* %5, align 4
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %123)
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @pgsize, align 4
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @mtdtest_read(%struct.TYPE_3__* %125, i32 %126, i32 %127, i8* %128)
  store i32 %129, i32* %2, align 4
  %130 = load i32, i32* %2, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %120
  %133 = load i8*, i8** %7, align 8
  %134 = call i32 @kfree(i8* %133)
  %135 = load i32, i32* %2, align 4
  store i32 %135, i32* %1, align 4
  br label %193

136:                                              ; preds = %120
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @pgsize, align 4
  %139 = sub nsw i32 %137, %138
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %141)
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @pgsize, align 4
  %146 = load i8*, i8** %9, align 8
  %147 = call i32 @mtdtest_read(%struct.TYPE_3__* %143, i32 %144, i32 %145, i8* %146)
  store i32 %147, i32* %2, align 4
  %148 = load i32, i32* %2, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %136
  %151 = load i8*, i8** %7, align 8
  %152 = call i32 @kfree(i8* %151)
  %153 = load i32, i32* %2, align 4
  store i32 %153, i32* %1, align 4
  br label %193

154:                                              ; preds = %136
  %155 = load i32, i32* %5, align 4
  store i32 %155, i32* %4, align 4
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %157)
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* @pgsize, align 4
  %162 = load i8*, i8** %10, align 8
  %163 = call i32 @mtdtest_read(%struct.TYPE_3__* %159, i32 %160, i32 %161, i8* %162)
  store i32 %163, i32* %2, align 4
  %164 = load i32, i32* %2, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %154
  %167 = load i8*, i8** %7, align 8
  %168 = call i32 @kfree(i8* %167)
  %169 = load i32, i32* %2, align 4
  store i32 %169, i32* %1, align 4
  br label %193

170:                                              ; preds = %154
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %172)
  %174 = load i8*, i8** %8, align 8
  %175 = load i8*, i8** %10, align 8
  %176 = load i32, i32* @pgsize, align 4
  %177 = call i64 @memcmp(i8* %174, i8* %175, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %170
  %180 = call i32 @pr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %181 = load i32, i32* @errcnt, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* @errcnt, align 4
  br label %189

183:                                              ; preds = %170
  %184 = load i32, i32* %2, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %183
  %187 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %183
  br label %189

189:                                              ; preds = %188, %179
  %190 = load i8*, i8** %7, align 8
  %191 = call i32 @kfree(i8* %190)
  %192 = load i32, i32* %2, align 4
  store i32 %192, i32* %1, align 4
  br label %193

193:                                              ; preds = %189, %166, %150, %132, %116, %97, %17
  %194 = load i32, i32* %1, align 4
  ret i32 %194
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mtdtest_read(%struct.TYPE_3__*, i32, i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
