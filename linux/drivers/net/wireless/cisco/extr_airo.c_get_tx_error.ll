; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_get_tx_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_get_tx_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { i32*, %struct.TYPE_12__*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%union.iwreq_data = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@BAP0 = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@IWEVTXDROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.airo_info*, i64)* @get_tx_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_tx_error(%struct.airo_info* %0, i64 %1) #0 {
  %3 = alloca %struct.airo_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.iwreq_data, align 4
  %7 = alloca [24 x i8], align 16
  store %struct.airo_info* %0, %struct.airo_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ult i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %12 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_11__*
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  br label %39

21:                                               ; preds = %2
  %22 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %23 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %24 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 65535
  %30 = load i32, i32* @BAP0, align 4
  %31 = call i64 @bap_setup(%struct.airo_info* %22, i32 %29, i32 4, i32 %30)
  %32 = load i64, i64* @SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %121

35:                                               ; preds = %21
  %36 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %37 = load i32, i32* @BAP0, align 4
  %38 = call i32 @bap_read(%struct.airo_info* %36, i32* %5, i32 2, i32 %37)
  br label %39

39:                                               ; preds = %35, %10
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @le16_to_cpu(i32 %40)
  %42 = and i32 %41, 2
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %46 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %45, i32 0, i32 1
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %44, %39
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  %55 = and i32 %54, 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %59 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %58, i32 0, i32 1
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %57, %52
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @le16_to_cpu(i32 %66)
  %68 = and i32 %67, 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %65
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @le16_to_cpu(i32 %72)
  %74 = and i32 %73, 16
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %78 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %76, %71
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @le16_to_cpu(i32 %85)
  %87 = and i32 %86, 32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %84
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @le16_to_cpu(i32 %91)
  %93 = and i32 %92, 2
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @le16_to_cpu(i32 %96)
  %98 = and i32 %97, 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %95, %90
  %101 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %102 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %103 = bitcast i8* %102 to i32*
  %104 = load i32, i32* @BAP0, align 4
  %105 = call i32 @bap_read(%struct.airo_info* %101, i32* %103, i32 24, i32 %104)
  %106 = bitcast %union.iwreq_data* %6 to %struct.TYPE_10__*
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %110 = getelementptr inbounds i8, i8* %109, i64 18
  %111 = load i32, i32* @ETH_ALEN, align 4
  %112 = call i32 @memcpy(i32 %108, i8* %110, i32 %111)
  %113 = load i32, i32* @ARPHRD_ETHER, align 4
  %114 = bitcast %union.iwreq_data* %6 to %struct.TYPE_10__*
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %117 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = load i32, i32* @IWEVTXDROP, align 4
  %120 = call i32 @wireless_send_event(%struct.TYPE_12__* %118, i32 %119, %union.iwreq_data* %6, i32* null)
  br label %121

121:                                              ; preds = %34, %100, %95
  ret void
}

declare dso_local i64 @bap_setup(%struct.airo_info*, i32, i32, i32) #1

declare dso_local i32 @bap_read(%struct.airo_info*, i32*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @wireless_send_event(%struct.TYPE_12__*, i32, %union.iwreq_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
