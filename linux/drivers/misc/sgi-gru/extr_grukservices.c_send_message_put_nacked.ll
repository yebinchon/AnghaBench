; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grukservices.c_send_message_put_nacked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grukservices.c_send_message_put_nacked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_message_queue_desc = type { i32, i32 }

@XTYPE_CL = common dso_local global i32 0, align 4
@IMA = common dso_local global i32 0, align 4
@CBS_IDLE = common dso_local global i64 0, align 8
@MQE_UNEXPECTED_CB_ERR = common dso_local global i32 0, align 4
@MQE_OK = common dso_local global i32 0, align 4
@MQIE_AGAIN = common dso_local global i32 0, align 4
@MQE_CONGESTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.gru_message_queue_desc*, i8*, i32)* @send_message_put_nacked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_message_put_nacked(i8* %0, %struct.gru_message_queue_desc* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gru_message_queue_desc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.gru_message_queue_desc* %1, %struct.gru_message_queue_desc** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 200, i32* %12, align 4
  %13 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %7, align 8
  %14 = getelementptr inbounds %struct.gru_message_queue_desc, %struct.gru_message_queue_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @gru_get_amo_value_head(i8* %16)
  %18 = shl i32 %17, 6
  %19 = add nsw i32 %15, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %10, align 8
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %37

23:                                               ; preds = %4
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %10, align 8
  %26 = load i32, i32* @XTYPE_CL, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @IMA, align 4
  %29 = call i32 @gru_vset(i8* %24, i64 %25, i32 0, i32 %26, i32 %27, i32 1, i32 %28)
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @gru_wait(i8* %30)
  %32 = load i64, i64* @CBS_IDLE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* @MQE_UNEXPECTED_CB_ERR, align 4
  store i32 %35, i32* %5, align 4
  br label %91

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %4
  %38 = load i8*, i8** %6, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @gru_get_tri(i8* %40)
  %42 = load i32, i32* @XTYPE_CL, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @IMA, align 4
  %45 = call i32 @gru_vstore(i8* %38, i64 %39, i32 %41, i32 %42, i32 %43, i32 1, i32 %44)
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @gru_wait(i8* %46)
  %48 = load i64, i64* @CBS_IDLE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* @MQE_UNEXPECTED_CB_ERR, align 4
  store i32 %51, i32* %5, align 4
  br label %91

52:                                               ; preds = %37
  %53 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %7, align 8
  %54 = getelementptr inbounds %struct.gru_message_queue_desc, %struct.gru_message_queue_desc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @MQE_OK, align 4
  store i32 %58, i32* %5, align 4
  br label %91

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %77, %59
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.gru_message_queue_desc*, %struct.gru_message_queue_desc** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @send_noop_message(i8* %61, %struct.gru_message_queue_desc* %62, i8* %63)
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @MQIE_AGAIN, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @MQE_CONGESTION, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %69, %65
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %12, align 4
  %76 = icmp sgt i32 %74, 0
  br label %77

77:                                               ; preds = %73, %69
  %78 = phi i1 [ false, %69 ], [ %76, %73 ]
  br i1 %78, label %60, label %79

79:                                               ; preds = %77
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @MQIE_AGAIN, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @MQE_CONGESTION, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83, %79
  %88 = load i32, i32* @MQE_OK, align 4
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %87, %83
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %89, %57, %50, %34
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @gru_get_amo_value_head(i8*) #1

declare dso_local i32 @gru_vset(i8*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i64 @gru_wait(i8*) #1

declare dso_local i32 @gru_vstore(i8*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gru_get_tri(i8*) #1

declare dso_local i32 @send_noop_message(i8*, %struct.gru_message_queue_desc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
