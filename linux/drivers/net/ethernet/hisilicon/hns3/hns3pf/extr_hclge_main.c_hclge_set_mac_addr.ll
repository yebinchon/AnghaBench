; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Change uc mac err! invalid mac:%pM.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"remove old uc mac address fail.\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"add uc mac address fail, ret =%d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"restore uc mac address fail.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"configure mac pause address fail, ret =%d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i8*, i32)* @hclge_set_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_mac_addr(%struct.hnae3_handle* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hnae3_handle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.hclge_vport*, align 8
  %10 = alloca %struct.hclge_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %8, align 8
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %14 = call %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle* %13)
  store %struct.hclge_vport* %14, %struct.hclge_vport** %9, align 8
  %15 = load %struct.hclge_vport*, %struct.hclge_vport** %9, align 8
  %16 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %15, i32 0, i32 0
  %17 = load %struct.hclge_dev*, %struct.hclge_dev** %16, align 8
  store %struct.hclge_dev* %17, %struct.hclge_dev** %10, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i64 @is_zero_ether_addr(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %3
  %22 = load i8*, i8** %8, align 8
  %23 = call i64 @is_broadcast_ether_addr(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @is_multicast_ether_addr(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25, %21, %3
  %30 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %31 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 (i32*, i8*, ...) @dev_err(i32* %33, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %115

38:                                               ; preds = %25
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = call i64 (...) @is_kdump_kernel()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %41, %38
  %45 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %46 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %47 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @hclge_rm_uc_addr(%struct.hnae3_handle* %45, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %55 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = call i32 @dev_warn(i32* %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %53, %44, %41
  %60 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @hclge_add_uc_addr(%struct.hnae3_handle* %60, i8* %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %92

65:                                               ; preds = %59
  %66 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %67 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %11, align 4
  %71 = call i32 (i32*, i8*, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %89, label %74

74:                                               ; preds = %65
  %75 = load %struct.hnae3_handle*, %struct.hnae3_handle** %5, align 8
  %76 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %77 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @hclge_add_uc_addr(%struct.hnae3_handle* %75, i8* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %85 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %89

89:                                               ; preds = %83, %74, %65
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %115

92:                                               ; preds = %59
  %93 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @hclge_pause_addr_cfg(%struct.hclge_dev* %93, i8* %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %100 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %11, align 4
  %104 = call i32 (i32*, i8*, ...) @dev_err(i32* %102, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @EIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %4, align 4
  br label %115

107:                                              ; preds = %92
  %108 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  %109 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @ether_addr_copy(i8* %112, i8* %113)
  store i32 0, i32* %4, align 4
  br label %115

115:                                              ; preds = %107, %98, %89, %29
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.hclge_vport* @hclge_get_vport(%struct.hnae3_handle*) #1

declare dso_local i64 @is_zero_ether_addr(i8*) #1

declare dso_local i64 @is_broadcast_ether_addr(i8*) #1

declare dso_local i64 @is_multicast_ether_addr(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @is_kdump_kernel(...) #1

declare dso_local i64 @hclge_rm_uc_addr(%struct.hnae3_handle*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @hclge_add_uc_addr(%struct.hnae3_handle*, i8*) #1

declare dso_local i32 @hclge_pause_addr_cfg(%struct.hclge_dev*, i8*) #1

declare dso_local i32 @ether_addr_copy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
