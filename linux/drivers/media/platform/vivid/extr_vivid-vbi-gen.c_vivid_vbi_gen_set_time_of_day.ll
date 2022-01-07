; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-gen.c_vivid_vbi_gen_set_time_of_day.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-gen.c_vivid_vbi_gen_set_time_of_day.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@sys_tz = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @vivid_vbi_gen_set_time_of_day to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vivid_vbi_gen_set_time_of_day(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.tm, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = call i32 (...) @ktime_get_real_seconds()
  %7 = call i32 @time64_to_tm(i32 %6, i32 0, %struct.tm* %3)
  %8 = call i32 @calc_parity(i32 7)
  %9 = load i32*, i32** %2, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 %8, i32* %10, align 4
  %11 = call i32 @calc_parity(i32 1)
  %12 = load i32*, i32** %2, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 %11, i32* %13, align 4
  %14 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 64, %15
  %17 = call i32 @calc_parity(i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 %17, i32* %19, align 4
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 64, %21
  %23 = call i32 @calc_parity(i32 %22)
  %24 = load i32*, i32** %2, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 3
  store i32 %23, i32* %25, align 4
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = or i32 64, %27
  %29 = call i32 @calc_parity(i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 4
  store i32 %29, i32* %31, align 4
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %55

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_tz, i32 0, i32 0), align 4
  %41 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %44, 60
  %46 = add nsw i32 %42, %45
  %47 = icmp sgt i32 %40, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = or i32 96, %50
  %52 = call i32 @calc_parity(i32 %51)
  %53 = load i32*, i32** %2, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %48, %39, %35, %1
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 1, %57
  %59 = or i32 64, %58
  %60 = call i32 @calc_parity(i32 %59)
  %61 = load i32*, i32** %2, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 5
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 1, %64
  %66 = or i32 64, %65
  %67 = call i32 @calc_parity(i32 %66)
  %68 = load i32*, i32** %2, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 6
  store i32 %67, i32* %69, align 4
  %70 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 90
  %73 = and i32 %72, 63
  %74 = or i32 64, %73
  %75 = call i32 @calc_parity(i32 %74)
  %76 = load i32*, i32** %2, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 7
  store i32 %75, i32* %77, align 4
  %78 = call i32 @calc_parity(i32 15)
  %79 = load i32*, i32** %2, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 8
  store i32 %78, i32* %80, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %93, %55
  %82 = load i32, i32* %5, align 4
  %83 = icmp sle i32 %82, 8
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load i32*, i32** %2, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 127
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, %90
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %84
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %81

96:                                               ; preds = %81
  %97 = load i32, i32* %4, align 4
  %98 = sub nsw i32 256, %97
  %99 = call i32 @calc_parity(i32 %98)
  %100 = load i32*, i32** %2, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 9
  store i32 %99, i32* %101, align 4
  store i32 0, i32* %4, align 4
  %102 = call i32 @calc_parity(i32 7)
  %103 = load i32*, i32** %2, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 10
  store i32 %102, i32* %104, align 4
  %105 = call i32 @calc_parity(i32 4)
  %106 = load i32*, i32** %2, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 11
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_tz, i32 0, i32 0), align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %96
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_tz, i32 0, i32 0), align 4
  %112 = sdiv i32 %111, 60
  %113 = and i32 %112, 31
  %114 = or i32 64, %113
  %115 = call i32 @calc_parity(i32 %114)
  %116 = load i32*, i32** %2, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 12
  store i32 %115, i32* %117, align 4
  br label %127

118:                                              ; preds = %96
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sys_tz, i32 0, i32 0), align 4
  %120 = sdiv i32 %119, 60
  %121 = add nsw i32 24, %120
  %122 = and i32 %121, 31
  %123 = or i32 64, %122
  %124 = call i32 @calc_parity(i32 %123)
  %125 = load i32*, i32** %2, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 12
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %118, %110
  %128 = call i32 @calc_parity(i32 0)
  %129 = load i32*, i32** %2, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 13
  store i32 %128, i32* %130, align 4
  %131 = call i32 @calc_parity(i32 15)
  %132 = load i32*, i32** %2, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 14
  store i32 %131, i32* %133, align 4
  store i32 0, i32* %4, align 4
  store i32 10, i32* %5, align 4
  br label %134

134:                                              ; preds = %146, %127
  %135 = load i32, i32* %5, align 4
  %136 = icmp sle i32 %135, 14
  br i1 %136, label %137, label %149

137:                                              ; preds = %134
  %138 = load i32*, i32** %2, align 8
  %139 = load i32, i32* %5, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = and i32 %142, 127
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %137
  %147 = load i32, i32* %5, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %5, align 4
  br label %134

149:                                              ; preds = %134
  %150 = load i32, i32* %4, align 4
  %151 = sub nsw i32 256, %150
  %152 = call i32 @calc_parity(i32 %151)
  %153 = load i32*, i32** %2, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 15
  store i32 %152, i32* %154, align 4
  ret void
}

declare dso_local i32 @time64_to_tm(i32, i32, %struct.tm*) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @calc_parity(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
