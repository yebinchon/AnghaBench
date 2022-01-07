; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_vport_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_vport_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { i32, i64, %struct.hclge_dev* }
%struct.hclge_dev = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@HCLGE_MAC_MIN_FRAME = common dso_local global i32 0, align 4
@HCLGE_MAC_MAX_FRAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HCLGE_MAC_DEFAULT_FRAME = common dso_local global i32 0, align 4
@HNAE3_DOWN_CLIENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Change mtu fail, ret =%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Allocate buffer fail, ret =%d\0A\00", align 1
@HNAE3_UP_CLIENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclge_set_vport_mtu(%struct.hclge_vport* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_vport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hclge_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hclge_vport* %0, %struct.hclge_vport** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %11 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %10, i32 0, i32 2
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %11, align 8
  store %struct.hclge_dev* %12, %struct.hclge_dev** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ETH_HLEN, align 4
  %15 = add nsw i32 %13, %14
  %16 = load i32, i32* @ETH_FCS_LEN, align 4
  %17 = add nsw i32 %15, %16
  %18 = load i32, i32* @VLAN_HLEN, align 4
  %19 = mul nsw i32 2, %18
  %20 = add nsw i32 %17, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @HCLGE_MAC_MIN_FRAME, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @HCLGE_MAC_MAX_FRAME, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %138

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @HCLGE_MAC_DEFAULT_FRAME, align 4
  %34 = call i32 @max(i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %36 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %35, i32 0, i32 2
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %39 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %31
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %45 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %50 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %49, i32 0, i32 2
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %138

54:                                               ; preds = %42, %31
  %55 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %56 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %62 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %64 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %63, i32 0, i32 2
  %65 = call i32 @mutex_unlock(i32* %64)
  store i32 0, i32* %3, align 4
  br label %138

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66
  store i32 1, i32* %7, align 4
  br label %68

68:                                               ; preds = %92, %67
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %71 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %68
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %77 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %76, i32 0, i32 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %75, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %74
  %86 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %87 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %86, i32 0, i32 2
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %138

91:                                               ; preds = %74
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %68

95:                                               ; preds = %68
  %96 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %97 = load i32, i32* @HNAE3_DOWN_CLIENT, align 4
  %98 = call i32 @hclge_notify_client(%struct.hclge_dev* %96, i32 %97)
  %99 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @hclge_set_mac_mtu(%struct.hclge_dev* %99, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %95
  %105 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %106 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %105, i32 0, i32 3
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @dev_err(i32* %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %130

111:                                              ; preds = %95
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %114 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %117 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %119 = call i32 @hclge_buffer_alloc(%struct.hclge_dev* %118)
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %111
  %123 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %124 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %123, i32 0, i32 3
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @dev_err(i32* %126, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %122, %111
  br label %130

130:                                              ; preds = %129, %104
  %131 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %132 = load i32, i32* @HNAE3_UP_CLIENT, align 4
  %133 = call i32 @hclge_notify_client(%struct.hclge_dev* %131, i32 %132)
  %134 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %135 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %134, i32 0, i32 2
  %136 = call i32 @mutex_unlock(i32* %135)
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %130, %85, %59, %48, %28
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hclge_notify_client(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_set_mac_mtu(%struct.hclge_dev*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hclge_buffer_alloc(%struct.hclge_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
