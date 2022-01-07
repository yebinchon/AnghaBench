; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_mbx.c_hclgevf_get_mbx_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_mbx.c_hclgevf_get_mbx_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { %struct.TYPE_2__*, %struct.hclgevf_mbx_resp_status, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclgevf_mbx_resp_status = type { i32, i32, i32*, i32 }

@HCLGE_MBX_MAX_RESP_DATA_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"VF mbx response len(=%d) exceeds maximum(=%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HCLGEVF_STATE_CMD_DISABLE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"VF could not get mbx(%d,%d) resp(=%d) from PF in %d tries\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"VF could not match resp code(code0=%d,code1=%d), %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"VF could not match resp r_code(r_code0=%d,r_code1=%d)\0A\00", align 1
@HCLGEVF_MAX_TRY_TIMES = common dso_local global i32 0, align 4
@HCLGEVF_SLEEP_USECOND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*, i64, i64, i32*, i64)* @hclgevf_get_mbx_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_get_mbx_resp(%struct.hclgevf_dev* %0, i64 %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hclgevf_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.hclgevf_mbx_resp_status*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %15, align 4
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @HCLGE_MBX_MAX_RESP_DATA_SIZE, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %5
  %20 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %7, align 8
  %21 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* @HCLGE_MBX_MAX_RESP_DATA_SIZE, align 8
  %26 = call i32 (i32*, i8*, i64, i64, ...) @dev_err(i32* %23, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %24, i64 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %140

29:                                               ; preds = %5
  br label %30

30:                                               ; preds = %50, %29
  %31 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %7, align 8
  %32 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.hclgevf_mbx_resp_status, %struct.hclgevf_mbx_resp_status* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %37, 500
  br label %39

39:                                               ; preds = %36, %30
  %40 = phi i1 [ false, %30 ], [ %38, %36 ]
  br i1 %40, label %41, label %54

41:                                               ; preds = %39
  %42 = load i32, i32* @HCLGEVF_STATE_CMD_DISABLE, align 4
  %43 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %7, align 8
  %44 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %43, i32 0, i32 2
  %45 = call i64 @test_bit(i32 %42, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %140

50:                                               ; preds = %41
  %51 = call i32 @usleep_range(i32 1000, i32 2000)
  %52 = load i32, i32* %15, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %15, align 4
  br label %30

54:                                               ; preds = %39
  %55 = load i32, i32* %15, align 4
  %56 = icmp sge i32 %55, 500
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %7, align 8
  %59 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %7, align 8
  %65 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.hclgevf_mbx_resp_status, %struct.hclgevf_mbx_resp_status* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %15, align 4
  %69 = call i32 (i32*, i8*, i64, i64, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %62, i64 %63, i32 %67, i32 %68)
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %140

72:                                               ; preds = %54
  %73 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %7, align 8
  %74 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %73, i32 0, i32 1
  store %struct.hclgevf_mbx_resp_status* %74, %struct.hclgevf_mbx_resp_status** %12, align 8
  %75 = load %struct.hclgevf_mbx_resp_status*, %struct.hclgevf_mbx_resp_status** %12, align 8
  %76 = getelementptr inbounds %struct.hclgevf_mbx_resp_status, %struct.hclgevf_mbx_resp_status* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = ashr i32 %77, 16
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %13, align 8
  %80 = load %struct.hclgevf_mbx_resp_status*, %struct.hclgevf_mbx_resp_status** %12, align 8
  %81 = getelementptr inbounds %struct.hclgevf_mbx_resp_status, %struct.hclgevf_mbx_resp_status* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, 255
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %14, align 8
  %85 = load %struct.hclgevf_mbx_resp_status*, %struct.hclgevf_mbx_resp_status** %12, align 8
  %86 = getelementptr inbounds %struct.hclgevf_mbx_resp_status, %struct.hclgevf_mbx_resp_status* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %72
  %90 = load %struct.hclgevf_mbx_resp_status*, %struct.hclgevf_mbx_resp_status** %12, align 8
  %91 = getelementptr inbounds %struct.hclgevf_mbx_resp_status, %struct.hclgevf_mbx_resp_status* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %6, align 4
  br label %140

93:                                               ; preds = %72
  %94 = load i32*, i32** %10, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load i32*, i32** %10, align 8
  %98 = load %struct.hclgevf_mbx_resp_status*, %struct.hclgevf_mbx_resp_status** %12, align 8
  %99 = getelementptr inbounds %struct.hclgevf_mbx_resp_status, %struct.hclgevf_mbx_resp_status* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i64, i64* %11, align 8
  %103 = call i32 @memcpy(i32* %97, i32* %101, i64 %102)
  br label %104

104:                                              ; preds = %96, %93
  %105 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %7, align 8
  %106 = call i32 @hclgevf_reset_mbx_resp_status(%struct.hclgevf_dev* %105)
  %107 = load i64, i64* %13, align 8
  %108 = load i64, i64* %8, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %104
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* %9, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %110
  %115 = load %struct.hclgevf_mbx_resp_status*, %struct.hclgevf_mbx_resp_status** %12, align 8
  %116 = getelementptr inbounds %struct.hclgevf_mbx_resp_status, %struct.hclgevf_mbx_resp_status* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %139

119:                                              ; preds = %114, %110, %104
  %120 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %7, align 8
  %121 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %120, i32 0, i32 0
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* %9, align 8
  %126 = load %struct.hclgevf_mbx_resp_status*, %struct.hclgevf_mbx_resp_status** %12, align 8
  %127 = getelementptr inbounds %struct.hclgevf_mbx_resp_status, %struct.hclgevf_mbx_resp_status* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i32*, i8*, i64, i64, ...) @dev_err(i32* %123, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i64 %124, i64 %125, i32 %128)
  %130 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %7, align 8
  %131 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i64, i64* %13, align 8
  %135 = load i64, i64* %14, align 8
  %136 = call i32 (i32*, i8*, i64, i64, ...) @dev_err(i32* %133, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i64 %134, i64 %135)
  %137 = load i32, i32* @EIO, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %6, align 4
  br label %140

139:                                              ; preds = %114
  store i32 0, i32* %6, align 4
  br label %140

140:                                              ; preds = %139, %119, %89, %57, %47, %19
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i32 @dev_err(i32*, i8*, i64, i64, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @hclgevf_reset_mbx_resp_status(%struct.hclgevf_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
