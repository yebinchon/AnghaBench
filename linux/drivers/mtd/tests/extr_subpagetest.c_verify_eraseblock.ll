; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_subpagetest.c_verify_eraseblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_subpagetest.c_verify_eraseblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@mtd = common dso_local global %struct.TYPE_3__* null, align 8
@rnd_state = common dso_local global i32 0, align 4
@writebuf = common dso_local global i32 0, align 4
@subpgsize = common dso_local global i64 0, align 8
@readbuf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ECC correction at %#llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"error: read failed at %#llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"error: verify failed at %#llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"------------- written----------------\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"------------- read ------------------\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"-------------------------------------\0A\00", align 1
@errcnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @verify_eraseblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_eraseblock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %7, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @writebuf, align 4
  %13 = load i64, i64* @subpgsize, align 8
  %14 = call i32 @prandom_bytes_state(i32* @rnd_state, i32 %12, i64 %13)
  %15 = load i32, i32* @readbuf, align 4
  %16 = load i64, i64* @subpgsize, align 8
  %17 = call i32 @clear_data(i32 %15, i64 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i64, i64* @subpgsize, align 8
  %21 = load i32, i32* @readbuf, align 4
  %22 = call i32 @mtd_read(%struct.TYPE_3__* %18, i32 %19, i64 %20, i64* %4, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %1
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @subpgsize, align 8
  %28 = icmp ne i64 %26, %27
  br label %29

29:                                               ; preds = %25, %1
  %30 = phi i1 [ true, %1 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @mtd_is_bitflip(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @subpgsize, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %44)
  store i32 0, i32* %5, align 4
  br label %57

46:                                               ; preds = %38, %34
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  br label %55

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ -1, %54 ]
  store i32 %56, i32* %2, align 4
  br label %152

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %29
  %59 = load i32, i32* @readbuf, align 4
  %60 = load i32, i32* @writebuf, align 4
  %61 = load i64, i64* @subpgsize, align 8
  %62 = call i32 @memcmp(i32 %59, i32 %60, i64 %61)
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %67)
  %69 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @writebuf, align 4
  %71 = call i32 @print_subpage(i32 %70)
  %72 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32, i32* @readbuf, align 4
  %74 = call i32 @print_subpage(i32 %73)
  %75 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %76 = load i32, i32* @errcnt, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @errcnt, align 4
  br label %78

78:                                               ; preds = %65, %58
  %79 = load i64, i64* @subpgsize, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* @writebuf, align 4
  %85 = load i64, i64* @subpgsize, align 8
  %86 = call i32 @prandom_bytes_state(i32* @rnd_state, i32 %84, i64 %85)
  %87 = load i32, i32* @readbuf, align 4
  %88 = load i64, i64* @subpgsize, align 8
  %89 = call i32 @clear_data(i32 %87, i64 %88)
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i64, i64* @subpgsize, align 8
  %93 = load i32, i32* @readbuf, align 4
  %94 = call i32 @mtd_read(%struct.TYPE_3__* %90, i32 %91, i64 %92, i64* %4, i32 %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %78
  %98 = load i64, i64* %4, align 8
  %99 = load i64, i64* @subpgsize, align 8
  %100 = icmp ne i64 %98, %99
  br label %101

101:                                              ; preds = %97, %78
  %102 = phi i1 [ true, %78 ], [ %100, %97 ]
  %103 = zext i1 %102 to i32
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %130

106:                                              ; preds = %101
  %107 = load i32, i32* %5, align 4
  %108 = call i64 @mtd_is_bitflip(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = load i64, i64* %4, align 8
  %112 = load i64, i64* @subpgsize, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %116)
  store i32 0, i32* %5, align 4
  br label %129

118:                                              ; preds = %110, %106
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %120)
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* %5, align 4
  br label %127

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126, %124
  %128 = phi i32 [ %125, %124 ], [ -1, %126 ]
  store i32 %128, i32* %2, align 4
  br label %152

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129, %101
  %131 = load i32, i32* @readbuf, align 4
  %132 = load i32, i32* @writebuf, align 4
  %133 = load i64, i64* @subpgsize, align 8
  %134 = call i32 @memcmp(i32 %131, i32 %132, i64 %133)
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %130
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %139)
  %141 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %142 = load i32, i32* @writebuf, align 4
  %143 = call i32 @print_subpage(i32 %142)
  %144 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %145 = load i32, i32* @readbuf, align 4
  %146 = call i32 @print_subpage(i32 %145)
  %147 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %148 = load i32, i32* @errcnt, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* @errcnt, align 4
  br label %150

150:                                              ; preds = %137, %130
  %151 = load i32, i32* %5, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %150, %127, %55
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @prandom_bytes_state(i32*, i32, i64) #1

declare dso_local i32 @clear_data(i32, i64) #1

declare dso_local i32 @mtd_read(%struct.TYPE_3__*, i32, i64, i64*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @mtd_is_bitflip(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

declare dso_local i32 @print_subpage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
