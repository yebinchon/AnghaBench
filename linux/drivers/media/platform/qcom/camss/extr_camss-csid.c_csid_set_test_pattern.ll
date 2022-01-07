; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csid.c_csid_set_test_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csid.c_csid_set_test_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csid_device = type { i32*, %struct.csid_testgen_config }
%struct.csid_testgen_config = type { i32, i32 }

@MSM_CSID_PAD_SINK = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@CSID_PAYLOAD_MODE_INCREMENTING = common dso_local global i32 0, align 4
@CSID_PAYLOAD_MODE_ALTERNATING_55_AA = common dso_local global i32 0, align 4
@CSID_PAYLOAD_MODE_ALL_ZEROES = common dso_local global i32 0, align 4
@CSID_PAYLOAD_MODE_ALL_ONES = common dso_local global i32 0, align 4
@CSID_PAYLOAD_MODE_RANDOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csid_device*, i32)* @csid_set_test_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csid_set_test_pattern(%struct.csid_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.csid_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.csid_testgen_config*, align 8
  store %struct.csid_device* %0, %struct.csid_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.csid_device*, %struct.csid_device** %4, align 8
  %8 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %7, i32 0, i32 1
  store %struct.csid_testgen_config* %8, %struct.csid_testgen_config** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.csid_device*, %struct.csid_device** %4, align 8
  %13 = getelementptr inbounds %struct.csid_device, %struct.csid_device* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @MSM_CSID_PAD_SINK, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = call i64 @media_entity_remote_pad(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %52

22:                                               ; preds = %11, %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = load %struct.csid_testgen_config*, %struct.csid_testgen_config** %6, align 8
  %29 = getelementptr inbounds %struct.csid_testgen_config, %struct.csid_testgen_config* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %51 [
    i32 1, label %31
    i32 2, label %35
    i32 3, label %39
    i32 4, label %43
    i32 5, label %47
  ]

31:                                               ; preds = %22
  %32 = load i32, i32* @CSID_PAYLOAD_MODE_INCREMENTING, align 4
  %33 = load %struct.csid_testgen_config*, %struct.csid_testgen_config** %6, align 8
  %34 = getelementptr inbounds %struct.csid_testgen_config, %struct.csid_testgen_config* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %51

35:                                               ; preds = %22
  %36 = load i32, i32* @CSID_PAYLOAD_MODE_ALTERNATING_55_AA, align 4
  %37 = load %struct.csid_testgen_config*, %struct.csid_testgen_config** %6, align 8
  %38 = getelementptr inbounds %struct.csid_testgen_config, %struct.csid_testgen_config* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %51

39:                                               ; preds = %22
  %40 = load i32, i32* @CSID_PAYLOAD_MODE_ALL_ZEROES, align 4
  %41 = load %struct.csid_testgen_config*, %struct.csid_testgen_config** %6, align 8
  %42 = getelementptr inbounds %struct.csid_testgen_config, %struct.csid_testgen_config* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %51

43:                                               ; preds = %22
  %44 = load i32, i32* @CSID_PAYLOAD_MODE_ALL_ONES, align 4
  %45 = load %struct.csid_testgen_config*, %struct.csid_testgen_config** %6, align 8
  %46 = getelementptr inbounds %struct.csid_testgen_config, %struct.csid_testgen_config* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %51

47:                                               ; preds = %22
  %48 = load i32, i32* @CSID_PAYLOAD_MODE_RANDOM, align 4
  %49 = load %struct.csid_testgen_config*, %struct.csid_testgen_config** %6, align 8
  %50 = getelementptr inbounds %struct.csid_testgen_config, %struct.csid_testgen_config* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %22, %47, %43, %39, %35, %31
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %19
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @media_entity_remote_pad(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
