; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_kgdbts.c_run_simple_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_kgdbts.c_run_simple_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__*, i32, i64 (i8*)* }
%struct.TYPE_3__ = type { i8*, i8*, i32 (i8*)* }

@send_ack = common dso_local global i32 0, align 4
@get_buf_cnt = common dso_local global i64 0, align 8
@ts = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@get_buf = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"kgdbts: ERROR GET: EOB on '%s' at %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"kgdbts: ERROR: beyond end of test on '%s' line %i\0A\00", align 1
@put_buf_cnt = common dso_local global i64 0, align 8
@BUFMAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [52 x i8] c"kgdbts: ERROR: put buffer overflow on '%s' line %i\0A\00", align 1
@put_buf = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"put%i: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"kgdbts: ERROR PUT: end of test buffer on '%s' line %i expected %s got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @run_simple_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_simple_test(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %64

9:                                                ; preds = %2
  %10 = load i32, i32* @send_ack, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, i32* @send_ack, align 4
  store i32 43, i32* %3, align 4
  br label %164

13:                                               ; preds = %9
  %14 = load i64, i64* @get_buf_cnt, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %13
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 1), align 8
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 0), align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32 (i8*)*, i32 (i8*)** %20, align 8
  %22 = icmp ne i32 (i8*)* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 1), align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 0), align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32 (i8*)*, i32 (i8*)** %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 1), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 0), align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 %28(i8* %33)
  br label %42

35:                                               ; preds = %16
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 1), align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 0), align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @fill_get_buf(i8* %40)
  br label %42

42:                                               ; preds = %35, %23
  br label %43

43:                                               ; preds = %42, %13
  %44 = load i8*, i8** @get_buf, align 8
  %45 = load i64, i64* @get_buf_cnt, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 2), align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 0), align 8
  %53 = call i32 (i8*, i32, i64, ...) @eprintk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %51, i64 %52)
  store i64 0, i64* @get_buf_cnt, align 8
  %54 = call i32 @fill_get_buf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %50, %43
  %56 = load i8*, i8** @get_buf, align 8
  %57 = load i64, i64* @get_buf_cnt, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  store i32 %60, i32* %6, align 4
  %61 = load i64, i64* @get_buf_cnt, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* @get_buf_cnt, align 8
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %164

64:                                               ; preds = %2
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 1), align 8
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 0), align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %64
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 1), align 8
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 0), align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %74
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 1), align 8
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 0), align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i32 (i8*)*, i32 (i8*)** %88, align 8
  %90 = icmp ne i32 (i8*)* %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %84
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 2), align 8
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 0), align 8
  %94 = call i32 (i8*, i32, i64, ...) @eprintk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %92, i64 %93)
  store i32 0, i32* %3, align 4
  br label %164

95:                                               ; preds = %84, %74, %64
  %96 = load i64, i64* @put_buf_cnt, align 8
  %97 = load i64, i64* @BUFMAX, align 8
  %98 = icmp uge i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 2), align 8
  %101 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 0), align 8
  %102 = call i32 (i8*, i32, i64, ...) @eprintk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %100, i64 %101)
  store i64 0, i64* @put_buf_cnt, align 8
  store i32 0, i32* %3, align 4
  br label %164

103:                                              ; preds = %95
  %104 = load i64, i64* @put_buf_cnt, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 36
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 0, i32* %3, align 4
  br label %164

110:                                              ; preds = %106, %103
  %111 = load i32, i32* %5, align 4
  %112 = trunc i32 %111 to i8
  %113 = load i8*, i8** @put_buf, align 8
  %114 = load i64, i64* @put_buf_cnt, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8 %112, i8* %115, align 1
  %116 = load i64, i64* @put_buf_cnt, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* @put_buf_cnt, align 8
  %118 = load i64, i64* @put_buf_cnt, align 8
  %119 = icmp ugt i64 %118, 3
  br i1 %119, label %120, label %163

120:                                              ; preds = %110
  %121 = load i8*, i8** @put_buf, align 8
  %122 = load i64, i64* @put_buf_cnt, align 8
  %123 = sub i64 %122, 3
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 35
  br i1 %127, label %128, label %163

128:                                              ; preds = %120
  %129 = load i64, i64* @put_buf_cnt, align 8
  %130 = load i64, i64* @BUFMAX, align 8
  %131 = icmp uge i64 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 2), align 8
  %134 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 0), align 8
  %135 = call i32 (i8*, i32, i64, ...) @eprintk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %133, i64 %134)
  store i64 0, i64* @put_buf_cnt, align 8
  store i32 0, i32* %3, align 4
  br label %164

136:                                              ; preds = %128
  %137 = load i8*, i8** @put_buf, align 8
  %138 = load i64, i64* @put_buf_cnt, align 8
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8 0, i8* %139, align 1
  %140 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 0), align 8
  %141 = load i8*, i8** @put_buf, align 8
  %142 = call i32 @v2printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 %140, i8* %141)
  %143 = load i64 (i8*)*, i64 (i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 3), align 8
  %144 = icmp ne i64 (i8*)* %143, null
  br i1 %144, label %145, label %160

145:                                              ; preds = %136
  %146 = load i64 (i8*)*, i64 (i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 3), align 8
  %147 = load i8*, i8** @put_buf, align 8
  %148 = call i64 %146(i8* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 2), align 8
  %152 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 0), align 8
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 1), align 8
  %154 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 0), align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = load i8*, i8** @put_buf, align 8
  %159 = call i32 (i8*, i32, i64, ...) @eprintk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i32 %151, i64 %152, i8* %157, i8* %158)
  br label %160

160:                                              ; preds = %150, %145, %136
  %161 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 0), align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ts, i32 0, i32 0), align 8
  store i64 0, i64* @put_buf_cnt, align 8
  store i64 0, i64* @get_buf_cnt, align 8
  store i32 1, i32* @send_ack, align 4
  br label %163

163:                                              ; preds = %160, %120, %110
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %132, %109, %99, %91, %55, %12
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i32 @fill_get_buf(i8*) #1

declare dso_local i32 @eprintk(i8*, i32, i64, ...) #1

declare dso_local i32 @v2printk(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
