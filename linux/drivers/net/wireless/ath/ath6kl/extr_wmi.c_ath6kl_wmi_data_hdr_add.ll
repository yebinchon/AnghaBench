; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_data_hdr_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_data_hdr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i64 }
%struct.wmi_data_hdr = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@WMI_DATA_HDR_MSG_TYPE_SHIFT = common dso_local global i32 0, align 4
@WMI_DATA_HDR_DATA_TYPE_SHIFT = common dso_local global i32 0, align 4
@WMI_DATA_HDR_FLAGS_MORE = common dso_local global i32 0, align 4
@WMI_DATA_HDR_MORE = common dso_local global i32 0, align 4
@WMI_DATA_HDR_FLAGS_EOSP = common dso_local global i32 0, align 4
@WMI_DATA_HDR_EOSP = common dso_local global i32 0, align 4
@WMI_DATA_HDR_META_SHIFT = common dso_local global i32 0, align 4
@WMI_DATA_HDR_IF_IDX_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_data_hdr_add(%struct.wmi* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.wmi*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.wmi_data_hdr*, align 8
  %19 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %10, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %21 = icmp eq %struct.sk_buff* %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %8
  %23 = load i32, i32* %17, align 4
  %24 = load %struct.wmi*, %struct.wmi** %10, align 8
  %25 = getelementptr inbounds %struct.wmi, %struct.wmi* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp sgt i32 %23, %29
  br label %31

31:                                               ; preds = %22, %8
  %32 = phi i1 [ true, %8 ], [ %30, %22 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %112

39:                                               ; preds = %31
  %40 = load i8*, i8** %16, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load %struct.wmi*, %struct.wmi** %10, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %45 = load i8*, i8** %16, align 8
  %46 = call i32 @ath6kl_wmi_meta_add(%struct.wmi* %43, %struct.sk_buff* %44, i32* %15, i8* %45)
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* %19, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %19, align 4
  store i32 %50, i32* %9, align 4
  br label %112

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %39
  %53 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %54 = call i32 @skb_push(%struct.sk_buff* %53, i32 12)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.wmi_data_hdr*
  store %struct.wmi_data_hdr* %58, %struct.wmi_data_hdr** %18, align 8
  %59 = load %struct.wmi_data_hdr*, %struct.wmi_data_hdr** %18, align 8
  %60 = call i32 @memset(%struct.wmi_data_hdr* %59, i32 0, i32 12)
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @WMI_DATA_HDR_MSG_TYPE_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = load %struct.wmi_data_hdr*, %struct.wmi_data_hdr** %18, align 8
  %65 = getelementptr inbounds %struct.wmi_data_hdr, %struct.wmi_data_hdr* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @WMI_DATA_HDR_DATA_TYPE_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = load %struct.wmi_data_hdr*, %struct.wmi_data_hdr** %18, align 8
  %70 = getelementptr inbounds %struct.wmi_data_hdr, %struct.wmi_data_hdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @WMI_DATA_HDR_FLAGS_MORE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %52
  %78 = load i32, i32* @WMI_DATA_HDR_MORE, align 4
  %79 = load %struct.wmi_data_hdr*, %struct.wmi_data_hdr** %18, align 8
  %80 = getelementptr inbounds %struct.wmi_data_hdr, %struct.wmi_data_hdr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %52
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @WMI_DATA_HDR_FLAGS_EOSP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load i32, i32* @WMI_DATA_HDR_EOSP, align 4
  %90 = call i32 @cpu_to_le16(i32 %89)
  %91 = load %struct.wmi_data_hdr*, %struct.wmi_data_hdr** %18, align 8
  %92 = getelementptr inbounds %struct.wmi_data_hdr, %struct.wmi_data_hdr* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %88, %83
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* @WMI_DATA_HDR_META_SHIFT, align 4
  %98 = shl i32 %96, %97
  %99 = call i32 @cpu_to_le16(i32 %98)
  %100 = load %struct.wmi_data_hdr*, %struct.wmi_data_hdr** %18, align 8
  %101 = getelementptr inbounds %struct.wmi_data_hdr, %struct.wmi_data_hdr* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* %17, align 4
  %105 = load i32, i32* @WMI_DATA_HDR_IF_IDX_MASK, align 4
  %106 = and i32 %104, %105
  %107 = call i32 @cpu_to_le16(i32 %106)
  %108 = load %struct.wmi_data_hdr*, %struct.wmi_data_hdr** %18, align 8
  %109 = getelementptr inbounds %struct.wmi_data_hdr, %struct.wmi_data_hdr* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %95, %49, %36
  %113 = load i32, i32* %9, align 4
  ret i32 %113
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ath6kl_wmi_meta_add(%struct.wmi*, %struct.sk_buff*, i32*, i8*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.wmi_data_hdr*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
