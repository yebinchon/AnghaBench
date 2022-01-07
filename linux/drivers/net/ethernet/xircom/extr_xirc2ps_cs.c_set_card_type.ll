; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_set_card_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_set_card_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.local_info = type { i32, i32, i32, i64 }

@CISTPL_MANFID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid CIS -- sorry\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"cisrev=%02x mediaid=%02x prodid=%02x\0A\00", align 1
@XIR_UNKNOWN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Oops: Not a creditcard\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Not an Ethernet card\0A\00", align 1
@XIR_CEM = common dso_local global i64 0, align 8
@XIR_CEM2 = common dso_local global i64 0, align 8
@XIR_CEM3 = common dso_local global i64 0, align 8
@XIR_CEM33 = common dso_local global i64 0, align 8
@XIR_CEM56M = common dso_local global i64 0, align 8
@XIR_CEM56 = common dso_local global i64 0, align 8
@XIR_CE2 = common dso_local global i64 0, align 8
@XIR_CE = common dso_local global i64 0, align 8
@XIR_CE3 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Sorry, this is an old CE card\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"unknown card (mediaid=%02x prodid=%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @set_card_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_card_type(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.local_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %12 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %11, i32 0, i32 1
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.local_info* @netdev_priv(%struct.net_device* %14)
  store %struct.local_info* %15, %struct.local_info** %5, align 8
  %16 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %17 = load i32, i32* @CISTPL_MANFID, align 4
  %18 = call i64 @pcmcia_get_tuple(%struct.pcmcia_device* %16, i32 %17, i32** %6)
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ult i64 %19, 5
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %23 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %152

25:                                               ; preds = %1
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %36 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38, i32 %39)
  %41 = load %struct.local_info*, %struct.local_info** %5, align 8
  %42 = getelementptr inbounds %struct.local_info, %struct.local_info* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.local_info*, %struct.local_info** %5, align 8
  %44 = getelementptr inbounds %struct.local_info, %struct.local_info* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load %struct.local_info*, %struct.local_info** %5, align 8
  %46 = getelementptr inbounds %struct.local_info, %struct.local_info* %45, i32 0, i32 2
  store i32 0, i32* %46, align 8
  %47 = load i64, i64* @XIR_UNKNOWN, align 8
  %48 = load %struct.local_info*, %struct.local_info** %5, align 8
  %49 = getelementptr inbounds %struct.local_info, %struct.local_info* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 64
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %25
  %54 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %152

55:                                               ; preds = %25
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %152

61:                                               ; preds = %55
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, 16
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %101

65:                                               ; preds = %61
  %66 = load %struct.local_info*, %struct.local_info** %5, align 8
  %67 = getelementptr inbounds %struct.local_info, %struct.local_info* %66, i32 0, i32 2
  store i32 1, i32* %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, 15
  switch i32 %69, label %100 [
    i32 1, label %70
    i32 2, label %74
    i32 3, label %78
    i32 4, label %82
    i32 5, label %86
    i32 6, label %92
    i32 7, label %92
  ]

70:                                               ; preds = %65
  %71 = load i64, i64* @XIR_CEM, align 8
  %72 = load %struct.local_info*, %struct.local_info** %5, align 8
  %73 = getelementptr inbounds %struct.local_info, %struct.local_info* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  br label %100

74:                                               ; preds = %65
  %75 = load i64, i64* @XIR_CEM2, align 8
  %76 = load %struct.local_info*, %struct.local_info** %5, align 8
  %77 = getelementptr inbounds %struct.local_info, %struct.local_info* %76, i32 0, i32 3
  store i64 %75, i64* %77, align 8
  br label %100

78:                                               ; preds = %65
  %79 = load i64, i64* @XIR_CEM3, align 8
  %80 = load %struct.local_info*, %struct.local_info** %5, align 8
  %81 = getelementptr inbounds %struct.local_info, %struct.local_info* %80, i32 0, i32 3
  store i64 %79, i64* %81, align 8
  br label %100

82:                                               ; preds = %65
  %83 = load i64, i64* @XIR_CEM33, align 8
  %84 = load %struct.local_info*, %struct.local_info** %5, align 8
  %85 = getelementptr inbounds %struct.local_info, %struct.local_info* %84, i32 0, i32 3
  store i64 %83, i64* %85, align 8
  br label %100

86:                                               ; preds = %65
  %87 = load i64, i64* @XIR_CEM56M, align 8
  %88 = load %struct.local_info*, %struct.local_info** %5, align 8
  %89 = getelementptr inbounds %struct.local_info, %struct.local_info* %88, i32 0, i32 3
  store i64 %87, i64* %89, align 8
  %90 = load %struct.local_info*, %struct.local_info** %5, align 8
  %91 = getelementptr inbounds %struct.local_info, %struct.local_info* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  br label %100

92:                                               ; preds = %65, %65
  %93 = load i64, i64* @XIR_CEM56, align 8
  %94 = load %struct.local_info*, %struct.local_info** %5, align 8
  %95 = getelementptr inbounds %struct.local_info, %struct.local_info* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  %96 = load %struct.local_info*, %struct.local_info** %5, align 8
  %97 = getelementptr inbounds %struct.local_info, %struct.local_info* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  %98 = load %struct.local_info*, %struct.local_info** %5, align 8
  %99 = getelementptr inbounds %struct.local_info, %struct.local_info* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  br label %100

100:                                              ; preds = %65, %92, %86, %82, %78, %74, %70
  br label %127

101:                                              ; preds = %61
  %102 = load i32, i32* %9, align 4
  %103 = and i32 %102, 15
  switch i32 %103, label %126 [
    i32 1, label %104
    i32 2, label %116
    i32 3, label %120
  ]

104:                                              ; preds = %101
  %105 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %106 = call i32 @has_ce2_string(%struct.pcmcia_device* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = load i64, i64* @XIR_CE2, align 8
  br label %112

110:                                              ; preds = %104
  %111 = load i64, i64* @XIR_CE, align 8
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi i64 [ %109, %108 ], [ %111, %110 ]
  %114 = load %struct.local_info*, %struct.local_info** %5, align 8
  %115 = getelementptr inbounds %struct.local_info, %struct.local_info* %114, i32 0, i32 3
  store i64 %113, i64* %115, align 8
  br label %126

116:                                              ; preds = %101
  %117 = load i64, i64* @XIR_CE2, align 8
  %118 = load %struct.local_info*, %struct.local_info** %5, align 8
  %119 = getelementptr inbounds %struct.local_info, %struct.local_info* %118, i32 0, i32 3
  store i64 %117, i64* %119, align 8
  br label %126

120:                                              ; preds = %101
  %121 = load i64, i64* @XIR_CE3, align 8
  %122 = load %struct.local_info*, %struct.local_info** %5, align 8
  %123 = getelementptr inbounds %struct.local_info, %struct.local_info* %122, i32 0, i32 3
  store i64 %121, i64* %123, align 8
  %124 = load %struct.local_info*, %struct.local_info** %5, align 8
  %125 = getelementptr inbounds %struct.local_info, %struct.local_info* %124, i32 0, i32 0
  store i32 1, i32* %125, align 8
  br label %126

126:                                              ; preds = %101, %120, %116, %112
  br label %127

127:                                              ; preds = %126, %100
  %128 = load %struct.local_info*, %struct.local_info** %5, align 8
  %129 = getelementptr inbounds %struct.local_info, %struct.local_info* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @XIR_CE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %139, label %133

133:                                              ; preds = %127
  %134 = load %struct.local_info*, %struct.local_info** %5, align 8
  %135 = getelementptr inbounds %struct.local_info, %struct.local_info* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @XIR_CEM, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %133, %127
  %140 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %152

141:                                              ; preds = %133
  %142 = load %struct.local_info*, %struct.local_info** %5, align 8
  %143 = getelementptr inbounds %struct.local_info, %struct.local_info* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @XIR_UNKNOWN, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %9, align 4
  %150 = call i32 (i8*, ...) @pr_notice(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %141
  store i32 1, i32* %2, align 4
  br label %152

152:                                              ; preds = %151, %139, %59, %53, %21
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local %struct.local_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @pcmcia_get_tuple(%struct.pcmcia_device*, i32, i32**) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @pr_notice(i8*, ...) #1

declare dso_local i32 @has_ce2_string(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
