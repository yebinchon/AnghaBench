; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mng_tlv.c_qed_mfw_get_tlv_time_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mng_tlv.c_qed_mfw_get_tlv_time_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_mfw_tlv_time = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.qed_tlv_parsed_buf = type { i32, i32 }

@QED_TLV_DATA_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%d%d%d%d%d%d\00", align 1
@QED_MFW_TLV_TIME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_mfw_tlv_time*, %struct.qed_tlv_parsed_buf*)* @qed_mfw_get_tlv_time_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_mfw_get_tlv_time_value(%struct.qed_mfw_tlv_time* %0, %struct.qed_tlv_parsed_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_mfw_tlv_time*, align 8
  %5 = alloca %struct.qed_tlv_parsed_buf*, align 8
  store %struct.qed_mfw_tlv_time* %0, %struct.qed_mfw_tlv_time** %4, align 8
  store %struct.qed_tlv_parsed_buf* %1, %struct.qed_tlv_parsed_buf** %5, align 8
  %6 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %4, align 8
  %7 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %96

11:                                               ; preds = %2
  %12 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %4, align 8
  %13 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sgt i32 %14, 12
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %4, align 8
  %18 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %16, %11
  %20 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %4, align 8
  %21 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sgt i32 %22, 31
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %4, align 8
  %26 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %4, align 8
  %29 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 23
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %4, align 8
  %34 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %33, i32 0, i32 2
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %4, align 8
  %37 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = icmp sgt i32 %38, 59
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %4, align 8
  %42 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %41, i32 0, i32 2
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %4, align 8
  %45 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 999
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %4, align 8
  %50 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %49, i32 0, i32 4
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %4, align 8
  %53 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 999
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %4, align 8
  %58 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %57, i32 0, i32 5
  store i32 0, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %5, align 8
  %61 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @QED_TLV_DATA_MAX, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 4, %64
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memset(i32 %62, i32 0, i32 %66)
  %68 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %5, align 8
  %69 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %4, align 8
  %72 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %4, align 8
  %75 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %4, align 8
  %78 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %4, align 8
  %81 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %4, align 8
  %84 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.qed_mfw_tlv_time*, %struct.qed_mfw_tlv_time** %4, align 8
  %87 = getelementptr inbounds %struct.qed_mfw_tlv_time, %struct.qed_mfw_tlv_time* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @snprintf(i32 %70, i32 14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76, i32 %79, i32 %82, i32 %85, i32 %88)
  %90 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %5, align 8
  %91 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.qed_tlv_parsed_buf*, %struct.qed_tlv_parsed_buf** %5, align 8
  %94 = getelementptr inbounds %struct.qed_tlv_parsed_buf, %struct.qed_tlv_parsed_buf* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @QED_MFW_TLV_TIME_SIZE, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %59, %10
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
