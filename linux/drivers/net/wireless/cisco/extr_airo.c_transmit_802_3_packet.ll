; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_transmit_802_3_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_transmit_802_3_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { %struct.TYPE_9__, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Short packet %d\00", align 1
@ERROR = common dso_local global i32 0, align 4
@FLAG_MIC_CAPABLE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i64 0, align 8
@BAP1 = common dso_local global i32 0, align 4
@CMD_TRANSMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airo_info*, i32, i8*)* @transmit_802_3_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transmit_802_3_packet(%struct.airo_info* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.airo_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__, align 4
  %10 = alloca %struct.TYPE_10__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.airo_info* %0, %struct.airo_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 16
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = mul nsw i32 %18, 2
  %20 = icmp sle i32 %17, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %3
  %22 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %23 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %22, i32 0, i32 2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @airo_print_warn(i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @ERROR, align 4
  store i32 %29, i32* %4, align 4
  br label %122

30:                                               ; preds = %3
  %31 = load i32, i32* @ETH_ALEN, align 4
  %32 = mul nsw i32 %31, 2
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* @FLAG_MIC_CAPABLE, align 4
  %36 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %37 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %36, i32 0, i32 1
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %30
  %41 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %42 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %40
  %47 = load i8*, i8** %7, align 8
  %48 = bitcast i8* %47 to i32*
  %49 = getelementptr inbounds i32, i32* %48, i64 6
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ntohs(i32 %50)
  %52 = icmp ne i32 %51, 34958
  br i1 %52, label %53, label %64

53:                                               ; preds = %46
  %54 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @encapsulate(%struct.airo_info* %54, i32* %56, i32* %13, i32 %57)
  %59 = load i64, i64* @SUCCESS, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @ERROR, align 4
  store i32 %62, i32* %4, align 4
  br label %122

63:                                               ; preds = %53
  store i32 4, i32* %11, align 4
  br label %64

64:                                               ; preds = %63, %46, %40, %30
  %65 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @BAP1, align 4
  %68 = call i64 @bap_setup(%struct.airo_info* %65, i32 %66, i32 54, i32 %67)
  %69 = load i64, i64* @SUCCESS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* @ERROR, align 4
  store i32 %72, i32* %4, align 4
  br label %122

73:                                               ; preds = %64
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %74, %75
  %77 = call i32 @cpu_to_le16(i32 %76)
  store i32 %77, i32* %8, align 4
  %78 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %79 = load i32, i32* @BAP1, align 4
  %80 = call i32 @bap_write(%struct.airo_info* %78, i32* %8, i32 4, i32 %79)
  %81 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = load i32, i32* @BAP1, align 4
  %85 = call i32 @bap_write(%struct.airo_info* %81, i32* %83, i32 4, i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %73
  %89 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @BAP1, align 4
  %92 = call i32 @bap_write(%struct.airo_info* %89, i32* %13, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %88, %73
  %94 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 4
  %97 = bitcast i8* %96 to i32*
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @BAP1, align 4
  %100 = call i32 @bap_write(%struct.airo_info* %94, i32* %97, i32 %98, i32 %99)
  %101 = call i32 @memset(%struct.TYPE_11__* %9, i32 0, i32 8)
  %102 = load i32, i32* @CMD_TRANSMIT, align 4
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %12, align 4
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store i32 %104, i32* %105, align 4
  %106 = load %struct.airo_info*, %struct.airo_info** %5, align 8
  %107 = call i64 @issuecommand(%struct.airo_info* %106, %struct.TYPE_11__* %9, %struct.TYPE_10__* %10)
  %108 = load i64, i64* @SUCCESS, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %93
  %111 = load i32, i32* @ERROR, align 4
  store i32 %111, i32* %4, align 4
  br label %122

112:                                              ; preds = %93
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 65280
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %112
  %118 = load i32, i32* @ERROR, align 4
  store i32 %118, i32* %4, align 4
  br label %122

119:                                              ; preds = %112
  %120 = load i64, i64* @SUCCESS, align 8
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %119, %117, %110, %71, %61, %21
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @airo_print_warn(i32, i8*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @encapsulate(%struct.airo_info*, i32*, i32*, i32) #1

declare dso_local i64 @bap_setup(%struct.airo_info*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @bap_write(%struct.airo_info*, i32*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @issuecommand(%struct.airo_info*, %struct.TYPE_11__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
