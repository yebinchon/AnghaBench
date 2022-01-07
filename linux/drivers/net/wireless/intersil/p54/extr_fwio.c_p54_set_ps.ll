; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_fwio.c_p54_set_ps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_fwio.c_p54_set_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.p54_psm = type { i32, i32, i32*, i64, %struct.TYPE_6__*, i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8* }

@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@P54_PSM = common dso_local global i32 0, align 4
@P54_PSM_BEACON_TIMEOUT = common dso_local global i32 0, align 4
@P54_PSM_DTIM = common dso_local global i32 0, align 4
@P54_PSM_CHECKSUM = common dso_local global i32 0, align 4
@P54_PSM_MCBC = common dso_local global i32 0, align 4
@P54_PSM_CAM = common dso_local global i32 0, align 4
@P54_HDR_FLAG_CONTROL_OPSET = common dso_local global i32 0, align 4
@P54_CONTROL_TYPE_PSM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WLAN_EID_TIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p54_set_ps(%struct.p54_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.p54_common*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.p54_psm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.p54_common* %0, %struct.p54_common** %3, align 8
  %8 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %9 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %19 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @P54_PSM, align 4
  %24 = load i32, i32* @P54_PSM_BEACON_TIMEOUT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @P54_PSM_DTIM, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @P54_PSM_CHECKSUM, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @P54_PSM_MCBC, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %7, align 4
  br label %34

32:                                               ; preds = %17, %1
  %33 = load i32, i32* @P54_PSM_CAM, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %22
  %35 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %36 = load i32, i32* @P54_HDR_FLAG_CONTROL_OPSET, align 4
  %37 = load i32, i32* @P54_CONTROL_TYPE_PSM, align 4
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call %struct.sk_buff* @p54_alloc_skb(%struct.p54_common* %35, i32 %36, i32 48, i32 %37, i32 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %4, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %112

45:                                               ; preds = %34
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call %struct.p54_psm* @skb_put(%struct.sk_buff* %46, i32 48)
  store %struct.p54_psm* %47, %struct.p54_psm** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i8* @cpu_to_le16(i32 %48)
  %50 = load %struct.p54_psm*, %struct.p54_psm** %5, align 8
  %51 = getelementptr inbounds %struct.p54_psm, %struct.p54_psm* %50, i32 0, i32 6
  store i8* %49, i8** %51, align 8
  %52 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %53 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @cpu_to_le16(i32 %54)
  %56 = load %struct.p54_psm*, %struct.p54_psm** %5, align 8
  %57 = getelementptr inbounds %struct.p54_psm, %struct.p54_psm* %56, i32 0, i32 5
  store i8* %55, i8** %57, align 8
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %88, %45
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.p54_psm*, %struct.p54_psm** %5, align 8
  %61 = getelementptr inbounds %struct.p54_psm, %struct.p54_psm* %60, i32 0, i32 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %62)
  %64 = icmp ult i32 %59, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %58
  %66 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %67 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i8* @cpu_to_le16(i32 %71)
  %73 = load %struct.p54_psm*, %struct.p54_psm** %5, align 8
  %74 = getelementptr inbounds %struct.p54_psm, %struct.p54_psm* %73, i32 0, i32 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i8* %72, i8** %79, align 8
  %80 = call i8* @cpu_to_le16(i32 1)
  %81 = load %struct.p54_psm*, %struct.p54_psm** %5, align 8
  %82 = getelementptr inbounds %struct.p54_psm, %struct.p54_psm* %81, i32 0, i32 4
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  store i8* %80, i8** %87, align 8
  br label %88

88:                                               ; preds = %65
  %89 = load i32, i32* %6, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %58

91:                                               ; preds = %58
  %92 = load %struct.p54_psm*, %struct.p54_psm** %5, align 8
  %93 = getelementptr inbounds %struct.p54_psm, %struct.p54_psm* %92, i32 0, i32 0
  store i32 200, i32* %93, align 8
  %94 = load %struct.p54_psm*, %struct.p54_psm** %5, align 8
  %95 = getelementptr inbounds %struct.p54_psm, %struct.p54_psm* %94, i32 0, i32 3
  store i64 0, i64* %95, align 8
  %96 = load %struct.p54_psm*, %struct.p54_psm** %5, align 8
  %97 = getelementptr inbounds %struct.p54_psm, %struct.p54_psm* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  %98 = load i32, i32* @WLAN_EID_TIM, align 4
  %99 = load %struct.p54_psm*, %struct.p54_psm** %5, align 8
  %100 = getelementptr inbounds %struct.p54_psm, %struct.p54_psm* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  store i32 %98, i32* %102, align 4
  %103 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = call i32 @p54_tx(%struct.p54_common* %103, %struct.sk_buff* %104)
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @P54_PSM_CAM, align 4
  %108 = icmp ne i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %111 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 4
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %91, %42
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.sk_buff* @p54_alloc_skb(%struct.p54_common*, i32, i32, i32, i32) #1

declare dso_local %struct.p54_psm* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @p54_tx(%struct.p54_common*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
