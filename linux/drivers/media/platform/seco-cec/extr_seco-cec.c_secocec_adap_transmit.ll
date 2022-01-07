; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/seco-cec/extr_seco-cec.c_secocec_adap_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/seco-cec/extr_seco-cec.c_secocec_adap_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_adapter = type { i32 }
%struct.cec_msg = type { i32, i32* }

@SECOCEC_WRITE_DATA_LENGTH = common dso_local global i64 0, align 8
@SECOCEC_WRITE_OPERATION_ID = common dso_local global i64 0, align 8
@SECOCEC_WRITE_DATA_00 = common dso_local global i64 0, align 8
@SECOCEC_WRITE_BYTE0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cec_adapter*, i32, i32, %struct.cec_msg*)* @secocec_adap_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secocec_adap_transmit(%struct.cec_adapter* %0, i32 %1, i32 %2, %struct.cec_msg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cec_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cec_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cec_adapter* %0, %struct.cec_adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.cec_msg* %3, %struct.cec_msg** %9, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %18 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %11, align 4
  %21 = load i64, i64* @SECOCEC_WRITE_DATA_LENGTH, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @smb_wr16(i64 %21, i32 %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %101

27:                                               ; preds = %4
  %28 = load i32, i32* %11, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27
  %31 = load i64, i64* @SECOCEC_WRITE_OPERATION_ID, align 8
  %32 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %33 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @smb_wr16(i64 %31, i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %101

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41, %27
  %43 = load i32, i32* %11, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %88

45:                                               ; preds = %42
  %46 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %47 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 2
  store i32 %49, i32* %10, align 4
  %50 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %51 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32* %53, i32** %14, align 8
  store i32 0, i32* %16, align 4
  br label %54

54:                                               ; preds = %84, %45
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %87

58:                                               ; preds = %54
  %59 = load i32*, i32** %14, align 8
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = shl i32 %64, 8
  store i32 %65, i32* %13, align 4
  %66 = load i32*, i32** %14, align 8
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %13, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %13, align 4
  %73 = load i64, i64* @SECOCEC_WRITE_DATA_00, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sdiv i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %73, %76
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @smb_wr16(i64 %77, i32 %78)
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %58
  br label %101

83:                                               ; preds = %58
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 2
  store i32 %86, i32* %16, align 4
  br label %54

87:                                               ; preds = %54
  br label %88

88:                                               ; preds = %87, %42
  %89 = load %struct.cec_msg*, %struct.cec_msg** %9, align 8
  %90 = getelementptr inbounds %struct.cec_msg, %struct.cec_msg* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %12, align 4
  %94 = load i64, i64* @SECOCEC_WRITE_BYTE0, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @smb_wr16(i64 %94, i32 %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %88
  br label %101

100:                                              ; preds = %88
  store i32 0, i32* %5, align 4
  br label %103

101:                                              ; preds = %99, %82, %40, %26
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %100
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @smb_wr16(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
