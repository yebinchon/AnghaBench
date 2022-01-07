; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_ctl_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cnic_ctl_completion }
%struct.cnic_ctl_completion = type { i32, i32 }
%struct.cnic_dev = type { i32, i32, %struct.cnic_local* }
%struct.cnic_local = type { %struct.cnic_context*, i32, i32 }
%struct.cnic_context = type { i32, i32, i32 }

@CNIC_ULP_ISCSI = common dso_local global i32 0, align 4
@CNIC_LCL_FL_STOP_ISCSI = common dso_local global i32 0, align 4
@cnic_wq = common dso_local global i32 0, align 4
@CNIC_F_CNIC_UP = common dso_local global i32 0, align 4
@CTX_FL_CID_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"CID %x CFC delete comp error %x\0A\00", align 1
@CNIC_ULP_FCOE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.cnic_ctl_info*)* @cnic_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_ctl(i8* %0, %struct.cnic_ctl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cnic_ctl_info*, align 8
  %6 = alloca %struct.cnic_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cnic_local*, align 8
  %9 = alloca %struct.cnic_ctl_completion*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.cnic_local*, align 8
  %13 = alloca %struct.cnic_context*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.cnic_ctl_info* %1, %struct.cnic_ctl_info** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.cnic_dev*
  store %struct.cnic_dev* %15, %struct.cnic_dev** %6, align 8
  %16 = load i32, i32* @CNIC_ULP_ISCSI, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.cnic_ctl_info*, %struct.cnic_ctl_info** %5, align 8
  %18 = getelementptr inbounds %struct.cnic_ctl_info, %struct.cnic_ctl_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %116 [
    i32 129, label %20
    i32 130, label %29
    i32 128, label %41
    i32 133, label %53
    i32 132, label %106
    i32 131, label %108
  ]

20:                                               ; preds = %2
  %21 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %22 = call i32 @cnic_hold(%struct.cnic_dev* %21)
  %23 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %24 = call i32 @cnic_ulp_stop(%struct.cnic_dev* %23)
  %25 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %26 = call i32 @cnic_stop_hw(%struct.cnic_dev* %25)
  %27 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %28 = call i32 @cnic_put(%struct.cnic_dev* %27)
  br label %119

29:                                               ; preds = %2
  %30 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %31 = call i32 @cnic_hold(%struct.cnic_dev* %30)
  %32 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %33 = call i32 @cnic_start_hw(%struct.cnic_dev* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %37 = call i32 @cnic_ulp_start(%struct.cnic_dev* %36)
  br label %38

38:                                               ; preds = %35, %29
  %39 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %40 = call i32 @cnic_put(%struct.cnic_dev* %39)
  br label %119

41:                                               ; preds = %2
  %42 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %43 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %42, i32 0, i32 2
  %44 = load %struct.cnic_local*, %struct.cnic_local** %43, align 8
  store %struct.cnic_local* %44, %struct.cnic_local** %8, align 8
  %45 = load i32, i32* @CNIC_LCL_FL_STOP_ISCSI, align 4
  %46 = load %struct.cnic_local*, %struct.cnic_local** %8, align 8
  %47 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %46, i32 0, i32 2
  %48 = call i32 @set_bit(i32 %45, i32* %47)
  %49 = load i32, i32* @cnic_wq, align 4
  %50 = load %struct.cnic_local*, %struct.cnic_local** %8, align 8
  %51 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %50, i32 0, i32 1
  %52 = call i32 @queue_delayed_work(i32 %49, i32* %51, i32 0)
  br label %119

53:                                               ; preds = %2
  %54 = load %struct.cnic_ctl_info*, %struct.cnic_ctl_info** %5, align 8
  %55 = getelementptr inbounds %struct.cnic_ctl_info, %struct.cnic_ctl_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store %struct.cnic_ctl_completion* %56, %struct.cnic_ctl_completion** %9, align 8
  %57 = load %struct.cnic_ctl_completion*, %struct.cnic_ctl_completion** %9, align 8
  %58 = getelementptr inbounds %struct.cnic_ctl_completion, %struct.cnic_ctl_completion* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @BNX2X_SW_CID(i32 %59)
  store i64 %60, i64* %10, align 8
  %61 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %62 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %61, i32 0, i32 2
  %63 = load %struct.cnic_local*, %struct.cnic_local** %62, align 8
  store %struct.cnic_local* %63, %struct.cnic_local** %12, align 8
  %64 = load i32, i32* @CNIC_F_CNIC_UP, align 4
  %65 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %66 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %65, i32 0, i32 1
  %67 = call i32 @test_bit(i32 %64, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %53
  br label %119

70:                                               ; preds = %53
  %71 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %72 = load i64, i64* %10, align 8
  %73 = call i32 @cnic_get_l5_cid(%struct.cnic_local* %71, i64 %72, i64* %11)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %105

75:                                               ; preds = %70
  %76 = load %struct.cnic_local*, %struct.cnic_local** %12, align 8
  %77 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %76, i32 0, i32 0
  %78 = load %struct.cnic_context*, %struct.cnic_context** %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %78, i64 %79
  store %struct.cnic_context* %80, %struct.cnic_context** %13, align 8
  %81 = load %struct.cnic_ctl_completion*, %struct.cnic_ctl_completion** %9, align 8
  %82 = getelementptr inbounds %struct.cnic_ctl_completion, %struct.cnic_ctl_completion* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @unlikely(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %75
  %87 = load i32, i32* @CTX_FL_CID_ERROR, align 4
  %88 = load %struct.cnic_context*, %struct.cnic_context** %13, align 8
  %89 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %88, i32 0, i32 2
  %90 = call i32 @set_bit(i32 %87, i32* %89)
  %91 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %92 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load %struct.cnic_ctl_completion*, %struct.cnic_ctl_completion** %9, align 8
  %96 = getelementptr inbounds %struct.cnic_ctl_completion, %struct.cnic_ctl_completion* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @netdev_err(i32 %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %94, i32 %97)
  br label %99

99:                                               ; preds = %86, %75
  %100 = load %struct.cnic_context*, %struct.cnic_context** %13, align 8
  %101 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %100, i32 0, i32 0
  store i32 1, i32* %101, align 4
  %102 = load %struct.cnic_context*, %struct.cnic_context** %13, align 8
  %103 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %102, i32 0, i32 1
  %104 = call i32 @wake_up(i32* %103)
  br label %105

105:                                              ; preds = %99, %70
  br label %119

106:                                              ; preds = %2
  %107 = load i32, i32* @CNIC_ULP_FCOE, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %2, %106
  %109 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %110 = call i32 @cnic_hold(%struct.cnic_dev* %109)
  %111 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @cnic_copy_ulp_stats(%struct.cnic_dev* %111, i32 %112)
  %114 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %115 = call i32 @cnic_put(%struct.cnic_dev* %114)
  br label %119

116:                                              ; preds = %2
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %120

119:                                              ; preds = %108, %105, %69, %41, %38, %20
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %119, %116
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @cnic_hold(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_ulp_stop(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_stop_hw(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_put(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_start_hw(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_ulp_start(%struct.cnic_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i64 @BNX2X_SW_CID(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @cnic_get_l5_cid(%struct.cnic_local*, i64, i64*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i64, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @cnic_copy_ulp_stats(%struct.cnic_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
