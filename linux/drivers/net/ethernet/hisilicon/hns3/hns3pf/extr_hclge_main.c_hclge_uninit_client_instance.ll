; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_uninit_client_instance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_uninit_client_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_client = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32)* }
%struct.TYPE_9__ = type { i32* }
%struct.hnae3_ae_dev = type { %struct.hclge_dev* }
%struct.hclge_dev = type { i32, i32*, i32, %struct.TYPE_7__*, %struct.hclge_vport* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_10__*, i32)* }
%struct.TYPE_10__ = type { i32* }
%struct.hclge_vport = type { %struct.TYPE_9__, %struct.TYPE_10__ }

@HCLGE_STATE_ROCE_REGISTERED = common dso_local global i32 0, align 4
@HCLGE_STATE_RST_HANDLING = common dso_local global i32 0, align 4
@HCLGE_WAIT_RESET_DONE = common dso_local global i32 0, align 4
@HNAE3_CLIENT_ROCE = common dso_local global i64 0, align 8
@HCLGE_STATE_NIC_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_client*, %struct.hnae3_ae_dev*)* @hclge_uninit_client_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_uninit_client_instance(%struct.hnae3_client* %0, %struct.hnae3_ae_dev* %1) #0 {
  %3 = alloca %struct.hnae3_client*, align 8
  %4 = alloca %struct.hnae3_ae_dev*, align 8
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca %struct.hclge_vport*, align 8
  %7 = alloca i32, align 4
  store %struct.hnae3_client* %0, %struct.hnae3_client** %3, align 8
  store %struct.hnae3_ae_dev* %1, %struct.hnae3_ae_dev** %4, align 8
  %8 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %4, align 8
  %9 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %8, i32 0, i32 0
  %10 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  store %struct.hclge_dev* %10, %struct.hclge_dev** %5, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %107, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %14 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %110

18:                                               ; preds = %11
  %19 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %20 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %19, i32 0, i32 4
  %21 = load %struct.hclge_vport*, %struct.hclge_vport** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %21, i64 %23
  store %struct.hclge_vport* %24, %struct.hclge_vport** %6, align 8
  %25 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %26 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %25, i32 0, i32 3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %59

29:                                               ; preds = %18
  %30 = load i32, i32* @HCLGE_STATE_ROCE_REGISTERED, align 4
  %31 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %32 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %31, i32 0, i32 2
  %33 = call i32 @clear_bit(i32 %30, i32* %32)
  br label %34

34:                                               ; preds = %40, %29
  %35 = load i32, i32* @HCLGE_STATE_RST_HANDLING, align 4
  %36 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %37 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %36, i32 0, i32 2
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @HCLGE_WAIT_RESET_DONE, align 4
  %42 = call i32 @msleep(i32 %41)
  br label %34

43:                                               ; preds = %34
  %44 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %45 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %44, i32 0, i32 3
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_10__*, i32)*, i32 (%struct.TYPE_10__*, i32)** %49, align 8
  %51 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %52 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %51, i32 0, i32 1
  %53 = call i32 %50(%struct.TYPE_10__* %52, i32 0)
  %54 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %55 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %54, i32 0, i32 3
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %55, align 8
  %56 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %57 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %43, %18
  %60 = load %struct.hnae3_client*, %struct.hnae3_client** %3, align 8
  %61 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HNAE3_CLIENT_ROCE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %110

66:                                               ; preds = %59
  %67 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %68 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %106

71:                                               ; preds = %66
  %72 = load %struct.hnae3_client*, %struct.hnae3_client** %3, align 8
  %73 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %75, align 8
  %77 = icmp ne i32 (%struct.TYPE_9__*, i32)* %76, null
  br i1 %77, label %78, label %106

78:                                               ; preds = %71
  %79 = load i32, i32* @HCLGE_STATE_NIC_REGISTERED, align 4
  %80 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %81 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %80, i32 0, i32 2
  %82 = call i32 @clear_bit(i32 %79, i32* %81)
  br label %83

83:                                               ; preds = %89, %78
  %84 = load i32, i32* @HCLGE_STATE_RST_HANDLING, align 4
  %85 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %86 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %85, i32 0, i32 2
  %87 = call i64 @test_bit(i32 %84, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %83
  %90 = load i32, i32* @HCLGE_WAIT_RESET_DONE, align 4
  %91 = call i32 @msleep(i32 %90)
  br label %83

92:                                               ; preds = %83
  %93 = load %struct.hnae3_client*, %struct.hnae3_client** %3, align 8
  %94 = getelementptr inbounds %struct.hnae3_client, %struct.hnae3_client* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32 (%struct.TYPE_9__*, i32)*, i32 (%struct.TYPE_9__*, i32)** %96, align 8
  %98 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %99 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %98, i32 0, i32 0
  %100 = call i32 %97(%struct.TYPE_9__* %99, i32 0)
  %101 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %102 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %101, i32 0, i32 1
  store i32* null, i32** %102, align 8
  %103 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  %104 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  store i32* null, i32** %105, align 8
  br label %106

106:                                              ; preds = %92, %71, %66
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %11

110:                                              ; preds = %65, %11
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
