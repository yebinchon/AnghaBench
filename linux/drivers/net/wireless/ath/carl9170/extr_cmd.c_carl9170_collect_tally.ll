; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_cmd.c_carl9170_collect_tally.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_cmd.c_carl9170_collect_tally.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.survey_info* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.survey_info = type { i32, i32, i32 }
%struct.carl9170_tally_rsp = type { i32, i32, i32, i32, i32, i32 }

@CARL9170_CMD_TALLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carl9170_collect_tally(%struct.ar9170* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca %struct.carl9170_tally_rsp, align 4
  %5 = alloca %struct.survey_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  %8 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %9 = load i32, i32* @CARL9170_CMD_TALLY, align 4
  %10 = bitcast %struct.carl9170_tally_rsp* %4 to i32*
  %11 = call i32 @carl9170_exec_cmd(%struct.ar9170* %8, i32 %9, i32 0, i32* null, i32 24, i32* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %2, align 4
  br label %115

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.carl9170_tally_rsp, %struct.carl9170_tally_rsp* %4, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %114

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.carl9170_tally_rsp, %struct.carl9170_tally_rsp* %4, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  %26 = load i32, i32* %6, align 4
  %27 = udiv i32 %25, %26
  %28 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %29 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add i32 %31, %27
  store i32 %32, i32* %30, align 8
  %33 = getelementptr inbounds %struct.carl9170_tally_rsp, %struct.carl9170_tally_rsp* %4, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = udiv i32 %35, %36
  %38 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %39 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add i32 %41, %37
  store i32 %42, i32* %40, align 4
  %43 = getelementptr inbounds %struct.carl9170_tally_rsp, %struct.carl9170_tally_rsp* %4, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = udiv i32 %45, %46
  %48 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %49 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = add i32 %51, %47
  store i32 %52, i32* %50, align 8
  %53 = getelementptr inbounds %struct.carl9170_tally_rsp, %struct.carl9170_tally_rsp* %4, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %57 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = add i32 %59, %55
  store i32 %60, i32* %58, align 4
  %61 = getelementptr inbounds %struct.carl9170_tally_rsp, %struct.carl9170_tally_rsp* %4, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le32_to_cpu(i32 %62)
  %64 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %65 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = add i32 %67, %63
  store i32 %68, i32* %66, align 8
  %69 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %70 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = icmp ne %struct.TYPE_3__* %71, null
  br i1 %72, label %73, label %113

73:                                               ; preds = %22
  %74 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %75 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %74, i32 0, i32 2
  %76 = load %struct.survey_info*, %struct.survey_info** %75, align 8
  %77 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %78 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %76, i64 %81
  store %struct.survey_info* %82, %struct.survey_info** %5, align 8
  %83 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %84 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.survey_info*, %struct.survey_info** %5, align 8
  %88 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %90 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.survey_info*, %struct.survey_info** %5, align 8
  %94 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %96 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.survey_info*, %struct.survey_info** %5, align 8
  %100 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load %struct.survey_info*, %struct.survey_info** %5, align 8
  %102 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @do_div(i32 %103, i32 1000)
  %105 = load %struct.survey_info*, %struct.survey_info** %5, align 8
  %106 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @do_div(i32 %107, i32 1000)
  %109 = load %struct.survey_info*, %struct.survey_info** %5, align 8
  %110 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @do_div(i32 %111, i32 1000)
  br label %113

113:                                              ; preds = %73, %22
  br label %114

114:                                              ; preds = %113, %16
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %14
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @carl9170_exec_cmd(%struct.ar9170*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
